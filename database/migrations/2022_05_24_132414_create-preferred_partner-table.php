<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('preferred_partners', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id');
            $table->integer('preferred_income_from');
            $table->integer('preferred_income_to');
            $table->enum('preferred_manglik', ['yes', 'no']);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('preferred_partners');
    }
};
