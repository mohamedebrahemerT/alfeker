 @push('js')
              <script type="text/javascript">
                $(document).ready(function() {
        $('.mall_select2').select2();
        $('.mall_select3').select2();
});
              </script>
              @endpush


  <div id="home" class="tab-pane fade in active">

      <h3>{{trans('admin.product_info')}}</h3>



             

      
         <div class="form-group ">
            {!! Form::label('tradmark',trans('admin.select_department')) !!}
            <br>
                   {!! Form::select('department_id',App\Department::pluck('dep_name_'.session('lang'),'id'),$productes->department_id,['class'=>'form-control mall_select2','placeholder'=>trans('admin.select_department')]) !!}

             </div>

             
               <div class="form-group ">
            {!! Form::label('tradmark',trans('admin.select_tradmark')) !!}
            <br>
                   {!! Form::select('trad_id',App\TradeMark::pluck('name_'.session('lang'),'id'),$productes->trad_id,['class'=>'form-control mall_select3','placeholder'=>trans('admin.select_tradmark')]) !!}

             </div>

  <div class="form-group">

            {!! Form::label('title_name_ar',trans('admin.title_name_ar')) !!}

            {!! Form::text('title_name_ar',$productes->title_name_ar,['class'=>'form-control title_name_ar']) !!}

        </div>


      
 

   

          

      

    </div>



                   

 

            

 



       