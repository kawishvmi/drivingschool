<?php

namespace App\Http\Controllers;

use App\Models\School;
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
            'domain' => 'nullable',
        ]);

        School::create($request->only('name', 'domain'));

        return redirect()->route('admin.dashboard');
    }
}
