<?php

namespace App\Http\Controllers\AdminControllers;

use App\Http\Controllers\AdminControllers\SiteSettingController;
use App\Http\Controllers\Controller;

use App\Models\Core\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Lang;
use Illuminate\Support\Facades\Validator;


class BarcodeController extends Controller
{
 
      public function __construct(Setting $setting)
    {
       
        $this->myVarSetting = new SiteSettingController($setting);
        $this->Setting = $setting;

    }
  

  public function display(){
    $title = array('pageTitle' => Lang::get("labels.Currency"));
    
       $result['currency'] = $this->myVarSetting->getSetting();
        $result['commonContent'] = $this->Setting->commonContent();
    return view("admin.barcode.index",$title)->with('result', $result);
  }


}
