<?php

function getCountProductInManfactureINShop($brandId){
$count = DB::table('products')->where('manufacturers_id',$brandId)->count();
return $count;
}



function getSixBrandBycategoryId($catgoryId){

 $brandImage = DB::table('manufacturers')->where('category_id',$catgoryId)->select('manufacturer_image','manufacturers_id')->take(6)->get();
 $collect = '';
foreach($brandImage as $Image){
    $collect .="<div class='col-4 px-1'><div class='brand-box my-1 border'><a href='/shop?$Image->manufacturers_id'><img src=$Image->manufacturer_image  class='img-fluid'></a></div>
    </div>";
    return $collect ;
}
}
function getbrandsBycatgoryId($id){
$brands =  DB::table('manufacturers')->where('category_id',$id)->select('manufacturer_name')->get();
  $collect = '';
  foreach($brands as $brand){
      $collect .="<li><a href='/shop?$brand->manufacturer_name'></a></li>";
      
  }
  return $collect ;
}




                 
