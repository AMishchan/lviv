<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOwnersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('owners', function (Blueprint $table) {
            $table->increments('id');
            $table->text('google_id');
            $table->text('name_owner');
            $table->text('address');
            $table->text('site');
            $table->text('number');
            $table->text('schedule');
            $table->text('description');
            $table->text('photo');
            $table->text('rating');
            $table->text('reviews');
            $table->text('lat');
            $table->text('long');
            $table->integer('user_id');
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
        Schema::dropIfExists('owners');

    }
}