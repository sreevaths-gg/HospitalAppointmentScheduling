@extends('layouts.app')

@section('content')

<div class="container mt-4">

    <div class="card">
        <div class="card-header">
            <h3>Create Appointment</h3>
        </div>

        <div class="card-body">

            <form action="{{ route('appointments.store') }}" method="POST">
                @csrf

                <div class="mb-3">
                    <label>Department</label>

                    <select name="department_id" class="form-control">
                        <option value="">Select Department</option>

                        @foreach($departments as $department)
                            <option value="{{ $department->id }}">
                                {{ $department->name }}
                            </option>
                        @endforeach
                    </select>
                </div>

                <div class="mb-3">
                    <label>Doctor</label>

                    <select name="doctor_id" class="form-control">
                        <option value="">Select Doctor</option>

                        @foreach($doctors as $doctor)
                            <option value="{{ $doctor->id }}">
                                {{ $doctor->name }}
                            </option>
                        @endforeach
                    </select>
                </div>

                <div class="mb-3">
                    <label>Patient</label>

                    <select name="patient_id" class="form-control">
                        <option value="">Select Patient</option>

                        @foreach($patients as $patient)
                            <option value="{{ $patient->id }}">
                                {{ $patient->name }}
                            </option>
                        @endforeach
                    </select>
                </div>

                <div class="mb-3">
                    <label>Appointment Date & Time</label>

                    <input
                        type="datetime-local"
                        name="appointment_datetime"
                        class="form-control">
                </div>

                <div class="mb-3">
                    <label>Duration (Minutes)</label>

                    <input
                        type="number"
                        name="duration"
                        class="form-control">
                </div>

                <div class="mb-3">
                    <label>Status</label>

                    <select
                        name="status"
                        class="form-control">

                        <option value="scheduled">
                            Scheduled
                        </option>

                        <option value="completed">
                            Completed
                        </option>

                        <option value="cancelled">
                            Cancelled
                        </option>

                    </select>
                </div>

                <button
                    type="submit"
                    class="btn btn-success">
                    Save
                </button>

            </form>

        </div>
    </div>

</div>

@endsection
