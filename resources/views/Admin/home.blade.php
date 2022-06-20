

@extends('Admin.index')

@section('content')



       @push('js')

              <script type="text/javascript">

                $(document).ready(function() {

        $('.mall_select2').select2();

});

              </script>

              @endpush

  <!-- Content Wrapper. Contains page content -->

  <div class="content-wrapper">

    <!-- Content Header (Page header) -->

    <section class="content-header">

      <h1>

      



        <span  class="alert alert-denger">

          

          

          @if(session('success'))

   <div class="alert alert-success ">

   {{session('success')}}



     </div>

   @endif



        </span>

       

      </h1>
 
    </section>



    <!-- Main content -->

    <section class="content">

      <!-- Small boxes (Stat box) -->

      <div class="row">

      	   <div class="col-lg-4 col-xs-4">

          <!-- small box -->

          <div class="small-box bg-aqua">

            <div class="inner">

              <h3>{{App\Department::count()}}</h3>



              <p>{{ trans('admin.categories') }}</p>

            </div>

            <div class="icon">

              <i class="ion ion-bag"></i>

            </div>

            <a href="admin/departments" class="small-box-footer">{{trans('admin.more')}}<i class="fa fa-arrow-circle-right"></i></a>

          </div>

        </div>

        <div class="col-lg-4 col-xs-4">

          <!-- small box -->

          <div class="small-box bg-aqua">

            <div class="inner">

              <h3>{{App\TradeMark::count()}}</h3>



              <p>{{trans('admin.athors')}}</p>

            </div>

            <div class="icon">

              <i class="ion ion-bag"></i>

            </div>

            <a href="admin/trademarks" class="small-box-footer">{{trans('admin.more')}}<i class="fa fa-arrow-circle-right"></i></a>

          </div>

        </div>

          <div class="col-lg-4 col-xs-4">

          <!-- small box -->

          <div class="small-box bg-aqua">

            <div class="inner">

              <h3>{{App\Product::count()}}</h3>



              <p>{{trans('admin.books')}}</p>

            </div>

            <div class="icon">

              <i class="ion ion-bag"></i>

            </div>

            <a href="admin/productes" class="small-box-footer">{{trans('admin.more')}}<i class="fa fa-arrow-circle-right"></i></a>

          </div>

        </div>

       
     

      </div>

      <!-- /.row -->


 
 

            </div>

          </div>

          <!-- /.box -->



        </section>

        <!-- right col -->

      </div>

      <!-- /.row (main row) -->



      @include('Admin.layouts.message');





    </section>

    <!-- /.content -->

  </div>

  <!-- /.content-wrapper -->



  @endsection

  