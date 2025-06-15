<?php

namespace App\Http\Controllers;

use App\Models\School;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;

class SchoolController extends Controller
{
    public function create()
    {
        return view('schools.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'legal_name' => 'required',
            'contact_person' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'country' => 'required',
            'address' => 'required',
            'subdomain' => 'required|alpha_dash|unique:schools,subdomain',
            'password' => 'required|confirmed|min:8',
            'accept_terms' => 'accepted',
            'website' => 'nullable|url',
            'established_year' => 'nullable|integer|between:1900,' . date('Y'),
            'instructors_count' => 'nullable|integer|min:0',
            'timezone' => 'nullable',
            'description' => 'nullable',
        ]);

        $subdomain = Str::slug($request->subdomain ?: $request->name);

        $school = School::create([
            'name' => $request->name,
            'legal_name' => $request->legal_name,
            'contact_person' => $request->contact_person,
            'email' => $request->email,
            'phone' => $request->phone,
            'country' => $request->country,
            'address' => $request->address,
            'subdomain' => $subdomain,
            'dpo_contact' => $request->dpo_contact,
            'marketing_opt_in' => $request->boolean('marketing_opt_in'),
            'website' => $request->website,
            'established_year' => $request->established_year,
            'instructors_count' => $request->instructors_count,
            'timezone' => $request->timezone,
            'description' => $request->description,
        ]);

        User::create([
            'name' => $request->contact_person,
            'email' => $request->email,
            'password' => $request->password,
            'school_id' => $school->id,
        ]);

        return redirect()->route('admin.dashboard');
    }
}
