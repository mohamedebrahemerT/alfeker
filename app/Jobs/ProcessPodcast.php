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
    public $i;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($i)
    {
        //
        $this->i = $i;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        //
         $books= [];

        $crawler = Goutte::request('GET', "https://alfeker.net/library.php?page=".$this->i."");
    $crawler->filter('.box-excerpt')->each(function ($node ) use ($books) 
    { 
          $baseurl="https://alfeker.net/";
          //bookName
          $bookName = $node->filter('.box-excerpt > h2 > a')->text();
         //bookAuthorName
          $bookAuthorName = $node->filter('.box-excerpt > nav  > ul > li:first-child  > span')->text();
          //bookDepartmentName
          $bookDepartmentName = $node->filter('.box-excerpt > nav  > ul > li:last-child  > span')->text();
          //bookUrl
          $bookUrl = $node->filter('.box-excerpt > h2 > a')->getUri();
          //bookImgSrc
           $bookImgSrc = $baseurl.  $node->filter('.box-excerpt > img')->attr('src'); 
           //bookpreviewUrl
         $bookpreviewUrl =$baseurl. $node->filter('.box-excerpt > h2 > a')->attr('href'); 

         $this->createdata($bookDepartmentName,$bookAuthorName,$bookName,$bookImgSrc);
    
                    // dump($bookName);

      });

        
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
