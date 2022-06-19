<?php



namespace App\DataTables;



use App\tbl_employee;

use Yajra\DataTables\Services\DataTable;



class tbl_employeeDatatable extends DataTable

{

   /**

    * Build DataTable class.

    *

    * @param mixed $query Results from query() method.

    * @return \Yajra\DataTables\DataTableAbstract

    */

   public function dataTable($query)

   {

      return datatables($query)

         ->addColumn('checkbox', 'Admin.tbl_employee.btn.checkbox')

         ->addColumn('edit', 'Admin.tbl_employee.btn.edit')

         ->addColumn('delete', 'Admin.tbl_employee.btn.delete')

         ->addColumn('showSalry', 'Admin.tbl_employee.btn.showSalry')

         ->rawColumns([

            'edit',

            'delete',

            'checkbox',

            'showSalry'

         ]);

   }





   /**

    * Get query source of dataTable.

    *

    * @param \App\User $model

    * @return \Illuminate\Database\Eloquent\Builder

    */

   public function query()

   {

      return tbl_employee::query();

   }



   /**

    * Optional method if you want to use html builder.

    *

    * @return \Yajra\DataTables\Html\Builder

    */

     public function html()
    {
        return $this->builder()
                    ->columns($this->getColumns())
                    ->minifiedAjax()
                 // ->addAction(['width' => '80px'])
                    ->parameters( [

                         'dom'=>'Bfrtip',
        'lengthMenu'=>[[10,25,50,100],[5,20,30,40,'all']],
        'buttons'=> [

        ['text'=>'<i class="fa fa-plus"></i>'.trans('admin.create'),'className'=>'btn Orange' ,'action'=>"function(){

            window.location.href='".\URL::current()."/create'
        }"],

      ['extend'=>'copy','className'=>'btn black' , 
         'text'=> '<i class="fa fa-copy"></i>  '.trans('admin.copy')],

      ['extend'=>'csv','className'=>'btn Orange',
         'text'=>'<i class="fa fa-edit"></i>'. trans('admin.csv')],  

      ['extend'=>'excel','className'=>'btn black',
         'text'=>'<i class="fa fa-file"></i>'. trans('admin.excel')],

      ['extend'=>'pdf','className'=>'btn Orange',
          'text'=>'<i class="fa fa-file"></i>'. trans('admin.pdf')],

    ['extend'=>'print','className'=>'btn black',
          'text'=>'<i class="fa fa-print"></i>'.trans('admin.print')],

    ['extend'=>'reload','className'=>'btn Orange',
               'text'=>'<i class="fa fa-refresh"></i>'. trans('admin.reload')],

    ['text'=>'','className'=>'btn black dellall',
          'text'=>'<i class="fa fa-trash"></i>'. trans('admin.deletall')],
         
        
                      
                
                    
    ],  
 
                        'initComplete' => "function () {
            this.api().columns([2,3,4]).every(function () {
                var column = this;
                var input = document.createElement(\"input\");
                $(input).appendTo($(column.footer()).empty())
                .on('keyup', function () {
                    column.search($(this).val(), false, false, true).draw();
                });
            });
        }",
          'language' => [  
            "sProcessing"     =>trans('admin.Processing')    ,
            "sZeroRecords" =>trans('admin.sZeroRecords')    ,
            "sEmptyTable"    =>trans('admin.sEmptyTable')    ,
            "sInfo"          =>trans('admin.sInfo')    ,
            "sLengthMenu"     =>trans('admin.sLengthMenu')    ,
            "sZeroRecords"    =>trans('admin.sZeroRecords')   ,
            "sEmptyTable"     =>trans('admin.sEmptyTable')    ,
            "sInfo"           =>trans('admin.sEmptyTable')    ,
            "sInfoEmpty"      =>trans('admin.sInfo')          ,
            "sInfoFiltered"   =>trans('admin.sInfoFiltered')     ,           
            "sSearch"         =>trans('admin.sInfoPostFix')   ,
            "sUrl"            =>trans('admin.sSearch')        ,
            "sInfoThousands"  =>trans('admin.sInfoThousands') ,
            "sLoadingRecords" =>trans('admin.sLoadingRecords'),
              "oPaginate"=> [
        "sFirst" =>trans('admin.sFirst') ,
        "sPrevious" =>trans('admin.sPrevious') ,
        "sNext" =>trans('admin.sNext') ,
        "sLast" =>trans('admin.sLast') ,
    ],
            
            "oAria"           =>[
            "sSortAscending"  =>trans('admin.sSortAscending') ,
            "sSortDescending" =>trans('admin.sSortDescending'), 
           ]
             

           ]

                    ]

                  


          
                    );
    }



   /**

    * Get columns.

    *

    * @return array

    */

   protected function getColumns()

   {

       















      return [

         [

            'name'       => 'checkbox',

            'data'       => 'checkbox',

               'title'=>'<input type="checkbox" onclick="checkall()" class="checck_all">  ',

            

            'exportable' => false,

            'printable'  => false,

            'orderable'  => false,

            'searchable' => false,

         ], [

            'name'  => 'id',

            'data'  => 'id',

            'title' => '#',

         ], [

            'name'  => 'Name',

            'data'  => 'Name',

            'title' => trans('admin.Name'),

         ], [

            'name'  => 'NetSalarry',

            'data'  => 'NetSalarry',

            'title' => trans('admin.NetSalarry'),

         ] ,

          [

            'name'  => 'DateOfatten',

            'data'  => 'DateOfatten',

            'title' => trans('admin.DateOfatten'),

         ], [

            'name'  => 'Status',

            'data'  => 'Status',

            'title' => trans('admin.Status'),

         ],

         [

            'name'  => 'Day',

            'data'  => 'Day',

            'title' => trans('admin.Day'),

         ],



          [

            'name'       => 'edit',

            'data'       => 'edit',

            'title'      => trans('admin.edit'),

            'exportable' => false,

            'printable'  => false,

            'orderable'  => false,

            'searchable' => false,

         ], [

            'name'       => 'delete',

            'data'       => 'delete',

            'title'      => trans('admin.delete'),

            'exportable' => false,

            'printable'  => false,

            'orderable'  => false,

            'searchable' => false,

         ],

         [

            'name'       => 'showSalry',

            'data'       => 'showSalry',

            'title'      => trans('admin.showSalry'),

            'exportable' => false,

            'printable'  => false,

            'orderable'  => false,

            'searchable' => false,

         ],



      ];

   }



   /**

    * Get filename for export.

    *

    * @return string

    */

   protected function filename()

   {

      return 'tbl_employee' . date('YmdHis');

   }

}

