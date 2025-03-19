<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEtapesTable extends Migration
{
    public function up()
    {
        Schema::create('etapes', function (Blueprint $table) {
            $table->id();
            $table->string('titre');
            $table->text('description');
            $table->integer('ordre')->unique();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('etapes');
    }
}

