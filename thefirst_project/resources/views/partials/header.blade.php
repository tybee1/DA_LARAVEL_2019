<header id="topnav">
         <!-- Topbar Start -->
         @include('partials.topbar')
            <!-- end Topbar -->
            <div class="topbar-menu">
                <div class="container-fluid">
                    <div id="navigation">
                        <!-- Navigation Menu-->
                        <ul class="navigation-menu">

                            <li class="has-submenu">
                                <a href="{{route('trang-chu')}}">
                                    <i class="la la-home"></i>Trang Chủ </a>
                               
                            </li>

                            <li class="has-submenu">
                                <a href="{{route('linh-vuc.danh-sach')}}">
                                    <i class="la la-cube"></i>Danh sách lĩnh vực </a>
                                
                            </li>

                            <li class="has-submenu">
                                <a href="{{route('nguoi-choi.ds-nguoi-choi')}}"> <i class="la la-clone"></i>Người chơi  <div class="arrow-down"></div> </a>   
                                <ul class="submenu">
                                <li class="has-submenu">
                                <a href="{{route('chi-tiet-luot-choi.ds-chi-tiet-luot-choi')}}"> <i class="la la-file-text-o"></i>Chi tiết lượt chơi</a>                               
                                </li>  
                                <li class="has-submenu">
                                <a href="{{route('luot-choi.ds-luot-choi')}}"> <i class="la la-file-text-o"></i>Lượt chơi</a>                               
                                </li>                    
                                </ul>                            
                            </li>
                            <li class="has-submenu">
                                <a href="{{route('cau-hoi.ds-cau-hoi')}}"> <i class="la la-diamond"></i>Câu hỏi  <div class="arrow-down"></div>  </a> 
                                <ul class="submenu">
                                  <li class="has-submenu">
                                    <a href="{{route('cau-hinh-diem-cau-hoi.ds-cau-hinh-diem-cau-hoi')}}"> <i class="la la-file-text-o"></i>Cấu hình điểm câu hỏi</a>                               
                                  </li>
                                
                                </ul>                               
                            </li>
                            <li class="has-submenu">
                                <a href="{{route('goi-credit.ds-goi-credit')}}"> <i class="la la-file-text-o"></i>Gói credit <div class="arrow-down"></div> </a>
                                <ul class="submenu">                                 
                            <li class="has-submenu">
                                <a href="{{route('lich-su-mua-credit.ds-lich-su-mua-credit')}}"> <i class="la la-file-text-o"></i>Lịch sử mua credit</a>                               
                            </li>

                                </ul>         
                            </li>
                             <li class="has-submenu">
                                <a href="{{route('quan-tri-vien.ds-quan-tri-vien')}}"> <i class="la la-briefcase"></i>Quản trị viên </a>                                
                            </li>

                            <li class="has-submenu">
                                <a href="{{route('cau-hinh-app.ds-cau-hinh-app')}}"> <i class="la la-flask"></i>Cấu hình App </a>
                            </li>

                           

                            <li class="has-submenu">
                                <a href="{{route('cau-hinh-tro-giup.ds-cau-hinh-tro-giup')}}"> <i class="la la-file-text-o"></i>Cấu hình trợ giúp</a>                               
                            </li>
                        </ul>
                        <!-- End navigation menu -->

                        <div class="clearfix"></div>
                    </div>
                    <!-- end #navigation -->
                </div>
                <!-- end container -->
            </div>
            <!-- end navbar-custom -->

        </header>