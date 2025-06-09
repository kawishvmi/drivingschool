@extends('layouts.app')

@section('content')
<h1 class="mb-4">Register School</h1>
<form method="POST" action="{{ route('schools.store') }}">
    @csrf
    <div class="mb-3">
        <label for="name" class="form-label">School Name</label>
        <input type="text" class="form-control" id="name" name="name" required>
    </div>
    <div class="mb-3">
        <label for="domain" class="form-label">Domain</label>
        <input type="text" class="form-control" id="domain" name="domain">
    </div>
    <button type="submit" class="btn btn-primary">Create School</button>
</form>
@endsection
