@extends('layouts.app')

@section('content')

<h2>Dashboard</h2>

<div class="row">

    <div class="col-md-4">
        <div class="card p-3 bg-primary text-white">
            <h4>Total Appointments</h4>
            <h2>{{ $totalAppointments }}</h2>
        </div>
    </div>

    <div class="col-md-4">
        <div class="card p-3 bg-success text-white">
            <h4>Doctors</h4>
            <h2>{{ $totalDoctors }}</h2>
        </div>
    </div>

    <div class="col-md-4">
        <div class="card p-3 bg-warning text-white">
            <h4>Patients</h4>
            <h2>{{ $totalPatients }}</h2>
        </div>
    </div>

</div>

<div class="container mt-4">

    <a
        href="{{ route('appointments.create') }}"
        class="btn btn-success mb-3">

        Create Appointment

    </a>

    <table class="table table-bordered">

        <thead>

        <tr>

            <th>Appointment ID</th>

            <th>Patient</th>

            <th>Doctor</th>

            <th>Date</th>

            <th>Duration</th>

            <th>Status</th>

            <th>Action</th>

        </tr>

        </thead>

        <tbody>

        @foreach($appointments as $appointment)

            <tr>

                <td>
                    {{ $appointment->id }}
                </td>

                <td>
                    {{ $appointment->patient->name }}
                </td>

                <td>
                    {{ $appointment->doctor->name }}
                </td>

                <td>
                    {{ $appointment->appointment_datetime }}
                </td>

                <td>
                    {{ $appointment->duration }}
                </td>

                <td>
                    {{ $appointment->status }}
                </td>

                <td>

                    <a
                        href="{{ route('appointments.edit',$appointment->id) }}"
                        class="btn btn-warning btn-sm">

                        Edit

                    </a>

                    <form
                        action="{{ route('appointments.destroy',$appointment->id) }}"
                        method="POST"
                        style="display:inline;">

                        @csrf
                        @method('DELETE')

                        <button
                            class="btn btn-danger btn-sm">

                            Cancel

                        </button>

                    </form>

                </td>

            </tr>

        @endforeach

        </tbody>

    </table>

    {{ $appointments->links() }}

</div>

@endsection
