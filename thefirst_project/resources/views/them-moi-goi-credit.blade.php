@extends('layout')
@section('main-content')


<div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                               

                                @if(isset($goiCredit))
                                    <form action="{{ route('goi-credit.xl-cap-nhat', ['id' => $goiCredit->id])}}" method="POST">
                                    <h4 class="mb-3 header-title">Cập nhật gói Credit</h4>
                                @else
                                    <form action="{{ route('goi-credit.xl-them-moi')}}" method="POST">
                                    <h4 class="mb-3 header-title">Thêm mới gói Credit</h4>
                                @endif
                               
                                @csrf
                                    <div class="form-group">
                                        <label for="ten_goi">Tên gói</label>
                                        <input type="text" class="form-control" id="ten_goi" name="ten_goi" placeholder="Tên gói" @if(isset($goiCredit)) value="{{$goiCredit->ten_goi}}" @endif > 
                                      
                                    </div>
                                    <div class="form-group">
                                        <label for="credit">Credit</label>
                                        <input type="text" class="form-control" id="credit" name="credit" placeholder="Credit" @if(isset($goiCredit)) value="{{$goiCredit->credit}}" @endif > 
                                    </div>
                                    <div class="form-group">
                                        <label for="so_tien">Số tiền</label>
                                        <input type="text" class="form-control" id="so_tien" name="so_tien" placeholder="Số tiền" @if(isset($goiCredit)) value="{{$goiCredit->so_tien}}" @endif > 
                                    </div>
                                    
                                    <button type="submit" class="btn btn-primary waves-effect waves-light">Submit</button>
                                </form>

                            </div> <!-- end card-body-->
                        </div> <!-- end card--> 
                    </div>
                                
                
  @endsection