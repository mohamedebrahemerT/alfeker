<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Goutte;
use Illuminate\Support\Str;
use Storage;
use App\Product;
use App\Department;
use App\TradeMark;

class ProcessPodcast implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $bookDepartmentName;
    public $bookAuthorName;
    public $bookName;
    public $bookImgSrc;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($bookDepartmentName,$bookAuthorName,$bookName,$bookImgSrc)
    {
        //
        $this->bookDepartmentName = $bookDepartmentName;
        $this->bookAuthorName = $bookAuthorName;
        $this->bookName = $bookName;
        $this->bookImgSrc = $bookImgSrc;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
       $this->createdata($this->bookDepartmentName, $this->bookAuthorName, $this->bookName, $this->bookImgSrc);
    }

       public function createdata($bookDepartmentName,$bookAuthorName,$bookName,$bookImgSrc )
    {
          $Department =  Department::where('dep_name_ar', $bookDepartmentName)->first();
       $TradeMark =  TradeMark::where('name_ar', $bookAuthorName)->first();

       if ( $Department) 
       {
           $department_id= $Department->id;
       }
       else
       {
         $Department=new Department;
         $Department->dep_name_ar= $bookDepartmentName;
          $Department->save() ;
           $department_id=$Department->id;

       }
       


       if ( $TradeMark) 
       {
           $trad_id=$TradeMark->id;
       }
       else
       {
         $TradeMark=new TradeMark;
         $TradeMark->name_ar= $bookAuthorName;
          $TradeMark->save() ;
           $trad_id=$TradeMark->id;


       }

          $product = new product ;
          $product->title_name_ar=  $bookName ;
          $product->content_name_ar=  $bookName ;
          $product->department_id=  $department_id ;
          $product->trad_id=  $trad_id ;
          $product->save() ;

           $this->downloadThumbnail($bookImgSrc, $product->id);
            return 'done';
    }


    public function downloadThumbnail($url,$id)
    {

$contents = file_get_contents($url);
$name = "/productes".$id.'/'.substr($url, strrpos($url, '/') + 1);
   Storage::put($name, $contents);

   $product = product::find($id);  
    product::where('id', $id)->update([
        'photo'=>$name
    ]);
     
        return 'done';
    }
    
}
