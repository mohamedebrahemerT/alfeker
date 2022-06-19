 
@if($trad_id)
{{App\TradeMark::where('id',$trad_id)->first()->name_ar }}

@endif

