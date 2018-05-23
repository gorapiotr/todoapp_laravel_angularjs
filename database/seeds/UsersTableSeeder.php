<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
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
            DB::table('users')->insert([
                'name' => str_random(10),
                'password' => bcrypt('secret'),
                'remember_token' => str_random(10).'@gmail.com',
            ]);
        }
    }
}
