@extends('web.layout')
@section('content')
    <h1>{{$categories->name}}</h1>
<ul>
@foreach($resultsubcatgory->sub_categories as $cat)


<li>{{$cat->sub_name}}</li>

@endforeach
</ul>

@endsection
