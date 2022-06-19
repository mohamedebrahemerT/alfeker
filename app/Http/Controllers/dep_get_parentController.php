<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\DataTables\statesdatatables;
use App\states;
  use Hash;
  use up;
  use Storage;
  use Form;  
  use App\cities;
  use App\Department;
  use App\sizes;
   


class dep_get_parentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(statesdatatables $dataTable)
    {
         return $dataTable->render('Admin.states.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function dep_get_parent()
    {
        if (request()->ajax()) 
                 {

                 

                    if (request()->has('country_id'))
                     {
              

           $select=request()->has('select')?request('select'):'';          

return  $city=Form::select('city_id',Department::where('parent',request('country_id'))->pluck('dep_name_ar','id'),$select,['class'=>'form-control city_id',"placeholder"=>"........"] );


    /* $sizes=Form::select('yyyyy',sizes::where('department_id',request('country_id'))->pluck('name_ar','id'),$select,['class'=>'form-control yyyyy',"placeholder"=>"........"] );

                
         return $city.'<br>'.$sizes;
         // return   $output =['city'=>$city ,'sizes'=> $sizes];
         
                
          $output = array(
            'city'     =>  $city,
            'sizes'   =>  $sizes
        );  */
               
               

                  }  

                  else
                  {
                
                   $select=request()->has('select')?request('select'):'';          

 return Form::select('parent',Department::where('parent',request('city_id'))->pluck('dep_name_ar','id'),$select,['class'=>'form-control parent',"placeholder"=>"........"] );

                 

                  }




                    }
           
                    
 
                  
       
        return view('Admin.states.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
             
                
          $data= $this->validate(request(),[
               'states_name_ar' => ['required', 'string', 'max:255'],
                'states_name_en' => ['required', 'string', 'max:255'],
                'country_id' => ['required', 'string', 'max:255'],
                'city_id' => ['required', 'string', 'max:255'],


                  
         
            
            ],[],[
          'states_name_ar'=>trans('admin.states_name_ar'),
            'states_name_en'=>trans('admin.states_name_en'),
            'country_id'=>trans('admin.country_id'),
            'city_id'=>trans('admin.city'),


          

            ]);
                   
          
         states::create($data);

             session()->flash('success',trans('admin.dataaddsuccessfully'));
       

         return redirect('admin/states');
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
            $title=trans('admin.city');
        $states=states::find($id);

       return view('Admin.states.update',compact('title','states'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
           
               
     
          $data= $this->validate(request(),[
               'states_name_ar' => ['required', 'string', 'max:255'],
                'states_name_en' => ['required', 'string', 'max:255'],
                'country_id' => ['required', 'string', 'max:255'],
                'city_id' => ['required', 'string', 'max:255'],


                  
         
            
            ],[],[
          'states_name_ar'=>trans('admin.states_name_ar'),
            'states_name_en'=>trans('admin.states_name_en'),
            'country_id'=>trans('admin.country_id'),
            'city_id'=>trans('admin.city'),


          

            ]);

                 
             
               states::where('id',$id)->update($data);

             session()->flash('success',trans('admin.dataaddsuccessfully'));
 
         return redirect('admin/states');
       
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
             $states=states::find($id);
                
         states::find($id)->delete();
           session()->flash('success',trans('admin.deletestates'));
       

         return redirect('admin/states');
    }

        public function  destoryall(Request $request)
    {
        if (is_array(request('item'))) {
            
            states::destroy(request('item'));

        }
        else
        {
               states::find(request('item'))->delete();
        }
           session()->flash('success',trans('admin.deleteadminrecored'));
       

         return redirect('admin/states');

         
    }
}


