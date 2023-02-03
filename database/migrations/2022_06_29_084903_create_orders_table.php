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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('provider_id')->nullable();
            $table->unsignedBigInteger('address_id');
            $table->decimal('vat')->default(0);
            $table->unsignedBigInteger('coupon_id')->nullable();
            $table->decimal('discount')->default(0);
            $table->decimal('shipping')->default(0);
            $table->decimal('price')->default(0);
            $table->dateTime('confirmed_at')->nullable();
            $table->dateTime('shipping_at')->nullable();
            $table->dateTime('delivered_at')->nullable();
            $table->dateTime('cancelled_at')->nullable();
            $table->string('payment_method')->default('cash');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('orders');
    }
};
