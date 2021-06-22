@extends('layouts.app', ["useraccess" => $user->user_akses])

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card" style="min-height: 85vh">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <style>
                                table {
                                  font-family: arial, sans-serif;
                                  border-collapse: collapse;
                                  width: 100%;
                                }
                                
                                td, th {
                                  border: 1px solid #dddddd;
                                  text-align: left;
                                  padding: 8px;
                                }
                                
                                tr:nth-child(even) {
                                  background-color: #dddddd;
                                }
                                </style>
                                
                                
                                <h2>Daftar User</h2>
                                
                                <table>
                                  <tr>
                                    <th>Nama</th>
                                    <th>Email</th>
                                    <th>Akses</th>
                                  </tr>

                                  @foreach ($users as $index=>$item)
                                    <tr>
                                        <td>{{$item->name}}</td>
                                        <td>{{$item->email}}</td>
                                        @if ($item->user_akses === 1)
                                          <td>Admin</td>
                                        @else
                                          <td>Kasir</td>
                                        @endif
                                    </tr>
                                  @endforeach
                                </table>
                        </div>
                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <a href="{{url('/admin/register')}}" class="btn btn-primary" >
                                    {{ __('TAMBAH USER') }}
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
