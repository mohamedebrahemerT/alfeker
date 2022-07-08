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
use App\filess;

class ProcessPodcast implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $bookDepartmentName;
    public $bookAuthorName;
    public $bookName;
    public $bookImgSrc;
    public $bookpreviewUrl;


    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($bookDepartmentName,$bookAuthorName,$bookName,$bookImgSrc,$bigbookImgSrc,$bookpreviewUrl)
    {
        //
        $this->bookDepartmentName = $bookDepartmentName;
        $this->bookAuthorName = $bookAuthorName;
        $this->bookName = $bookName;
        $this->bookImgSrc = $bookImgSrc;
        $this->bookpreviewUrl = $bookpreviewUrl;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
       $this->createdata($this->bookDepartmentName, $this->bookAuthorName, $this->bookName, $this->bookImgSrc,$this->bookpreviewUrl);
    }

       public function createdata($bookDepartmentName,$bookAuthorName,$bookName,$bookpreviewUrl)
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

     session()->put('book_id',$product->id);


           $this->downloadThumbnail($bookImgSrc, $product->id);

/*
         $bookdetails = Goutte::request('GET',   $bookpreviewUrl);
         $bigbookImgSrc = $baseurl. $bookdetails->filter('.img > img')->attr('src');
          $this->downloadThumbnail2($bigbookImgSrc, $product->id);

             $bookdetails->filter('.statustime')->each(function ($zzz)  
           { 

            try {
                $pdf =$zzz->filter('.statustime > nav > ul > li > span > a')->attr('href');

                 if (starts_with($pdf, 'http')) 
                 {
                     $id=session('book_id');
                $add=filess::create([
                'path'        =>  $pdf  ,
                'full_file'   => $pdf,
                'relation_id' => $id,
                'file_type' =>'productes'

               ]); 
                 }

            } catch (\Exception $e) 
            {   
                

            }

     
    
                  
           }); 
             */

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

     public function downloadThumbnail2($url,$id)
    {

$contents = file_get_contents($url);
$name = "/productes".$id.'/'.'new'.substr($url, strrpos($url, '/') + 1);
   Storage::put($name, $contents);

   $product = product::find($id);  
    product::where('id', $id)->update([
        'photo2'=>$name
    ]);
     
        return 'done';
    }

    public function uploadpdf($pdf,$id)
    {
           $add=filess::create([
                'path'        =>  $pdf  ,
                'full_file'   => $pdf,
                'relation_id' => $id,

               ]); 

        return 'done';

    }
    
}
