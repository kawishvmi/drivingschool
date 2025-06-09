<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    protected $fillable = [
        'school_id',
        'instructor_id',
        'title',
        'description',
        'location',
        'capacity',
    ];

    public function school()
    {
        return $this->belongsTo(School::class);
    }

    public function instructor()
    {
        return $this->belongsTo(Instructor::class);
    }

    public function students()
    {
        return $this->belongsToMany(Student::class);
    }

    public function schedules()
    {
        return $this->hasMany(ScheduledClass::class);
    }
}
