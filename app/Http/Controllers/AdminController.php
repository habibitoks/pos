<?php

namespace App\Http\Controllers;
//© 2020 Copyright: Tahu Coding
use App\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
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
    public function listuser()
    {
        $users = User::all();
        $user = User::find(Auth::id());
        return view('adminuser/listuser', compact('users', 'user'));
    }

    public function registeruser()
    {
        //$role = Role::create(['name' => 'user']);
        //$permission = Permission::create(['name' => 'home']);
        $user = User::find(Auth::id());
        return view('adminuser/register', compact('user'));
    }


    public function store(Request $request){       

        DB::beginTransaction();

        try{
            $id = $request->id;

            $this->validate($request, [
                'name' => 'required|min:2|max:200',
                'email' => 'required',
                'password' => 'required|min:5|max:200', 
                'password_confirmation' => 'required|min:5|max:200',
                'akses' => 'required|min:1',
            ]);

                User::create([
                    'name' => $request->name,
                    'email' => $request->email,     
                    'password' => Hash::make($request->password),          
                    'user_akses' => $request->akses,
                
                ]);        

                $message = 'Data Berhasil di simpan';

                DB::commit();
                return redirect()->route('admin.listuser')->with('success',$message);   
                        
        }
        catch(\Exeception $e){
            DB::rollback();
            return redirect()->route('admin.register')->with('error',$e);
        }         
    }
}
