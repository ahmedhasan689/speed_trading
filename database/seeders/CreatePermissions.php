<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class createPermissions extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Permission::create(['name' => 'index users']);
        Permission::create(['name' => 'add users']);
        Permission::create(['name' => 'edit users']);
        Permission::create(['name' => 'delete users']);


        Permission::create(['name' => 'index clients']);
        Permission::create(['name' => 'add clients']);
        Permission::create(['name' => 'edit clients']);
        Permission::create(['name' => 'delete clients']);


        Permission::create(['name' => 'index providers']);
        Permission::create(['name' => 'add providers']);
        Permission::create(['name' => 'edit providers']);
        Permission::create(['name' => 'delete providers']);

        Permission::create(['name' => 'index vendors']);
        Permission::create(['name' => 'add vendors']);
        Permission::create(['name' => 'edit vendors']);
        Permission::create(['name' => 'delete vendors']);

        Permission::create(['name' => 'index categories']);
        Permission::create(['name' => 'add categories']);
        Permission::create(['name' => 'edit categories']);
        Permission::create(['name' => 'delete categories']);

        Permission::create(['name' => 'index items']);
        Permission::create(['name' => 'add items']);
        Permission::create(['name' => 'edit items']);
        Permission::create(['name' => 'delete items']);

        Permission::create(['name' => 'index orders']);
        Permission::create(['name' => 'edit orders']);
        Permission::create(['name' => 'delete orders']);


        Permission::create(['name' => 'index items']);
        Permission::create(['name' => 'add items']);
        Permission::create(['name' => 'edit items']);
        Permission::create(['name' => 'delete items']);


        Permission::create(['name' => 'index settings']);
    }
}
