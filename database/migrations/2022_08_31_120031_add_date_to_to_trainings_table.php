<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('trainings', function (Blueprint $table) {
            $table->date('date_to')->nullable();
        });
        Schema::table('speed_trainings', function (Blueprint $table) {
            $table->date('date_to')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('trainings', function (Blueprint $table) {
            $table->dropColumn('date_to');
        });
        Schema::table('speed_trainings', function (Blueprint $table) {
            $table->dropColumn('date_to');
        });
    }
};
