<?php
namespace App\Http\Controllers\Web;

use App\Models\Web\Currency;
use App\Models\Web\Index;
use App\Models\Web\Languages;
use App\Models\Web\News;
use App\Models\Web\Order;
use App\Models\Web\Products;
use Auth;
use Carbon;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Mail;
use Lang;
use View;
use DB;
use Cookie;
use Session;
class IndexController extends Controller
{

    public function __construct(
        Index $index,
        News $news,
        Languages $languages,
        Products $products,
        Currency $currency,
        Order $order
    ) {
        $this->index = $index;
        $this->order = $order;
        $this->news = $news;
        $this->languages = $languages;
        $this->products = $products;
        $this->currencies = $currency;
        $this->theme = new ThemeController();
    }

    public function index()
    {
        $title = array('pageTitle' => Lang::get("website.Home"));
        $final_theme = $this->theme->theme();
/*********************************************************************/
/**                   GENERAL CONTENT TO DISPLAY                    **/
/*********************************************************************/
        $result = array();
        $result['commonContent'] = $this->index->commonContent();
        $title = array('pageTitle' => Lang::get("website.Home"));
       
/********************************************************************/

/*********************************************************************/
/**                   GENERAL SETTINGS TO FETCH PRODUCTS           **/
/*******************************************************************/

        /**  SET LIMIT OF PRODUCTS  **/
        if (!empty($request->limit)) {
            $limit = $request->limit;
        } else {
            $limit = 12;
        }

        /**  MINIMUM PRICE **/
        if (!empty($request->min_price)) {
            $min_price = $request->min_price;
        } else {
            $min_price = '';
        }

        /**  MAXIMUM PRICE  **/
        if (!empty($request->max_price)) {
            $max_price = $request->max_price;
        } else {
            $max_price = '';
        }
/*************************************************************************/
        /*********************************************************************/
        /**                     FETCH NEWEST PRODUCTS                       **/
        /*********************************************************************/

        $data = array('page_number' => '0', 'type' => '', 'limit' => 10, 'min_price' => $min_price, 'max_price' => $max_price);
        $newest_products = $this->products->products($data);
        $result['products'] = $newest_products;
        /*********************************************************************/
        /**                     Compare Counts                              **/
        /*********************************************************************/

/*********************************************************************/

        /***************************************************************/
        /**   CART ARRAY RECORDS TO CHECK WETHER OR NOT DISPLAYED--   **/
        /**  --PRODUCT HAS BEEN ALREADY ADDE TO CART OR NOT           **/
/***************************************************************/
        $cart = '';
        $result['cartArray'] = $this->products->cartIdArray($cart);
/**************************************************************/

//special products
        $data = array('page_number' => '0', 'type' => 'special', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $special_products = $this->products->products($data);
        $result['special'] = $special_products;
//Flash sale

        $data = array('page_number' => '0', 'type' => 'flashsale', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $flash_sale = $this->products->products($data);
        $result['flash_sale'] = $flash_sale;
// //top seller
        $data = array('page_number' => '0', 'type' => 'topseller', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $top_seller = $this->products->products($data);
        $result['top_seller'] = $top_seller;

//most liked
        $data = array('page_number' => '0', 'type' => 'mostliked', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $most_liked = $this->products->products($data);
        $result['most_liked'] = $most_liked;

//is feature
        $data = array('page_number' => '0', 'type' => 'is_feature', 'limit' => $limit, 'min_price' => $min_price, 'max_price' => $max_price);
        $featured = $this->products->products($data);
        $result['featured'] = $featured;

        $data = array('page_number' => '0', 'type' => '', 'limit' => '15', 'is_feature' => 1);
        $news = $this->news->getAllNews($data);
        $result['news'] = $news;
//current time

        $currentDate = Carbon\Carbon::now();
        $currentDate = $currentDate->toDateTimeString();

        $slides = $this->index->slides($currentDate);
        $result['slides'] = $slides;
        //liked products
        $result['liked_products'] = $this->products->likedProducts();

        $orders = $this->order->getOrders();
        if (count($orders) > 0) {
            $allOrders = $orders;
        } else {
            $allOrders = $this->order->allOrders();
        }

        $temp_i = array();
        foreach ($allOrders as $orders_data) {
            $mostOrdered = $this->order->mostOrders($orders_data);
            foreach ($mostOrdered as $mostOrderedData) {
                $temp_i[] = $mostOrderedData->products_id;
            }
        }
        $detail = array();
        $temp_i = array_unique($temp_i);
        foreach ($temp_i as $temp_data) {
            $data = array('page_number' => '0', 'type' => 'topseller', 'products_id' => $temp_data, 'limit' => 7, 'min_price' => '', 'max_price' => '');
            $single_product = $this->products->products($data);
            if (!empty($single_product['product_data'][0])) {
                $detail[] = $single_product['product_data'][0];
            }
        }

        $result['weeklySoldProducts'] = array('success' => '1', 'product_data' => $detail, 'message' => "Returned all products.", 'total_record' => count($detail));

        return view("web.index", ['title' => $title, 'final_theme' => $final_theme])->with(['result' => $result]);
    }



    public function catgory($catgoryname){
        $result1 = array();

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
            ->where('categories.categories_slug', '=', $catgoryname)
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
            array_push($result1, $categories_data);

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

            $result1[$index++]->sub_categories = $data;

        }

        $title = array('pageTitle' => Lang::get("website.Home"));
        $final_theme = $this->theme->theme();
        /*********************************************************************/
        /**                   GENERAL CONTENT TO DISPLAY                    **/
        /*********************************************************************/
        $result = array();
        $result['commonContent'] = $this->index->commonContent();
        $title = array('pageTitle' => Lang::get("website.Home"));

        return view('web.category',['title' => $title, 'final_theme' => $final_theme])->with(['result' => $result,'resultsubcatgory' =>$result1[0],'categories'=> $categories[0] ]);;
    }
    public function maintance()
    {
        return view('errors.maintance');
    }

    public function error()
    {
        return view('errors.general_error', ['msg' => $msg]);
    }

    public function logout()
    {
        Auth::guard('customer')->logout();
        return redirect()->back();
    }
    public function test()
    {
        $productcategories = $this->products->productCategories1();
        echo print_r($productcategories);

    }

    private function setHeader($header_id)
    {

        $count = $this->order->countCompare();
        $languages = $this->languages->languages();
        $currencies = $this->currencies->getter();
        $productcategories = $this->products->productCategories();
        $title = array('pageTitle' => Lang::get("website.Home"));
        $result = array();
        $result['commonContent'] = $this->index->commonContent();

        if ($header_id == 1) {

            $header = (string) View::make('web.headers.headerOne', ['count' => $count, 'currencies' => $currencies, 'languages' => $languages, 'productcategories' => $productcategories, 'result' => $result])->render();
        } elseif ($header_id == 2) {
            $header = (string) View::make('web.headers.headerTwo');
        } elseif ($header_id == 3) {
            $header = (string) View::make('web.headers.headerThree')->render();
        } elseif ($header_id == 4) {
            $header = (string) View::make('web.headers.headerFour')->render();
        } elseif ($header_id == 5) {
            $header = (string) View::make('web.headers.headerFive')->render();
        } elseif ($header_id == 6) {
            $header = (string) View::make('web.headers.headerSix')->render();
        } elseif ($header_id == 7) {
            $header = (string) View::make('web.headers.headerSeven')->render();
        } elseif ($header_id == 8) {
            $header = (string) View::make('web.headers.headerEight')->render();
        } elseif ($header_id == 9) {
            $header = (string) View::make('web.headers.headerNine')->render();
        } else {
            $header = (string) View::make('web.headers.headerTen')->render();
        }
        return $header;
    }

    private function setBanner($banner_id)
    {
        if ($banner_id == 1) {
            $banner = (string) View::make('web.banners.banner1')->render();
        } elseif ($banner_id == 2) {
            $banner = (string) View::make('web.banners.banner2')->render();
        } elseif ($banner_id == 3) {
            $banner = (string) View::make('web.banners.banner3')->render();
        } elseif ($banner_id == 4) {
            $banner = (string) View::make('web.banners.banner4')->render();
        } elseif ($banner_id == 5) {
            $banner = (string) View::make('web.banners.banner5')->render();
        } elseif ($banner_id == 6) {
            $banner = (string) View::make('web.banners.banner6')->render();
        } elseif ($banner_id == 7) {
            $banner = (string) View::make('web.banners.banner7')->render();
        } elseif ($banner_id == 8) {
            $banner = (string) View::make('web.banners.banner8')->render();
        } elseif ($banner_id == 9) {
            $banner = (string) View::make('web.banners.banner9')->render();
        } elseif ($banner_id == 10) {
            $banner = (string) View::make('web.banners.banner10')->render();
        } elseif ($banner_id == 11) {
            $banner = (string) View::make('web.banners.banner11')->render();
        } elseif ($banner_id == 12) {
            $banner = (string) View::make('web.banners.banner12')->render();
        } elseif ($banner_id == 13) {
            $banner = (string) View::make('web.banners.banner13')->render();
        } elseif ($banner_id == 14) {
            $banner = (string) View::make('web.banners.banner14')->render();
        } elseif ($banner_id == 15) {
            $banner = (string) View::make('web.banners.banner15')->render();
        } elseif ($banner_id == 16) {
            $banner = (string) View::make('web.banners.banner16')->render();
        } elseif ($banner_id == 17) {
            $banner = (string) View::make('web.banners.banner17')->render();
        } elseif ($banner_id == 18) {
            $banner = (string) View::make('web.banners.banner18')->render();
        } elseif ($banner_id == 19) {
            $banner = (string) View::make('web.banners.banner19')->render();
        } else {
            $banner = (string) View::make('web.banners.banner20')->render();
        }
        return $banner;
    }

    private function setFooter($footer_id)
    {

        if ($footer_id == 1) {
            $footer = (string) View::make('web.footers.footer1')->render();
        } elseif ($footer_id == 2) {
            $footer = (string) View::make('web.footers.footer2')->render();
        } elseif ($footer_id == 3) {
            $footer = (string) View::make('web.footers.footer3')->render();
        } elseif ($footer_id == 4) {
            $footer = (string) View::make('web.footers.footer4')->render();
        } elseif ($footer_id == 5) {
            $footer = (string) View::make('web.footers.footer5')->render();
        } elseif ($footer_id == 6) {
            $footer = (string) View::make('web.footers.footer6')->render();
        } elseif ($footer_id == 7) {
            $footer = (string) View::make('web.footers.footer7')->render();
        } elseif ($footer_id == 8) {
            $footer = (string) View::make('web.footers.footer8')->render();
        } elseif ($footer_id == 9) {
            $footer = (string) View::make('web.footers.footer9')->render();
        } else {
            $footer = (string) View::make('web.footers.footer10')->render();
        }
        return $footer;
    }
    //page
    public function page(Request $request)
    {

        $pages = $this->order->getPages($request);
        if (count($pages) > 0) {
            $title = array('pageTitle' => $pages[0]->name);
            $final_theme = $this->theme->theme();
            $result['commonContent'] = $this->index->commonContent();
            $result['pages'] = $pages;
            return view("web.page", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);

        } else {
            return redirect()->intended('/');
        }
    }
    //myContactUs
    public function contactus(Request $request)
    {
        $title = array('pageTitle' => Lang::get("website.Contact Us"));
        $result = array();
        $final_theme = $this->theme->theme();
        $result['commonContent'] = $this->index->commonContent();

        return view("web.contact-us", ['title' => $title, 'final_theme' => $final_theme])->with('result', $result);
    }
    //processContactUs
    public function processContactUs(Request $request)
    {
        $name = $request->name;
        $email = $request->email;
        $subject = $request->subject;
        $message = $request->message;

        $result['commonContent'] = $this->index->commonContent();

        $data = array('name' => $name, 'email' => $email, 'subject' => $subject, 'message' => $message, 'adminEmail' => $result['commonContent']['setting'][3]->value);

        Mail::send('/mail/contactUs', ['data' => $data], function ($m) use ($data) {
            $m->to($data['adminEmail'])->subject(Lang::get("website.contact us title"))->getSwiftMessage()
                ->getHeaders()
                ->addTextHeader('x-mailgun-native-send', 'true');
        });

        return redirect()->back()->with('success', Lang::get("website.contact us message"));
    }

    //setcookie
    public function setcookie(Request $request)
    {
        Cookie::queue('cookies_data', 1, 4000);
        return json_encode(array('accept'=>'yes'));
    }

    //newsletter
    public function newsletter(Request $request)
    {
        if (!empty(auth()->guard('customer')->user()->id)) {
            $customers_id = auth()->guard('customer')->user()->id;
            $existUser = DB::table('customers')
                          ->leftJoin('users','customers.customers_id','=','users.id')
                          ->where('customers.fb_id', '=', $customers_id)
                          ->first();


            if($existUser){
                DB::table('customers')->where('user_id','=',$customers_id)->update([
                    'customers_newsletter' => 1,
                ]);
            }else{
                DB::table('customers')->insertGetId([
                    'user_id' => $customers_id,
                    'customers_newsletter' => 1,
                ]);
            }

        }
        session(['newsletter' => 1]);

        return 'subscribed';
    }


    public function subscribeMail(Request $request){
        $settings = $this->index->commonContent();
        if(!empty($settings['setting'][122]->value) and !empty($settings['setting'][122]->value)){
            $email = $request->email;

            $list_id = $settings['setting'][123]->value;
            $api_key = $settings['setting'][122]->value;

            $data_center = substr($api_key,strpos($api_key,'-')+1);

            $url = 'https://'. $data_center .'.api.mailchimp.com/3.0/lists/'. $list_id .'/members';

            $json = json_encode([
                'email_address' => $email,
                'status'        => 'subscribed', //pass 'subscribed' or 'pending'
            ]);

            $ch = curl_init($url);
            curl_setopt($ch, CURLOPT_USERPWD, 'user:' . $api_key);
            curl_setopt($ch, CURLOPT_HTTPHEADER, ['Content-Type: application/json']);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 10);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
            $result = curl_exec($ch);
            $status_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
            curl_close($ch);

            if($status_code==200){
                //subscribed
                print '1';
            }elseif($status_code==400){
                print '2';
            }else{
                print '0';
            }
        }else{
            print '0';
        }

    }

    public function ajaxData(Request $request)
    {
     $catgorys =  getsubcatgorynameByid($request->catgory_id);
      $brands =   getbrandsBycatgoryId($request->catgory_id);
        echo "<div class='pop-body-part-two'>
        <div class='pop-header'>
            <a href='#' class='f'>
                <span class='cat-name'>
                    الالكترونيات
                </span>
                <span>
                    <span>
                        عرض جميع الفئات
                    </span>
                <span class='cat-name'>
                        الالكترونيات
                    </span>
                <span class='select-arrow'>
                        <img src='images/right.svg' alt='arrow'
                            class='img-fluid'>
                    </span>
                </span>
            </a>
        </div>
        <div class='pop-inner'>
            <div class='row'>
                <div class='col-6'>
                    <div class='inner-content-one text-right'>
                        <ul>
                            <li>المشهورة اكتر</li>

                            $catgorys
                        </ul>
                    </div>
                </div>
                <div class='col-6'>
                    <div class='inner-content-two text-right'>
                        <ul>
                            <li>افضل الماركات</li>
                            $brands
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>";
    }





}
