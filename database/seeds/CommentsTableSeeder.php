<?php

use Illuminate\Database\Seeder;

class CommentsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('comments')->insert([
            'user_id' => 1,
            'content' => "tekst tekst",
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('comments')->insert([
            'user_id' => 1,
            'content' => "tekst tekst 2",
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('comments')->insert([
            'user_id' => 2,
            'content' => "tekst tekst 3",
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('comments')->insert([
            'user_id' => 2,
            'content' => "tekst tekst 4",
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('comments')->insert([
            'user_id' => 3,
            'content' => "tekst tekst 5",
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
        \DB::table('comments')->insert([
            'user_id' => 3,
            'content' => "tekst tekst 6",
            'created_at' => NOW(),
        	'updated_at' => NOW()
        ]);
    }
}
