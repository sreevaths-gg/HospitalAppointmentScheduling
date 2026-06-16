@extends('layouts.app')

@section('content')

<div class="container mt-4">

    <div class="card">

        <div class="card-header">
            <h3>Edit Appointment</h3>
        </div>

        <div class="card-body">

            <form
                action="{{ route('appointments.update',$appointment->id) }}"
                method="POST">

                @csrf
                @method('PUT')

                <div class="mb-3">
                    <label>Doctor</label>

                    <select
                        name="doctor_id"
                        class="form-control">

                        @foreach($doctors as $doctor)

                            <option
                                value="{{ $doctor->id }}"
                                {{ $appointment->doctor_id==$doctor->id ? 'selected' : '' }}>

                                {{ $doctor->name }}

                            </option>

                        @endforeach

                    </select>
                </div>

                <div class="mb-3">
                    <label>Patient</label>

                    <select
                        name="patient_id"
                        class="form-control">

                        @foreach($patients as $patient)

                            <option
                                value="{{ $patient->id }}"
                                {{ $appointment->patient_id==$patient->id ? 'selected' : '' }}>

                                {{ $patient->name }}

                            </option>

                        @endforeach

                    </select>
                </div>

                <div class="mb-3">
                    <label>Date & Time</label>

                    <input
                        type="datetime-local"
                        name="appointment_datetime"
                        value="{{ date('Y-m-d\TH:i', strtotime($appointment->appointment_datetime)) }}"
                        class="form-control">
                </div>

                <div class="mb-3">
                    <label>Duration</label>

                    <input
                        type="number"
                        name="duration"
                        value="{{ $appointment->duration }}"
                        class="form-control">
                </div>

                <div class="mb-3">

                    <label>Status</label>

                    <select
                        name="status"
                        class="form-control">

                        <option value="scheduled"
                            {{ $appointment->status=='scheduled' ? 'selected' : '' }}>
                            Scheduled
                        </option>

                        <option value="completed"
                            {{ $appointment->status=='completed' ? 'selected' : '' }}>
                            Completed
                        </option>

                        <option value="cancelled"
                            {{ $appointment->status=='cancelled' ? 'selected' : '' }}>
                            Cancelled
                        </option>

                    </select>

                </div>

                <button
                    class="btn btn-primary">
                    Update
                </button>

            </form>

        </div>

    </div>

</div>

@endsection
