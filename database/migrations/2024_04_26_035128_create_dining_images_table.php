<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('dining_images', function (Blueprint $table) {
            $table->id();
            $table->foreignId('dining_id')->constrained('dinings')->cascadeOnDelete();
            $table->string('title')->nullable();
            $table->longText('image')->nullable();
            $table->integer('status')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('dining_images');
    }
};
