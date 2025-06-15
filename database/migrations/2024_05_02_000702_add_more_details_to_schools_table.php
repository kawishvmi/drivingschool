<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('schools', function (Blueprint $table) {
            $table->string('website')->nullable();
            $table->integer('established_year')->nullable();
            $table->integer('instructors_count')->nullable();
            $table->string('timezone')->nullable();
            $table->text('description')->nullable();
        });
    }

    public function down(): void
    {
        Schema::table('schools', function (Blueprint $table) {
            $table->dropColumn([
                'website',
                'established_year',
                'instructors_count',
                'timezone',
                'description',
            ]);
        });
    }
};
