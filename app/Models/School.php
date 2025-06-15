<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class School extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'legal_name',
        'contact_person',
        'email',
        'phone',
        'country',
        'address',
        'subdomain',
        'dpo_contact',
        'marketing_opt_in',
        'website',
        'established_year',
        'instructors_count',
        'timezone',
        'description',
    ];

    public function users()
    {
        return $this->hasMany(User::class);
    }
}
