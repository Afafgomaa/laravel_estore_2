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

function categories(int $number = NULL)
{

    $result = array();

    $categories = DB::table('categories')
        ->LeftJoin('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
        ->leftJoin('image_categories', 'categories.categories_image', '=', 'image_categories.image_id')
        ->select('categories.categories_id as id',
            'categories.categories_image as image',
            'categories.categories_icon as icon',
            'categories.sort_order as order',
            'categories.categories_slug as slug',
            'categories.parent_id',
            'categories_description.categories_name as name',
            'image_categories.path as path'
        )
        ->where('categories_description.language_id', '=', Session::get('language_id'))
        ->where('parent_id', '0')
        ->groupBy('categories.categories_id')
        ->take($number)
        ->get();

    $index = 0;
    foreach ($categories as $categories_data) {

        //products_image
        $default_images = DB::table('image_categories')
            ->where('image_id', '=', $categories_data->image)
            ->where('image_type', 'MEDIUM')
            ->first();

        if ($default_images) {
            $categories_data->path = $default_images->path;
        } else {
            $default_images = DB::table('image_categories')
                ->where('image_id', '=', $categories_data->image)
                ->where('image_type', 'MEDIUM')
                ->first();

            if ($default_images) {
                $categories_data->path = $default_images->path;
            } else {
                $default_images = DB::table('image_categories')
                    ->where('image_id', '=', $categories_data->image)
                    ->where('image_type', 'ACTUAL')
                    ->first();
                if ($default_images) {
                    $categories_data->path = $default_images->path;
                } else {
                    $categories_data->path = '';
                }
            }

        }

        $categories_id = $categories_data->id;

        $products = DB::table('categories')
            ->LeftJoin('categories as sub_categories', 'sub_categories.parent_id', '=', 'categories.categories_id')
            ->LeftJoin('products_to_categories', 'products_to_categories.categories_id', '=', 'sub_categories.categories_id')
            ->LeftJoin('products', 'products.products_id', '=', 'products_to_categories.products_id')
            ->select('categories.categories_id', DB::raw('COUNT(DISTINCT products.products_id) as total_products'))
            ->where('categories.categories_id', '=', $categories_id)
            ->get();

        $categories_data->total_products = $products[0]->total_products;
        array_push($result, $categories_data);

        $sub_categories = DB::table('categories')
            ->LeftJoin('categories_description', 'categories_description.categories_id', '=', 'categories.categories_id')
            ->select('categories.categories_id as sub_id',
                'categories.categories_image as sub_image',
                'categories.categories_icon as sub_icon',
                'categories.sort_order as sub_order',
                'categories.categories_slug as sub_slug',
                'categories.parent_id',
                'categories_description.categories_name as sub_name'
            )
            ->where('categories_description.language_id', '=', Session::get('language_id'))
            ->where('parent_id', $categories_id)
            ->get();

        $data = array();
        $index2 = 0;
        foreach ($sub_categories as $sub_categories_data) {
            $sub_categories_id = $sub_categories_data->sub_id;

            $individual_products = DB::table('products_to_categories')
                ->LeftJoin('products', 'products.products_id', '=', 'products_to_categories.products_id')
                ->LeftJoin('manufacturers','manufacturers.manufacturers_id','products.manufacturers_id')
                ->select('products_to_categories.categories_id', DB::raw('COUNT(DISTINCT products.products_id) as total_products')
                    , 'manufacturers.manufacturers_id as brandId','manufacturers.manufacturer_image as brandImage')
                ->where('products_to_categories.categories_id', '=', $sub_categories_id)
                ->get();
            $sub_categories_data->total_products = $individual_products[0]->total_products;
            $sub_categories_data->brand = $individual_products[0]->brandId;
            $sub_categories_data->brandImage = $individual_products[0]->brandImage;
            $data[$index2++] = $sub_categories_data;

        }

        $result[$index++]->sub_categories = $data;

    }

    return ($result);


}




