@extends('layout')
@section('main-content')


<div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                               

                                @if(isset($cauHinhApp))
                                    <form action="{{ route('cau-hinh-app.xl-cap-nhat', ['id' => $cauHinhApp->id])}}" method="POST">
                                    <h4 class="mb-3 header-title">Cập nhật cấu hình điểm câu hỏi</h4>
                                @else
                                    <form action="{{ route('cau-hinh-app.xl-them-moi')}}" method="POST">
                                    <h4 class="mb-3 header-title">Thêm mới cấu hình điểm câu hỏi</h4>
                                @endif
                               
                                @csrf
                                    <div class="form-group">
                                        <label for="cau_hoi_sai">Câu hỏi sai</label>
                                        <input type="text" class="form-control" id="cau_hoi_sai" name="cau_hoi_sai" placeholder="Câu hỏi sai" @if(isset($cauHinhApp)) value="{{$cauHinhApp->cau_hoi_sai}}" @endif > 
                                      
                                    </div>
                                    <div class="form-group">
                                        <label for="thoi_gian_tra_loi">Thời gian trả lời</label>
                                        <input type="text" class="form-control" id="thoi_gian_tra_loi" name="thoi_gian_tra_loi" placeholder="Thời gian trả lời" @if(isset($cauHinhApp)) value="{{$cauHinhApp->thoi_gian_tra_loi}}" @endif > 
                                    </div>
                                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                </form>

                            </div> <!-- end card-body-->
                        </div> <!-- end card--> 
                    </div>
                                
                
  @endsection