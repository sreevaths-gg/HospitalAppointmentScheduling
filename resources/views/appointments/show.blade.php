@extends('layouts.app')

@section('content')

<div class="card">

    <div class="card-header bg-primary text-white">
        <h3>Appointment Details</h3>
    </div>

    <div class="card-body">

        <table class="table table-bordered">

            <tr>
                <th>ID</th>
                <td>{{ $appointment->id }}</td>
            </tr>

            <tr>
                <th>Patient</th>
                <td>{{ $appointment->patient->name }}</td>
            </tr>

            <tr>
                <th>Doctor</th>
                <td>{{ $appointment->doctor->name }}</td>
            </tr>

            <tr>
                <th>Department</th>
                <td>
                    {{ $appointment->doctor->department->name }}
                </td>
            </tr>

            <tr>
                <th>Appointment Date & Time</th>
                <td>
                    {{ $appointment->appointment_datetime }}
                </td>
            </tr>

            <tr>
                <th>Duration</th>
                <td>
                    {{ $appointment->duration }} Minutes
                </td>
            </tr>

            <tr>
                <th>Status</th>
                <td>
                    {{ ucfirst($appointment->status) }}
                </td>
            </tr>

            <tr>
                <th>Created At</th>
                <td>
                    {{ $appointment->created_at }}
                </td>
            </tr>

        </table>

        <a
            href="{{ route('appointments.index') }}"
            class="btn btn-secondary">

            Back

        </a>

        <a
            href="{{ route('appointments.edit',$appointment->id) }}"
            class="btn btn-warning">

            Edit

        </a>

    </div>

</div>

@endsection
