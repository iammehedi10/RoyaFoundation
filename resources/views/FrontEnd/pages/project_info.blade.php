@extends('FrontEnd.master')

@section('title')
    Project
@endsection

@push('css')
    <link rel="stylesheet" type="text/css" href=" {{ asset('FrontEnd/slider/style.css') }} " />
@endpush

@section('main-content')
<section class="home-content">
    <div class="container bg_color">
        <div class="row">
            <div class="col-md-12 col-sm-12">
                <div class="pro_name">
                    <p class="text-center">{{ $project->name }}</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-2 col-sm-2">
                <div class="side_menu">
                    <ul class="animated bounceInLeft">
                        <li>
                            <a class="hvr-wobble-horizontal" href=" {{ url('/project') }} ">Projects</a>
                        </li>
                        <ul id="nested" class="side_scroll_project">
                            @foreach($projects as $data)

                                <?php
                                    $proid = base64_encode($data->id);
                                ?>
                                <li><a href=" {{ url('/project-view/'.$proid) }} "><span>&bullet;</span> {{$data->name}}</a></li>
                            @endforeach 
                        </ul>
                    </ul>
                </div>
            </div>
            <div class="col-md-8 col-sm-8 reduce_my">
                <div class="slider_content">
                    <div id="slider">
                        <div id="slides">
                            <?php
                            $i = 0;
                            ?>
                            @foreach($images as $proImage)
                            <?php
                            $i = $i+1;
                            ?>
                            <div class="slide <?php if($i==1) echo"active-slide" ?>">
                                <img src=" {{ asset('BackEnd/project_image/'.$proImage->photo) }} " class="slide-img" />
                            </div>
                            @endforeach
                        </div>
                        <img src=" {{ asset('FrontEnd/slider/right.png') }} " alt="right arrow" class="arrow right" />
                        <img src=" {{ asset('FrontEnd/slider/left.png') }} " alt="left arrow" class="arrow left" />
                        <div id="slider-nav">
                        <ul></ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-2 col-sm-2">
            <div class="video_link">
                <p class="text-center"><i class="fab fa-youtube"></i> Project Videos</p>
                @foreach($videos as $video)
                    <iframe src="{{$video->url}}"></iframe>
                    <a class="hvr-wobble-horizontal vdo" data-url="{{$video->url}}" href="#" data-toggle="modal" data-target="#video">Play <i class="fas fa-play"></i></a>
                @endforeach
            </div>
        </div>
        <div id="video" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="modal_video">
                            <iframe id="vdo_url" src=""></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
<section class="home-content">
<div class="container bg_color">
    <div class="row">
        <div class="col-md-12 col-sm-12">
            <div class="choose-main">
                <h4 class="text-center">Project Description</h4>
                <p>{!! $project->description !!}</p>
            </div>
        </div>
    </div>
</div>
</section>
@endsection

@push('script')
    <script type="text/javascript" src=" {{ asset('FrontEnd/slider/index.js') }} "></script>
    <script type="text/javascript">
        $(document).on("click", ".vdo", function () {
        var myUrl = $(this).data('url');
        var iframe = document.getElementById('vdo_url');
        iframe.src = myUrl;
        });
    </script>
@endpush