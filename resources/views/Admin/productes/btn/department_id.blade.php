 
@if($department_id)
{{App\Department::where('id',$department_id)->first()->dep_name_ar }}

@endif

