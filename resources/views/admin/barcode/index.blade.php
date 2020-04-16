@extends('admin.layout')
@section('content')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> Barcode <small>Barcode...</small> </h1>
            <ol class="breadcrumb">
                <li><a href="{{ URL::to('admin/dashboard/this_month')}}"><i class="fa fa-dashboard"></i> {{ trans('labels.breadcrumb_dashboard') }}</a></li>
                <li class="active">Barcode</li>
            </ol>
        </section>
        <div style="margin-top:10%;text-align: center;">
<?php
        
    echo    QrCode::size(300)->generate(auth()->user()->id);
        ?>
            </div>
        <!-- /.content -->
    </div>
@endsection
