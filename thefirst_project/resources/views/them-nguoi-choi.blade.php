@extends('layout')
@section('main-content')

<div class="card-body">
                                
                                @if(isset($nguoiChoi))
                                        <form action="{{ route('nguoi-choi.xl-cap-nhat', ['id' => $nguoiChoi->id])}}" method="POST">
                                        <h4 class="mb-3 header-title">Cập nhật người chơi</h4>
                                    @else
                                        <form action="{{ route('nguoi-choi.xl-them-moi')}}" method="POST">
                                        <h4 class="mb-3 header-title">Thêm mới người chơi</h4>
                                    @endif
                                @csrf
                                
                        
                                    <div class="form-group">
                                        <label for="ten_dang_nhap">Tên đăng nhập</label>
                                        <input type="text" class="form-control" id="ten_dang_nhap" name="ten_dang_nhap" placeholder="Tên đăng nhập"  @if(isset($nguoiChoi)) value="{{ $nguoiChoi->ten_dang_nhap }}" @endif>
                                    </div>                                   
                                    <div class="form-group">
                                        <label for="mat_khau">Mật khẩu</label>
                                        <input type="text" class="form-control" id="mat_khau" name="mat_khau" placeholder="Mật khẩu" @if(isset($nguoiChoi)) value="{{ $nguoiChoi->mat_khau }}" @endif>
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="text" class="form-control" id="email" name="email" placeholder="Email" @if(isset($nguoiChoi)) value="{{ $nguoiChoi->email }}" @endif>
                                    </div>
                                    <div class="form-group">
                                        <label for="hinh_dai_dien">Hình đại diện</label>
                                        <input type="text" class="form-control" id="hinh_dai_dien" name="hinh_dai_dien" placeholder="Hình đại diện"@if(isset($nguoiChoi)) value="{{ $nguoiChoi->hinh_dai_dien }}" @endif>
                                    </div>
                                    <div class="form-group">
                                        <label for="diem_cao_nhat">Điểm cao nhất</label>
                                        <input type="text" class="form-control" id="diem_cao_nhat" name="diem_cao_nhat" placeholder="Điểm cao nhất"@if(isset($nguoiChoi)) value="{{ $nguoiChoi->diem_cao_nhat }}" @endif>
                                    </div>
                                    <div class="form-group">
                                        <label for="credit">Credit</label>
                                        <input type="text" class="form-control" id="credit" name="credit" placeholder="Credit"@if(isset($nguoiChoi)) value="{{ $nguoiChoi->credit }}" @endif>
                                    </div>
                                   
                                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                </form>

                            </div>
@endsection