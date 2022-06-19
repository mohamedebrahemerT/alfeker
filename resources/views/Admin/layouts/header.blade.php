<!DOCTYPE html>

<html>

<head>

  <meta charset="utf-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>{{ trans('admin.Dashboard') }}</title>

  <!-- Tell the browser to be responsive to screen width -->

  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <!-- Bootstrap 3.3.7 -->
    <link rel="shortcut icon" href="http://localhost/dashboard/old/alymarket3/forentend3/assets/images/55.ico" type="image/png">
   <link rel="stylesheet" href="{{url('/')}}/Desgin/Adminlte/jstree/dist/themes/default/style.min.css">
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="{{url('/')}}/Desgin/Adminlte/bower_components/Ionicons/css/ionicons.min.css">
  <!-- DataTables -->
  <link rel="stylesheet" href="{{url('/')}}/Desgin/Adminlte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Morris chart -->
      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

     <link rel="stylesheet" href="{{url('/')}}/Desgin/Adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{url('/')}}/Desgin/Adminlte/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{url('/')}}/Desgin/Adminlte/bower_components/Ionicons/css/ionicons.min.css">
  <link rel="stylesheet" href="{{url('/')}}/Desgin/Adminlte/dist/css/select2.min.css">
  <link rel="stylesheet" href="{{url('/')}}/Desgin/Adminlte/dist/css/custom.css">
   <script src="{{url('/')}}/Desgin/ckeditor/ckeditor/ckeditor.js"></script>
  <!-- Theme style -->
         @if(dirction() =='ltr')
  <link rel="stylesheet" href="{{url('/')}}/Desgin/Adminlte/dist/css/AdminLTE.min.css">
  @else
    <link rel="stylesheet" 
    href="{{url('/')}}/Desgin/Adminlte/dist/css/rtl/AdminLTE.css">
    <link rel="stylesheet" 
    href="{{url('/')}}/Desgin/Adminlte/dist/css/rtl/AdminLTE.min.css">
<link rel="stylesheet" 
    href="{{url('/')}}/Desgin/Adminlte/dist/css/rtl/bootstrap-rtl.min.css">
    <link rel="stylesheet" 
    href="{{url('/')}}/Desgin/Adminlte/dist/css/rtl/rtl.css">
      <link rel="stylesheet" 
    href="{{url('/')}}/Desgin/Adminlte/dist/css/rtl/profile.css">
    <link href="{{url('/')}}/Desgin/Adminlte/dist/css/rtl/cairo.css" rel="stylesheet">
  <link rel="stylesheet" href="{{url('/')}}/Desgin/Adminlte/dist/css/bootstrap-datepicker.css">
  @endif
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="{{url('/')}}/Desgin/Adminlte/dist/css/skins/_all-skins.min.css">

   
  </style>

  @stack('css')

  <style type="text/css">
    .mall_select2
    {
      text-align: right;
    }
    .select2-container .select2-selection--single .select2-selection__rendered {
  padding-right: 10px;
  text-align: right;
}
  </style>
</head>
<body class="hold-transition skin-blue sidebar-mini" style="font: 400 14px/1.45 Open Sans;
color: #555;">
<div class="wrapper">
  <header class="main-header"  >
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->

      <span class="logo-lg"><b>{{ trans('admin.admin') }}</span>

    </a>

    <!-- Header Navbar: style can be found in header.less -->

    <nav class="navbar navbar-static-top" >

      <!-- Sidebar toggle button-->

      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">

        <span class="sr-only">Toggle navigation</span>

      </a>



   



   @include('Admin.layouts.menue'); 



    </nav>

  </header>



           @if(auth()->guard('admin')->user()->level =='admin')

 <!-- Left side column. contains the logo and sidebar -->

  <aside class="main-sidebar" >

    <!-- sidebar: style can be found in sidebar.less -->

    <section class="sidebar">

      <!-- Sidebar user panel -->

      <div class="user-panel">

        <div class="pull-left image">

               

            <img src="{{url('/')}}/forentend4/iconified/logo.png" class="img-circle" alt="User Image" width="30px" height="30px">

            


 


         

        </div>

        <div class="pull-left info">

                     

                     

          <p> {{ auth()->guard('admin')->user()->name }} </p>

       

          <a href="#"><i class="fa fa-circle text-success"></i>              {{ trans('admin.online') }}</a>

        </div>

      </div>



      

      <!-- search form -->

      <!--form action="#" method="get" class="sidebar-form">

        <div class="input-group">

          <input type="text" name="q" class="form-control" placeholder="{{ trans('admin.search') }}">

          <span class="input-group-btn">

                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>

                </button>

              </span>

        </div>

      </form-->

      <!-- /.search form -->

      <!-- sidebar menu: : style can be found in sidebar.less -->

      <ul class="sidebar-menu" data-widget="tree">

        <li class="header"> 

          @if(session('lang')== 'ar')

          {{MenueControll()->admin_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->admin_name_en}} 

          @endif



           </li>

        

   <li class="treeview {{ active_menu('')[0] }}">

        <a href="#">

          <i class="fa fa-list"></i> <span>

              @if(session('lang')== 'ar')

          {{MenueControll()->admin_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->admin_name_en}} 

          @endif

          </span>

          <span class="pull-right-container">

            <i class="fa fa-angle-left pull-right"></i>

          </span>

        </a>

        <ul class="treeview-menu" style="{{ active_menu('admin')[1] }}">

          <li class=""><a href="{{ url('admin') }}">

            <i class="fa fa-cog"></i>

             <span> 

                @if(session('lang')== 'ar')

          {{MenueControll()->admin_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->admin_name_en}} 

          @endif      

            </span>

            <span class="pull-right-container">

            </span>

          </a>

        </li>


 




            
 

 

  

    </ul>

  </li>



          



  <li class="treeview {{ active_menu('departments')[0] }}">

    <a href="#">

      <i class="fa fa-list"></i> 



      <span>

        {{ trans('admin.categories') }}

           

      </span>

      <span class="pull-right-container">

        <i class="fa fa-angle-left pull-right"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('departments')[1] }}">

      <li class=""><a href="{{ url('admin/departments') }}"><i class="fa fa-list"></i> 

         

  {{ trans('admin.categories') }}

    </a></li>



      <li class=""><a href="{{ url('admin/departments/create') }}"><i class="fa fa-plus"></i> {{ trans('admin.add') }}</a></li>



   



    </ul>

  </li>




  



   <li class="treeview {{ active_menu('trademarks')[0] }}">

    <a href="#">

      <i class="fa fa-cube"></i> 



      <span>

          

         {{ trans('admin.athors') }}

      </span>

      <span class="pull-right-container">

        <i class="fa fa-angle-left pull-right"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('trademarks')[1] }}">

      <li class=""><a href="{{ url('admin/trademarks') }}"><i class="fa fa-cube"></i> 

        {{ trans('admin.athors') }}

     

    </a></li>

      <li class=""><a href="{{ url('admin/trademarks/create') }}"><i class="fa fa-plus"></i> {{ trans('admin.add') }}</a></li>

    </ul>

  </li>

          

         <li class="treeview {{ active_menu('product')[0] }}">

    <a href="#">

      <i class="fa fa-product-hunt"></i>

       <span>

      {{ trans('admin.books') }}

    

     </span>

      <span class="pull-right-container">

        <i class="fa fa-product-hunt"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('product')[1] }}">

      <li class=""><a href="{{ url('admin/productes') }}"><i class="fa fa-product-hunt"></i>



      {{ trans('admin.books') }}

     </a></li>

      <li class=""><a href="{{ url('admin/productes/create') }}"><i class="fa fa-plus"></i> {{ trans('admin.add') }}</a></li>

    </ul>

  </li>



 



  <li class="treeview {{ active_menu('ccc')[0] }}">

    <a href="#">

      <i class="fa fa-users"></i> 

      <span>

          {{trans('admin.admin')}}

         

      </span>

      <span class="pull-right-container">

        <i class="fa fa-angle-left pull-right"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('ccc')[1] }}">

      <li class=""><a href="{{ url('admin/admins') }}?level=admin"><i class="fa fa-users"></i> 

        {{trans('admin.admin')}}

     

    </a></li>

     



      

    </ul>





  </li>

 
 


     
 

  
 

<!-------------------------------------------------------------------------->



    </section>

    <!-- /.sidebar -->

  </aside>



                @elseif(auth()->guard('admin')->user()->level =='imported')

                <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->

    <section class="sidebar">

      <!-- Sidebar user panel -->

      <div class="user-panel">

        <div class="pull-left image">

                 @if(auth()->guard('admin')->user()->photo)

            <img src="{{url('/')}}/forentend4/iconified/logo.png" class="img-circle" alt="User Image" width="30px" height="30px">

                @endif



                    @if(!auth()->guard('admin')->user()->photo)

            <img src="{{url('/')}}/forentend4/iconified/logo.png" class="img-circle" alt="User Image" >

                @endif



         

        </div>

        <div class="pull-left info">

                     

                     

          <p> {{ auth()->guard('admin')->user()->name }} </p>

       

          <a href="#"><i class="fa fa-circle text-success"></i>              {{ trans('admin.online') }}</a>

        </div>

      </div>



      

      <!-- search form -->

      <form action="#" method="get" class="sidebar-form">

        <div class="input-group">

          <input type="text" name="q" class="form-control" placeholder="{{ trans('admin.search') }}">

          <span class="input-group-btn">

                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>

                </button>

              </span>

        </div>

      </form>

      <!-- /.search form -->

      <!-- sidebar menu: : style can be found in sidebar.less -->

      <ul class="sidebar-menu" data-widget="tree">

        <li class="header"> 

          @if(session('lang')== 'ar')

          {{MenueControll()->admin_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->admin_name_en}} 

          @endif



           </li>

        

    <li class=""><a href="{{ url('admin') }}">



       <i class="fa fa-cog"></i> <span>

        @if(session('lang')== 'ar')

          {{MenueControll()->admin_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->admin_name_en}} 

          @endif</span>



          <span class="pull-right-container">



          </span>



        </a>



      </li> 



  



  <li class=""><a href="{{ url('admin/OrderShareWithAllVendor') }}">



       <i class="fa fa-cog"></i> <span>{{ trans('admin.neworder') }}</span>



          <span class="pull-right-container">



          </span>



        </a>



      </li> 





         <li class="treeview {{ active_menu('product')[0] }}">

    <a href="#">

      <i class="fa fa-product-hunt"></i>

       <span>

        @if(session('lang')== 'ar')

          {{MenueControll()->productes_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->productes_name_en}} 

          @endif

    

     </span>

      <span class="pull-right-container">

        <i class="fa fa-product-hunt"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('product')[1] }}">

      <li class=""><a href="{{ url('admin/myproductes') }}"><i class="fa fa-product-hunt"></i>



      @if(session('lang')== 'ar')

          {{MenueControll()->productes_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->productes_name_en}} 

          @endif

     </a></li>

      <li class=""><a href="{{ url('admin/myproductes/create') }}"><i class="fa fa-plus"></i> {{ trans('admin.add') }}</a></li>

    </ul>

  </li>



    @if(auth()->guard('admin')->user()->righttoAddDepartment == 1)

     <li class="treeview {{ active_menu('departments')[0] }}">

    <a href="#">

      <i class="fa fa-list"></i> 



      <span>

        categories

           

      </span>

      <span class="pull-right-container">

        <i class="fa fa-angle-left pull-right"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('departments')[1] }}">

      <li class=""><a href="{{ url('admin/departments') }}"><i class="fa fa-list"></i> 

         categories

  

    </a></li>

      <li class=""><a href="{{ url('admin/departments/create') }}"><i class="fa fa-plus"></i> {{ trans('admin.add') }}</a></li>

    </ul>

  </li>



    @endif

 





  <li class="treeview {{ active_menu('product')[0] }}">

    <a href="#">

      <i class="fa fa-product-hunt"></i>

       <span>

        @if(session('lang')== 'ar')

          {{MenueControll()->MyAcount_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->MyAcount_name_en}} 

          @endif

    

     </span>

      <span class="pull-right-container">

        <i class="fa fa-product-hunt"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('product')[1] }}">

      <li class=""><a href="{{ url('/') }}/admin/profile"><i class="fa fa-product-hunt"></i>

          

                    {{trans('admin.profile')}}

     </a></li>



         <li class=""><a href="{{ url('/') }}/admin/admins/{{auth()->guard('admin')->user()->id}}/edit"><i class="fa fa-product-hunt"></i>

          @if(session('lang')== 'ar')

          {{MenueControll()->MyAcount_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->MyAcount_name_en}} 

          @endif

     </a></li>

   

    </ul>

  </li>



   <li class="treeview {{ active_menu('Managementchat')[0] }}">

    <a href="#">

      <i class="fa fa-comments-o"></i> <span>{{ trans('admin.Managementchat') }}</span>

      <span class="pull-right-container">

        <i class="fa fa-comments-o"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('product')[1] }}">

      <li class=""><a href="{{ url('admin/Managementchat') }}"><i class="fa fa-comments-o"></i> {{ trans('admin.Managementchat') }}</a></li>



     



    </ul>

  </li> 









    </section>

    <!-- /.sidebar -->

  </aside>

                

               


<!-------------------------------------------------------------------------------------------------------------->

   @elseif(auth()->guard('admin')->user()->level =='affiliate')

                <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->

    <section class="sidebar">

      <!-- Sidebar user panel -->

      <div class="user-panel">

        <div class="pull-left image">

                 @if(auth()->guard('admin')->user()->photo)

            <img src="{{url('/')}}/forentend4/iconified/logo.png" class="img-circle" alt="User Image" width="30px" height="30px">

                @endif



                    @if(!auth()->guard('admin')->user()->photo)

            <img src="{{url('/')}}/forentend4/iconified/logo.png" class="img-circle" alt="User Image" >

                @endif



         

        </div>

        <div class="pull-left info">

                     

                     

          <p> {{ auth()->guard('admin')->user()->name }} </p>

       

          <a href="#"><i class="fa fa-circle text-success"></i>              {{ trans('admin.online') }}</a>

        </div>

      </div>



      

      <!-- search form -->

      <form action="#" method="get" class="sidebar-form">

        <div class="input-group">

          <input type="text" name="q" class="form-control" placeholder="{{ trans('admin.search') }}">

          <span class="input-group-btn">

                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>

                </button>

              </span>

        </div>

      </form>

      <!-- /.search form -->

      <!-- sidebar menu: : style can be found in sidebar.less -->

      <ul class="sidebar-menu" data-widget="tree">

        <li class="header"> 

          @if(session('lang')== 'ar')

          {{MenueControll()->admin_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->admin_name_en}} 

          @endif



           </li>

        

    <li class=""><a href="{{ url('/admin/affiliate') }}">



       <i class="fa fa-cog"></i> <span>

        @if(session('lang')== 'ar')

          {{MenueControll()->admin_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->admin_name_en}} 

          @endif</span>



          <span class="pull-right-container">



          </span>



        </a>



      </li> 



  


 


      </li> 





         <li class="treeview {{ active_menu('product')[0] }}">

    <a href="#">

      <i class="fa fa-product-hunt"></i>

       <span>

        @if(session('lang')== 'ar')

          {{MenueControll()->productes_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->productes_name_en}} 

          @endif

    

     </span>

      <span class="pull-right-container">

        <i class="fa fa-product-hunt"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('product')[1] }}">

      <li class=""><a href="{{ url('admin/productes') }}"><i class="fa fa-product-hunt"></i>



      @if(session('lang')== 'ar')

          {{MenueControll()->productes_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->productes_name_en}} 

          @endif

     </a></li>


    </ul>

  </li>



    @if(auth()->guard('admin')->user()->righttoAddDepartment == 1)

     <li class="treeview {{ active_menu('departments')[0] }}">

    <a href="#">

      <i class="fa fa-list"></i> 



      <span>

        categories

           

      </span>

      <span class="pull-right-container">

        <i class="fa fa-angle-left pull-right"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('departments')[1] }}">

      <li class=""><a href="{{ url('admin/departments') }}"><i class="fa fa-list"></i> 

         categories

  

    </a></li>

      <li class=""><a href="{{ url('admin/departments/create') }}"><i class="fa fa-plus"></i> {{ trans('admin.add') }}</a></li>

    </ul>

  </li>



    @endif

 





  <li class="treeview {{ active_menu('product')[0] }}">

    <a href="#">

      <i class="fa fa-product-hunt"></i>

       <span>

        @if(session('lang')== 'ar')

          {{MenueControll()->MyAcount_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->MyAcount_name_en}} 

          @endif

    

     </span>

      <span class="pull-right-container">

        <i class="fa fa-product-hunt"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('product')[1] }}">

      <li class=""><a href="{{ url('/') }}/admin/profile"><i class="fa fa-product-hunt"></i>

          

                    {{trans('admin.profile')}}

     </a></li>



         <li class=""><a href="{{ url('/') }}/admin/admins/{{auth()->guard('admin')->user()->id}}/edit"><i class="fa fa-product-hunt"></i>

          @if(session('lang')== 'ar')

          {{MenueControll()->MyAcount_name_ar}} 

          @endif

           @if(session('lang')== 'en')

          {{MenueControll()->MyAcount_name_en}} 

          @endif

     </a></li>

   

    </ul>

  </li>





  <li class="treeview {{ active_menu('product')[0] }}">

    <a href="#">

      <i class="fa fa-money"></i>

       <span>

       طلب   سحب   

    

     </span>

      <span class="pull-right-container">

        <i class="fa fa-money"></i>

      </span>

    </a>

    <ul class="treeview-menu" style="{{ active_menu('product')[1] }}">

      



      <li class=""><a href="{{ url('admin/withdrawFromTotalMoney') }}"><i class="fa fa-money"></i>      طلب   سحب   </a></li>


      <li class=""><a href="{{ url('/') }}/admin/withdrawFromTotalMoney?status=0"><i class="fa fa-money"></i>  المبالغ المطلوب سحبها      </a></li>
      <li class=""><a href="{{ url('/') }}/admin/withdrawFromTotalMoney?status=1"><i class="fa fa-money"></i>   المبالغ المحصله     </a></li>
      <li class=""><a href="{{ url('/') }}/admin/withdrawFromTotalMoney?status=2"><i class="fa fa-money"></i>   العمليات المرفوضة   </a></li>

    

   

    </ul>

  </li>

 







    </section>

    <!-- /.sidebar -->

  </aside>

                

                @endif



 

   

