@extends('admin.layout')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> HomeImage <small>HomeImage...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month')}}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class="active">HomeImage</li>
            </ol>
        </section>

        {!! Form::open(array('url' =>'admin/homeimage/insert', 'method'=>'post', 'class' => 'form-horizontal ', 'enctype'=>'multipart/form-data')) !!}
        
                                        <div class="form-group" id="imageselected">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Image') }}<span style="color:red;">*</span></label>
                                            <div class="col-sm-10 col-md-4">
                                                {{--{!! Form::file('newImage', array('id'=>'newImage')) !!}--}}
                                                <!-- Modal -->
                                                <div class="modal fade" id="Modalmanufactured" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" id="closemodal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                                <h3 class="modal-title text-primary" id="myModalLabel">{{ trans('labels.Choose Image') }} </h3>
                                                            </div>
                                                            <div class="modal-body manufacturer-image-embed">
                                                                @if(isset($allimage))
                                                                <select class="image-picker show-html " name="image_id" id="select_img">
                                                                    <option value=""></option>
                                                                    @foreach($allimage as $key=>$image)
                                                                    <option data-img-src="{{asset($image->path)}}" class="imagedetail" data-img-alt="{{$key}}" value="{{$image->id}}"> {{$image->id}} </option>
                                                                    @endforeach
                                                                </select>
                                                                @endif
                                                            </div>
                                                            <div class="modal-footer">
                                                               <a href="{{url('admin/media/add')}}" target="_blank" class="btn btn-primary pull-left" >{{ trans('labels.Add Image') }}</a>
                                                               <button type="button" class="btn btn-default refresh-image"><i class="fa fa-refresh"></i></button>
                                                               <button type="button" class="btn btn-primary" id="selected" data-dismiss="modal">{{ trans('labels.Done') }}</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="imageselected">
                                                    {!! Form::button(trans('labels.Add Image'), array('id'=>'newImage','class'=>"btn btn-primary field-validate", 'data-toggle'=>"modal", 'data-target'=>"#Modalmanufactured" )) !!}
                                                    <br>
                                                    <div id="selectedthumbnail" class="selectedthumbnail col-md-5"> </div>
                                                    <div class="closimage">
                                                        <button type="button" class="close pull-left image-close " id="image-close"
                                                          style="display: none; position: absolute;left: 105px; top: 54px; background-color: black; color: white; opacity: 2.2; " aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.CategoryImageText') }}</span>
                                            </div>
                                     </div>
        <img src="{{asset('/images/media/2019/10/'.$bannerup->name)}}"
             style="    width: 120px;
    margin-left: 25%;">
        
                    
        
        
        
                               <div class="form-group" id="imageIcone">
                                            <label for="name" class="col-sm-2 col-md-3 control-label">{{ trans('labels.Icon') }}<span style="color:red;">*</span></label>
                                            <div class="col-sm-10 col-md-4">
                                                
                                                <div class="modal fade" id="ModalmanufacturedICone" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" id="closemodal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                                                <h3 class="modal-title text-primary" id="myModalLabel">{{ trans('labels.Choose Image') }} </h3>
                                                              </div>
                                                            <div class="modal-body manufacturer-image-embed">
                                                                @if(isset($allimage))
                                                                <select class="image-picker show-html " name="image_icone" id="select_img">
                                                                    <option value=""></option>
                                                                    @foreach($allimage as $key=>$image)
                                                                      <option data-img-src="{{asset($image->path)}}" class="imagedetail" data-img-alt="{{$key}}" value="{{$image->path}}"> {{$image->id}} </option>
                                                                    @endforeach
                                                                </select>
                                                                @endif
                                                            </div>
                                                            <div class="modal-footer">
                                                              <a href="{{url('admin/media/add')}}" target="_blank" class="btn btn-primary pull-left" >{{ trans('labels.Add Image') }}</a>
                                                              <button type="button" class="btn btn-default refresh-image"><i class="fa fa-refresh"></i></button>
                                                              <button type="button" class="btn btn-primary" id="selectedICONE" data-dismiss="modal">{{ trans('labels.Done') }}</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div id="imageselected">
                                                  {!! Form::button(trans('labels.Add Icon'), array('id'=>'newIcon','class'=>"btn btn-primary field-validate", 'data-toggle'=>"modal", 'data-target'=>"#ModalmanufacturedICone" )) !!}
                                                  <br>
                                                  <div id="selectedthumbnailIcon" class="selectedthumbnail col-md-5"> </div>
                                                  <div class="closimage">
                                                      <button type="button" class="close pull-left image-close " id="image-Icone"
                                                        style="display: none; position: absolute;left: 105px; top: 54px; background-color: black; color: white; opacity: 2.2; " aria-label="Close">
                                                          <span aria-hidden="true">&times;</span>
                                                      </button>
                                                  </div>
                                                </div>
<!--                                                <span class="help-block" style="font-weight: normal;font-size: 11px;margin-bottom: 0;">{{ trans('labels.CategoryIconText') }}</span>-->

                                            </div>
                                        </div>
        
        
        
         <img src="{{asset('/'.$homeimage->bannerdown)}}"
             style="    width: 120px;
    margin-left: 25%;">
  <div class=" text-center">
                                            <button type="submit" class="btn btn-primary">{{ trans('labels.Submit') }}</button>
                                            <a href="{{ URL::to('admin/categories/display')}}" type="button" class="btn btn-default">{{ trans('labels.back') }}</a>
                                        </div>
                                        <!-- /.box-footer -->
                                        {!! Form::close() !!}
           <!-- /.box-body -->
                                      
        
        <!-- /.content -->
    </div>
@endsection
