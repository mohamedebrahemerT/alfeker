 @php
$product=App\product::where('id',$id)->first();
@endphp

<!-- Button trigger modal -->
<a type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal{{$product->id}}">
    @if ($photo)
   <img src="{{Storage::url($photo)}}" style="width:100px;height: 100px;" >
     @endif
</a>

<!-- Modal -->
<div class="modal fade" id="exampleModal{{$product->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
         <h3>اسم الكتاب :{{$title_name_ar}}</h3>
         <h4>القسم : 
@if($department_id)
{{App\Department::where('id',$department_id)->first()->dep_name_ar }}

@endif
</h3>
         <h4>المؤلف : 
@if($trad_id)
{{App\TradeMark::where('id',$trad_id)->first()->name_ar }}

@endif</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         @if ($photo)
         @php
         if($product->filesss()->first())
         {
           $link= $product->filesss()->first()->full_file;
         }
         else
         {
             $link='#';
         }
        
         @endphp
         <a target="_blank" href="{{$link}}"> 
   <img src="{{Storage::url($photo)}}" style="width:100px;height: 100px;" >
   </a>
     @endif
     <br>
     <br>
  @foreach ($product->filesss()->get() as $key =>  $file) 
  <a  target="_blank" href="{{$file->full_file}}" target="_blank">  البي دي اف    {{$key+ 1}}
<i class="fa fa-eye" ></i>
  </a>
<br>


               @endforeach 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{trans('admin.Close')}}</button>
         
      </div>
    </div>
  </div>
</div>

 
  
 <br>
     <br>
  @foreach ($product->filesss()->get() as $key =>  $file) 
  <a  target="_blank" href="{{$file->full_file}}" target="_blank">  البي دي اف    {{$key+ 1}}</a>
<br>


               @endforeach 


       
