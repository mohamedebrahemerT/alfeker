<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|

*/

  Route::get('/','admins@view_login');
  
 
 
  
  Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    $exitCode = Artisan::call('config:clear');
    return 'Application cache cleared';
});

    Route::get('/queue-work', function() {
   $exitCode = Artisan::call('queue:work');
    return 'queue-worked';
});


 

Route::get('/Storage-Linked', function () {
    \Illuminate\Support\Facades\Artisan::call('storage:link');
    return 'Storage Linked';
});


 




  




 