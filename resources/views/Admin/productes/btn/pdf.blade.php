 @php
$product=App\product::where('id',$id)->first();
@endphp

  @if ($photo)
  <a href="{{Storage::url($photo)}}" target="_blank">  البي دي اف    
@if($product->filesss()->count() > 0)
 1
@endif
  
</a>
  @endif


<br>
  @foreach ($product->filesss()->get() as $key =>  $file) 
  <a href="{{Storage::url($file->full_file)}}" target="_blank">  البي دي اف    {{$key+ 2}}</a>
<br>


               @endforeach 


       
