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
        <label for="legal_name" class="form-label">Legal Business Name</label>
        <input type="text" class="form-control" id="legal_name" name="legal_name" required>
    </div>
    <div class="mb-3">
        <label for="contact_person" class="form-label">Primary Contact Person</label>
        <input type="text" class="form-control" id="contact_person" name="contact_person" required>
    </div>
    <div class="mb-3">
        <label for="email" class="form-label">Contact Email</label>
        <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="mb-3">
        <label for="phone" class="form-label">Phone</label>
        <input type="text" class="form-control" id="phone" name="phone" required>
    </div>
    <div class="mb-3">
        <label for="country" class="form-label">Country</label>
        <input type="text" class="form-control" id="country" name="country" required>
    </div>
    <div class="mb-3">
        <label for="address" class="form-label">Address</label>
        <textarea class="form-control" id="address" name="address" rows="2" required></textarea>
    </div>
    <div class="mb-3">
        <label for="subdomain" class="form-label">Preferred Subdomain</label>
        <div class="input-group">
            <input type="text" class="form-control" id="subdomain" name="subdomain" required>
            <span class="input-group-text">.drivingschoolmanagement.com</span>
        </div>
    </div>
    <div class="mb-3">
        <label for="password" class="form-label">Admin Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
    </div>
    <div class="mb-3">
        <label for="password_confirmation" class="form-label">Confirm Password</label>
        <input type="password" class="form-control" id="password_confirmation" name="password_confirmation" required>
    </div>
    <div class="mb-3">
        <label for="dpo_contact" class="form-label">Data Protection Officer Contact (optional)</label>
        <input type="text" class="form-control" id="dpo_contact" name="dpo_contact">
    </div>
    <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="consent_data_collection" name="consent_data_collection" required>
        <label class="form-check-label" for="consent_data_collection">I consent to the collection of the provided data for account creation.</label>
    </div>
    <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="consent_data_storage" name="consent_data_storage" required>
        <label class="form-check-label" for="consent_data_storage">I consent to the storage of this data for management purposes.</label>
    </div>
    <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="consent_marketing" name="consent_marketing" required>
        <label class="form-check-label" for="consent_marketing">I consent to receive essential communications about my account.</label>
    </div>
    <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="consent_third_party" name="consent_third_party" required>
        <label class="form-check-label" for="consent_third_party">I consent to sharing data with trusted third-party processors.</label>
    </div>
    <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="marketing_opt_in" name="marketing_opt_in">
        <label class="form-check-label" for="marketing_opt_in">Send me product updates and newsletters.</label>
    </div>
    <div class="mb-3 form-check">
        <input type="checkbox" class="form-check-input" id="accept_terms" name="accept_terms" required>
        <label class="form-check-label" for="accept_terms">I agree to the <a href="/terms">Terms of Service</a> and <a href="/privacy">Privacy Policy</a>. I understand I have the right to access, rectify and delete my data.</label>
    </div>
    <button type="submit" class="btn btn-primary">Create School</button>
</form>
@endsection
