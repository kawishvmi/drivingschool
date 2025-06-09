<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GdprPreference extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'allow_email_notifications',
        'allow_data_retention',
    ];

    protected $casts = [
        'allow_email_notifications' => 'boolean',
        'allow_data_retention' => 'boolean',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
