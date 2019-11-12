@extends('layout')
@section('js')
<!-- third party js -->
<script src="{{ asset('assets/libs/datatables/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/dataTables.bootstrap4.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/dataTables.responsive.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/responsive.bootstrap4.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/dataTables.buttons.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/buttons.bootstrap4.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/buttons.html5.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/buttons.flash.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/buttons.print.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/dataTables.keyTable.min.js') }}"></script>
        <script src="{{ asset('assets/libs/datatables/dataTables.select.min.js') }}"></script>
        <script src="{{ asset('assets/libs/pdfmake/pdfmake.min.js') }}"></script>
        <script src="{{ asset('assets/libs/pdfmake/vfs_fonts.js') }}"></script>
        <!-- third party js ends -->
<script type="text/javascript">
        
        $(document).ready(function(){$("#linh-vuc-datatable").DataTable({language:{paginate:{previous:"<i class='mdi mdi-chevron-left'>",next:"<i class='mdi mdi-chevron-right'>"}},drawCallback:function(){$(".dataTables_paginate > .pagination").addClass("pagination-rounded")}});});
        </script>
@endsection

@section('css')
   <!-- third party css -->
   <link href="{{ asset ('assets/libs/datatables/dataTables.bootstrap4.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset ('assets/libs/datatables/responsive.bootstrap4.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset ('assets/libs/datatables/buttons.bootstrap4.css') }}" rel="stylesheet" type="text/css" />
        <link href="{{ asset ('assets/libs/datatables/select.bootstrap4.css') }}" rel="stylesheet" type="text/css" />
        <!-- third party css end -->
@endsection

@section('main-content')

 <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">                            
                                <h6 class="header-title">Danh sách lĩnh vực</h6>
                                <a href="{{route('linh-vuc.ds-xoa')}}" class="btn btn-danger waves-effect waves-light"> Danh sách đã xóa 
                                <span class="btn-label-right"><i class="fe-trash-2"></i></span></a>
                                <table id="linh-vuc-datatable" class="table dt-responsive nowrap">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tên lĩnh vực</th>
                                            <th></th>                                           
                                        </tr>
                                    </thead>                                                               
                                    <tbody>
                                    @foreach($linhVuc as $tungLinhVuc)
                                        <tr>
                                            <td>{{ $tungLinhVuc->id }}</td>
                                            <td>Lĩnh Vực {{ $tungLinhVuc->ten_linh_vuc }}</td>
                                            <td>
                                             <a href="{{route('linh-vuc.them-moi')}}" class="btn btn-info waves-effect waves-light"><i class="mdi mdi-pencil-plus"></i></a>
                                                                                           
                                             <a href="{{route('linh-vuc.cap-nhat', ['id' => $tungLinhVuc->id])}}" class="btn btn-purple waves-effect waves-light"><i class=" mdi mdi-database-edit"></i></a> 
                                             <a href="{{route('linh-vuc.xl-xoa', ['id' => $tungLinhVuc->id])}}" class="btn btn-danger waves-effect waves-light"><i class=" mdi mdi-delete-forever"></i></a>
                                                                    
                                            </td>                                           
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>

                            </div> <!-- end card body-->
                        </div> <!-- end card -->
                    </div><!-- end col-->
                </div>
@endsection