<?php

namespace App\Http\Controllers;
//© 2020 Copyright: Tahu Coding
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

use App\User;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        //$role = Role::create(['name' => 'user']);
        //$permission = Permission::create(['name' => 'home']);
        $user = User::find(Auth::id());
        return view('home', compact('user'));
    }
}
