<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCapturesTable extends Migration
{
    public function up()
    {
        Schema::create('captures', function (Blueprint $table) {
            $table->id();
            $table->foreignId('etape_id')->constrained()->onDelete('cascade');
            $table->string('path');
            $table->string('description')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('captures');
    }
}
