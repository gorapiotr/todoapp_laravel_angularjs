<?php

use Illuminate\Database\Seeder;

class ToDoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for($i =0; $i < 10; $i++)
        {
            DB::table('to_dos')->insert([
                'content' => str_random(10),
                'archive' => rand(0,1),
            ]);
        }
    }
}
