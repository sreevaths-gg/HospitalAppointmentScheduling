<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Carbon\Carbon;

use App\Models\Appointment;
use App\Models\Department;
use App\Models\Doctor;
use App\Models\Patient;


class AppointmentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $appointments = Appointment::with([ 'doctor.department', 'patient' ])
        ->orderBy('id', 'desc')  ->paginate(10);
       $totalAppointments = Appointment::count();
        $totalDoctors = Doctor::count();
        $totalPatients = Patient::count();

    return view(   'appointments.index',   compact('appointments','totalAppointments','totalDoctors','totalPatients')    );
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $departments = Department::all();
        $doctors = Doctor::all();
        $patients = Patient::all();

 return view('appointments.create',   compact(  'departments','doctors', 'patients'    ) );
    }

    /**
     * Store a newly created resource in storage.
     */
   public function store(Request $request)
{
    $request->validate([
        'doctor_id' => 'required|exists:doctors,id',
        'patient_id' => 'required|exists:patients,id',
        'appointment_datetime' => 'required|date|after:now',
        'duration' => 'required|integer|min:1',
        'status' => 'required|in:scheduled,completed,cancelled'
    ]);

    $start = Carbon::parse($request->appointment_datetime );

    $end = $start->copy()->addMinutes(    $request->duration    );

    /*    | Doctor Slots
    */

    $doctorAppointments = Appointment::where(  'doctor_id', $request->doctor_id )
        ->where('status', '!=', 'cancelled')  ->get();

    foreach ($doctorAppointments as $appointment) {

        $existingStart = Carbon::parse($appointment->appointment_datetime   );

        $existingEnd = $existingStart->copy() ->addMinutes(  $appointment->duration   );

        if (  $start < $existingEnd &&   $end > $existingStart) {

            return back() ->withErrors([
       'doctor_id' => 'Doctor already has an appointment during this time.'
                ])        ->withInput();
        }
    }

    /*    | Patient Conflict Check
    */

    $patientAppointments = Appointment::where( 'patient_id',  $request->patient_id  )
        ->where('status', '!=', 'cancelled')
        ->get();

    foreach ($patientAppointments as $appointment) {

        $existingStart = Carbon::parse(     $appointment->appointment_datetime    );

        $existingEnd = $existingStart->copy() ->addMinutes(   $appointment->duration  );

        if ( $start < $existingEnd &&  $end > $existingStart   ) {
     return back() ->withErrors([
         'patient_id' => 'Patient already has an appointment during this time.'
                ])   ->withInput();
        }
    }

    Appointment::create([

        'doctor_id' => $request->doctor_id,
        'patient_id' => $request->patient_id,
        'appointment_datetime' => $request->appointment_datetime,
        'duration' => $request->duration,
        'status' => $request->status,
    ]);

    return redirect()
        ->route('appointments.index')
        ->with(
            'success',
            'Appointment created successfully.'
        );
}

    /**
     * Display the specified resource.
     */
    public function show(Appointment $appointment)
    {
         return view(  'appointments.show',  compact('appointment')   );
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Appointment $appointment)
    {
        $departments = Department::all();
        $doctors = Doctor::all();
        $patients = Patient::all();

return view( 'appointments.edit',  compact( 'appointment',  'departments', 'doctors', 'patients' ) );
    }

    /**
     * Update the specified resource in storage.
     */
   public function update(Request $request, Appointment $appointment)
{
    $request->validate([
        'doctor_id' => 'required|exists:doctors,id',
        'patient_id' => 'required|exists:patients,id',
        'appointment_datetime' => 'required|date|after:now',
        'duration' => 'required|integer|min:1',
        'status' => 'required|in:scheduled,completed,cancelled'
    ]);

    $start = Carbon::parse(        $request->appointment_datetime   );

    $end = $start->copy()        ->addMinutes(  $request->duration    );

    /*
    |--------------------------------------------------------------------------
    | Doctor Conflict
    |--------------------------------------------------------------------------
    */

    $doctorAppointments = Appointment::where(  'doctor_id', $request->doctor_id    )
        ->where('id', '!=', $appointment->id)
        ->where('status', '!=', 'cancelled')
        ->get();

    foreach ($doctorAppointments as $existing) {

        $existingStart = Carbon::parse(     $existing->appointment_datetime    );

        $existingEnd = $existingStart->copy() ->addMinutes( $existing->duration  );

        if ( $start < $existingEnd &&  $end > $existingStart        ) {

     return back() ->withErrors([
  'doctor_id' =>   'Doctor already booked during this time.'    ])    ->withInput();
        }
    }

    /*
    |--------------------------------------------------------------------------
    | Patient Conflict
    |--------------------------------------------------------------------------
    */

    $patientAppointments = Appointment::where(  'patient_id', $request->patient_id  )
        ->where('id', '!=', $appointment->id)
        ->where('status', '!=', 'cancelled')
        ->get();

    foreach ($patientAppointments as $existing) {

        $existingStart = Carbon::parse(   $existing->appointment_datetime   );

        $existingEnd = $existingStart->copy() ->addMinutes($existing->duration  );

        if (   $start < $existingEnd &&   $end > $existingStart  ) {

            return back()   ->withErrors([
    'patient_id' =>  'Patient already has another appointment.'   ])  ->withInput();
        }
    }

    $appointment->update([
        'doctor_id' => $request->doctor_id,
        'patient_id' => $request->patient_id,
        'appointment_datetime' => $request->appointment_datetime,
        'duration' => $request->duration,
        'status' => $request->status,
    ]);

    return redirect()  ->route('appointments.index') ->with(
            'success',            'Appointment updated successfully.'     );
}

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Appointment $appointment)
    {
    $appointment->update([   'status' => 'cancelled'   ]);

    return redirect() ->route('appointments.index') ->with(
                'success',     'Appointment cancelled successfully'
            );
    }

    public function availableSlots($doctorId, Request $request)
{
    // Validate date
    if (!$request->date) {
        return response()->json([
            'success' => false,
            'message' => 'Date is required'
        ], 422);
    }

    // Check doctor exists
    $doctor = Doctor::find($doctorId);

    if (!$doctor) {
        return response()->json([
            'success' => false,
            'message' => 'Doctor not found'
        ], 404);
    }

    $date = $request->date;

    // Generate all slots from 9 AM to 5 PM
    $allSlots = [];

    $current = Carbon::parse($date . ' 09:00:00');
    $endDay  = Carbon::parse($date . ' 17:00:00');

    while ($current < $endDay) {
        $allSlots[] = $current->format('H:i');
        $current->addMinutes(30);
    }

    // Get doctor's appointments for that date
    $appointments = Appointment::where('doctor_id', $doctorId)
        ->whereDate('appointment_datetime', $date)
        ->where('status', '!=', 'cancelled')
        ->get();

    $bookedSlots = [];

    // Check each slot against each appointment
    foreach ($allSlots as $slot) {

        $slotStart = Carbon::parse($date . ' ' . $slot);
        $slotEnd = $slotStart->copy()->addMinutes(30);

        foreach ($appointments as $appointment) {

            $apptStart = Carbon::parse(  $appointment->appointment_datetime   );

            $apptEnd = $apptStart->copy()  ->addMinutes($appointment->duration);

            // overlap check
            if (  $slotStart < $apptEnd &&  $slotEnd > $apptStart  ) {
                $bookedSlots[] = $slot;
                break;
            }
        }
    }

    $availableSlots = array_values(    array_diff($allSlots, $bookedSlots) );

    return response()->json([
        'success' => true,
        'doctor_id' => $doctor->id,
        'doctor_name' => $doctor->name,
        'date' => $date,
        'available_slots' => $availableSlots,
         'booked_slots' =>  $bookedSlots
    ], 200);
}
}
