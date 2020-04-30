<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\AdminControllers\SiteSettingController;
use App\Http\Controllers\Controller;
use App\Models\Core\Images;
use App\Models\Core\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\Validator;


class HomeImageController extends Controller
{
 
      public function __construct(Setting $setting)
    {
       
        $this->myVarSetting = new SiteSettingController($setting);
        $this->Setting = $setting;

    }
  

  public function display(){
    $title = array('pageTitle' => Lang::get("labels.Currency"));
    $images = new Images;
      $homeimage = DB::table('homeimage')->find(1);
      
      $bannerup = DB::table('images')->find($homeimage->bannerup);
      
    $allimage = $images->getimages();
      
       $result['currency'] = $this->myVarSetting->getSetting();
        $result['commonContent'] = $this->Setting->commonContent();
    return view("admin.homeimage.add",$title)->with('result', $result)->with('allimage', $allimage)->with('homeimage', $homeimage)->with('bannerup', $bannerup);
  }
    
    
    
  public function insert(Request $request){
      
      
      $uploadImage = $request->image_id;
    $uploadIcon  = $request->image_icone;
      if($uploadImage==0){
       
           
           
       

      $homeimage = DB::table('homeimage')
       ->where('id', 1)
                ->update([
                          	'bannerdown' => $request->image_icone
                         
                         ]);
          
      
      }
      elseif($uploadIcon==0){
          
          $homeimage = DB::table('homeimage')
       ->where('id', 1)
                ->update(['bannerup' => $request->image_id
                          	
                         
                         ]);
      }
    
      else{
          
          $homeimage = DB::table('homeimage')
       ->where('id', 1)
                ->update(['bannerup' => $request->image_id,
                          	'bannerdown' => $request->image_icone
                         
                         ]);
        
      }
      
      return redirect()->back();


        
  
  }


}