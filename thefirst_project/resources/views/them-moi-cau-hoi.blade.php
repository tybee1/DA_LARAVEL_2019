@extends('layout')
@section('main-content')
<div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                               

                                @if(isset($cauHoi))
                                    <form action="{{ route('cau-hoi.xl-cap-nhat', ['id' => $cauHoi->id])}}" method="POST">
                                    <h4 class="mb-3 header-title">Cập nhật câu hỏi</h4>
                                @else
                                    <form action="{{ route('cau-hoi.xl-them-moi')}}" method="POST">
                                    <h4 class="mb-3 header-title">Thêm câu hỏi mới</h4>
                                @endif

                                @csrf
                                    <div class="form-group">
                                        <label for="noi_dung">Nội dung câu hỏi</label>
                                        <input type="text" class="form-control" id="noi_dung" name="noi_dung" placeholder="Nội dung" @if(isset($cauHoi)) value="{{ $cauHoi->noi_dung }}" @endif>
                                        
                                        <label for="linh_vuc_id">Lĩnh vực</label>
                                            <select name='linh_vuc_id' class="form-control" @if(isset($cauHoi)) value="{{ $cauHoi->linh_vuc_id }}" @endif>
                                            @foreach($linhVucCauHoi as $tungLinhVuc )
                                                <option value="{{$tungLinhVuc->id}}">{{$tungLinhVuc->ten_linh_vuc}}</option>
                                            @endforeach
                                            </select>
                                        <br/>
                                        <label for="phuong_an_a">Phương án A</label>
                                        <input type="text" class="form-control" id="phuong_an_a" name="phuong_an_a" placeholder="Phương Án A" @if(isset($cauHoi)) value="{{ $cauHoi->phuong_an_a }}" @endif>

                                        <label for="phuong_an_b">Phương án B</label>
                                        <input type="text" class="form-control" id="phuong_an_b" name="phuong_an_b" placeholder="Phương Án B" @if(isset($cauHoi)) value="{{ $cauHoi->phuong_an_b }}" @endif>

                                        <label for="phuong_an_c">Phương án C</label>
                                        <input type="text" class="form-control" id="phuong_an_c" name="phuong_an_c" placeholder="Phương Án C" @if(isset($cauHoi)) value="{{ $cauHoi->phuong_an_c }}" @endif>

                                        <label for="phuong_an_d">Phương án D</label>
                                        <input type="text" class="form-control" id="phuong_an_d" name="phuong_an_d" placeholder="Phương Án D" @if(isset($cauHoi)) value="{{ $cauHoi->phuong_an_d }}" @endif>

                                        <label for="dap_an">Đáp án</label>
                                        <input type="text" class="form-control" id="dap_an" name="dap_an" placeholder="Đáp án" @if(isset($cauHoi)) value="{{ $cauHoi->dap_an }}" @endif>

                                    </div>
                                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                </form>

                            </div> <!-- end card-body-->
                        </div> <!-- end card--> 
                    </div>
@endsection