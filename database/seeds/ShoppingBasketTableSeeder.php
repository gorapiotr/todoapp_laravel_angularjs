<?php

use Illuminate\Database\Seeder;

class ShoppingBasketTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('shopping_baskets')->insert([
            'user_id' => 2,
            'product_id'=> 3,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('shopping_baskets')->insert([
            'user_id' => 3,
            'product_id'=> 3,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('shopping_baskets')->insert([
            'user_id' => 2,
            'product_id'=> 4,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('shopping_baskets')->insert([
            'user_id' => 2,
            'product_id'=> 1,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('shopping_baskets')->insert([
            'user_id' => 2,
            'product_id'=> 5,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('shopping_baskets')->insert([
            'user_id' => 3,
            'product_id'=> 3,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('shopping_baskets')->insert([
            'user_id' => 2,
            'product_id'=> 6,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('shopping_baskets')->insert([
            'user_id' => 2,
            'product_id'=> 4,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('shopping_baskets')->insert([
            'user_id' => 2,
            'product_id'=> 1,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
    }
}
