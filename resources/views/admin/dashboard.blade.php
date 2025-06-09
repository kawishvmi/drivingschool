@extends('layouts.app')

@section('content')
<h1 class="mb-4">Admin Dashboard</h1>
<p>Manage schools, instructors and students from this dashboard.</p>
<ul>
    <li><a href="{{ route('schools.create') }}">Add School</a></li>
    <!-- Additional admin links can be added here -->
</ul>
@endsection
