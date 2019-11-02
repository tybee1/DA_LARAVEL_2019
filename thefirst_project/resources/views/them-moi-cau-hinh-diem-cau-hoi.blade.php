@extends('layout')
@section('main-content')


<div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                               

                                @if(isset($cauHinhDiemCauHoi))
                                    <form action="{{ route('cau-hinh-diem-cau-hoi.xl-cap-nhat', ['id' => $cauHinhDiemCauHoi->id])}}" method="POST">
                                    <h4 class="mb-3 header-title">Cập nhật cấu hình điểm câu hỏi</h4>
                                @else
                                    <form action="{{ route('cau-hinh-diem-cau-hoi.xl-them-moi')}}" method="POST">
                                    <h4 class="mb-3 header-title">Thêm mới cấu hình điểm câu hỏi</h4>
                                @endif
                               
                                @csrf
                                    <div class="form-group">
                                        <label for="thu_tu">Thứ tự</label>
                                        <input type="text" class="form-control" id="thu_tu" name="thu_tu" placeholder="Thứ tự" @if(isset($cauHinhDiemCauHoi)) value="{{$cauHinhDiemCauHoi->thu_tu}}" @endif > 
                                      
                                    </div>
                                    <div class="form-group">
                                        <label for="diem">Điểm</label>
                                        <input type="text" class="form-control" id="diem" name="diem" placeholder="Điểm" @if(isset($cauHinhDiemCauHoi)) value="{{$cauHinhDiemCauHoi->diem}}" @endif > 
                                    </div>
                                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                </form>

                            </div> <!-- end card-body-->
                        </div> <!-- end card--> 
                    </div>
                                
                
  @endsection