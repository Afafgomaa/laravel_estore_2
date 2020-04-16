<?php
                 function getCountProductInManfactureINShop($brandId){
                  $count = DB::table('products')->where('manufacturers_id',$brandId)->count();
                 return $count;
                 }
                 
                 
                 ?>