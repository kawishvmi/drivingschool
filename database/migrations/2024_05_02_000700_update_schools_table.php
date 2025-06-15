<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('schools', function (Blueprint $table) {
            $table->renameColumn('domain', 'subdomain');
            $table->string('legal_name')->nullable();
            $table->string('contact_person')->nullable();
            $table->string('email')->nullable();
            $table->string('phone')->nullable();
            $table->string('country')->nullable();
            $table->text('address')->nullable();
            $table->string('dpo_contact')->nullable();
            $table->boolean('marketing_opt_in')->default(false);
        });
    }

    public function down(): void
    {
        Schema::table('schools', function (Blueprint $table) {
            $table->renameColumn('subdomain', 'domain');
            $table->dropColumn([
                'legal_name',
                'contact_person',
                'email',
                'phone',
                'country',
                'address',
                'dpo_contact',
                'marketing_opt_in',
            ]);
        });
    }
};
