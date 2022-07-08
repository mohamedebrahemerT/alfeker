 @php
$product=App\product::where('id',$id)->first();
@endphp

<!-- Button trigger modal -->
<a type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal{{$product->id}}">
    @if ($photo)
   <img src="{{Storage::url($photo)}}"  >
     @endif
</a>

<!-- Modal -->
<div class="modal fade" id="exampleModal{{$product->id}}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
       
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
         @if ($photo2)
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
   <img src="{{Storage::url($photo)}}" style="width:550px;height: 600px;" >
   </a>
     @endif
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{trans('admin.Close')}}</button>
         
      </div>
    </div>
  </div>
</div>

 
  
<br>
  @foreach ($product->filesss()->get() as $key =>  $file) 
  <a  target="_blank" href="{{$file->full_file}}" target="_blank">  البي دي اف    {{$key+ 1}}</a>
<br>


               @endforeach 


       
