<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class getpdf implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;
    public $filess;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($filess)
    {
        //
        $this->filess = $filess;

    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
         $this->uploadpdf($this->filess);
    }
     
      public function uploadpdf($filess)
      {
    $url=$filess->full_file;
   $id=$filess->relation_id ;
   $contents = file_get_contents($url);
   $name = "/productes".$id.'/'.'new'.substr($url, strrpos($url, '/') + 1);
   Storage::put($name, $contents);
   $filess->path=$name;
   $filess->save();
   return 'done';
      }


}
