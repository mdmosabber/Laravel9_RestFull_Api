<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;



class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            [
                'name'  => 'mosabber',
                'email' => 'mosabber@gmail.com',
                'password'=> Hash::make('12345678')
            ],
            [
                'name'  => 'abir',
                'email' => 'abir@gmail.com',
                'password'=> Hash::make('12345678')
            ],
            [
                'name'  => 'rahim',
                'email' => 'rahim@gmail.com',
                'password'=> Hash::make('12345678')
            ] ,
            [
                'name'  => 'karim',
                'email' => 'karim@gmail.com',
                'password'=> Hash::make('12345678')
            ]


        ]);
    }
}
