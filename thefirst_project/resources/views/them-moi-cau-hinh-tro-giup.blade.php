@extends('layout')
@section('main-content')


<div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                               

                                @if(isset($cauHinhTroGiup))
                                    <form action="{{ route('cau-hinh-tro-giup.xl-cap-nhat', ['id' => $cauHinhTroGiup->id])}}" method="POST">
                                    <h4 class="mb-3 header-title">Cập nhật cấu hình trợ giúp</h4>
                                @else
                                    <form action="{{ route('cau-hinh-tro-giup.xl-them-moi')}}" method="POST">
                                    <h4 class="mb-3 header-title">Thêm mới cấu hình trợ giúp</h4>
                                @endif
                               
                                @csrf
                                    <div class="form-group">
                                        <label for="loai_tro_giup">Loại trợ giúp</label>
                                        <input type="text" class="form-control" id="loai_tro_giup" name="loai_tro_giup" placeholder="Loại trợ giúp" @if(isset($cauHinhTroGiup)) value="{{$cauHinhTroGiup->loai_tro_giup}}" @endif >                                      
                                    </div>
                                    <div class="form-group">
                                        <label for="thu_tu">Thứ tự</label>
                                        <input type="text" class="form-control" id="thu_tu" name="thu_tu" placeholder="Thứ tự" @if(isset($cauHinhTroGiup)) value="{{$cauHinhTroGiup->thu_tu}}" @endif >                                      
                                    </div>
                                    <div class="form-group">
                                        <label for="credit">Credit</label>
                                        <input type="text" class="form-control" id="credit" name="credit" placeholder="Credit" @if(isset($cauHinhTroGiup)) value="{{$cauHinhTroGiup->credit}}" @endif > 
                                    </div>
                                    
                                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                </form>

                            </div> <!-- end card-body-->
                        </div> <!-- end card--> 
                    </div>
                                
                
  @endsection