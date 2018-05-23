<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('products')->insert([
            'name' => "Kosiarka",
            'category' => "Ogród",
            'price' => 159,
            'description' => "Bardzo fajna kosiarka, która mozna czesto uzywać",
            'amount' => 20,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('products')->insert([
            'name' => "Przecinak",
            'category' => "Ogród",
            'price' => 39,
            'description' => "Przecinak spoko spoko",
            'amount' => 10,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('products')->insert([
            'name' => "Telewizor",
            'category' => "Elektronika",
            'price' => 350,
            'description' => "O led super fajny",
            'amount' => 45,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('products')->insert([
            'name' => "iPod",
            'category' => "Elektronik",
            'price' => 229,
            'description' => "Apple bardzo fajny",
            'amount' => 199,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('products')->insert([
            'name' => "Myszka",
            'category' => "Elektronika",
            'price' => 89,
            'description' => "Duze dpi",
            'amount' => 290,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('products')->insert([
            'name' => "Taczka",
            'category' => "Ogród",
            'price' => 159,
            'description' => "Bardzo duza pojemność",
            'amount' => 20,
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
    
    }
}
