<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserApiController extends Controller
{
    public function showUser( $id = null ){

        if($id == ''){
            $users = User::all();
            return response()->json(['users' => $users], 200);
        }else{
            $users = User::findOrFail($id);
            return response()->json(['users' => $users], 200);
        }

    }



    public function addUser(Request $request){

        if($request->isMethod('post')){

            $validation = Validator::make($request->all(), [
                'name' => 'required',
                'email'  => 'required|email|unique:users',
                'password' => 'required'
            ]);

            if($validation->fails()){
                return response()->json($validation->errors(), 422);
            };

            $user           = new User();
            $user->name     = $request->name;
            $user->email    = $request->email;
            $user->password = Hash::make($request->password);
            $user->save();

            $message = 'User Add Successfully';
            return response()->json(['message'=> $message], 201);
        }

    }



    public function addMultipleUser(Request $request){

        if($request->isMethod('post') ){
            $datas = $request->all();

            $validation = Validator::make($datas,[
               'users.*.name'       => 'required',
               'users.*.email'      => 'required|email|unique:users',
               'users.*.password'   => 'required'
            ]);

            if($validation->fails()){
                return response()->json($validation->errors(), 422);
            };

            foreach($datas['users'] as $data){

                $user               = new User();
                $user->name         = $data['name'];
                $user->email        = $data['email'];
                $user->password     = Hash::make($data['password']);
                $user->save();

                $message = 'User Add Successfully';
            }

            return response()->json(['message'=> $message], 201);
        }
    }



    public function updateUser(Request $request, $id){
        if($request->isMethod('put')){
            $data = $request->all();

            $validation = Validator::make($data, [
               'name'       => 'required',
               'password'   => 'required'
            ]);

            if($validation->fails()){
                return response()->json($validation->errors(), 422);
            }

            $user           = User::findOrFail($id);
            $user->name     = $data['name'];
            $user->password = Hash::make($data['password']);
            $user->save();

            $message = 'User Update Successfully';

            return response()->json(['message'=>$message], 202);

        }
    }



    public function updateSingleUser(Request $request, $id){
        if($request->isMethod('patch')){
            $data = $request->all();

            $validation = Validator::make($data, [
                'name'      => 'required',
            ]);

            if($validation->fails()){
                return response()->json($validation->errors(), 422);
            };

            $user           = User::findOrFail($id);
            $user->name     = $data['name'];
            $user->save();

            $message = 'User Name Update Successfully';
            return response()->json(['message'=> $message], 202);
        }
    }



    public function deleteSingleUser($id = null){
        User::findOrFail($id)->delete();

        $message = 'User Delete Successfully';
        return response()->json(['message'=> $message], 200);
    }


    public function deleteMultipleUser($ids){

        $id = explode(',',$ids);

        User::whereIn('id',$id)->delete();

        $message = 'Multiple User Delete Successfully';
        return response()->json(['message'=> $message], 200);
    }



    public function deleteSingleUserWithJson(Request $request){
        if($request->isMethod('delete')){
            $data = $request->all();

            User::where('id',$data['id'])->delete();
            $message = 'User Delete Successfully';
            return response()->json(['message'=> $message], 200);
        }
    }


    public function deleteMultipleUserWithJson(Request $request){
        if($request->isMethod('delete')){

            $header = $request->header("Authorization");

            if($header == ''){
                $message = 'Authorization is required';
                return response()->json(['message'=> $message], 422);
            }else{
                if($header == 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6Ik1vc2FiYmVyIiwiaWF0IjoxNTE2MjM5MDIyfQ.K-OWkWbcKFBtu1bU75t0Ec_pchKatDjgOPQHEKNdnTs'){
                    $datas = $request->all();
                    User::whereIn('id', $datas['ids'])->delete();
                    $message = 'User Delete Successfully';
                    return response()->json(['message'=> $message], 200);
                }else{
                    $message = 'Authorization does not match';
                    return response()->json(['message'=> $message], 422);
                }
            }
        }
    }



    public function registerUserUsingPassport(Request $request){
        if($request->isMethod('post')){
            $data = $request->all();

            $validation = Validator::make($data, [
                'name'      => 'required',
                'email'     => 'required|email|unique:users',
                'password'  => 'required'
            ]);

            if ($validation->fails()){
                return response()->json($validation->errors(), 422);
            }

            $user           = new User();
            $user->name     = $data['name'];
            $user->email    = $data['email'];
            $user->password = Hash::make($data['password']);
            $user->save();

            if(Auth::attempt(['email' => $data['email'], 'password' => $data['password'] ])){

                $user = User::where('email', $data['email'])->first();
                $access_token = $user->createToken( $data['email'] )->accessToken;

                User::where('email', $data['email'])->update([
                   'access_token' => $access_token
                ]);

                $message = 'User Register Successfully';
                return response()->json(['message'=> $message, 'access_token' => $access_token], 201);
            }else{
                $message = 'OPPS! Something went wrong';
                return response()->json(['message'=> $message], 422);
            }
        }

    }


    public function loginUserUsingPassport(Request $request)  {
        if($request->isMethod('post')){
            $data = $request->all();

            $validation = Validator::make($data, [
                'email'     => 'required|email|exists:users',
                'password'  => 'required'
            ]);

            if($validation->fails()){
                return response()->json($validation->errors(), 422);
            }

            if(Auth::attempt(['email' => $data['email'], 'password' => $data['password']])){

                $user = User::where('email', $data['email'])->first();
                $access_token = $user->createToken( $data['email'] )->accessToken;

                User::where('email', $data['email'])->update([
                    'access_token' => $access_token
                ]);

                $message = 'User Login Successfully';
                return response()->json(['message'=> $message, 'access_token' => $access_token], 201);

            }else{
                $message = 'Invalid email or password';
                return response()->json(['message'=> $message], 422);
            }
        }
    }


}
