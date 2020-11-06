@extends('BackEnd.master')

@section('title')
	Projects
@endsection

@section('insertproject')
    active-link
@endsection

@section('for_project')
    active
@endsection

@section('main_content')
			<div id="page-content-wrapper">
                <div class="page-content">
                    <section class="content-header">
                        <div class="header-icon">
                            <i class="material-icons">extension</i>
                        </div>
                        <div class="header-title">
                            <h1>Project / Update</h1>
                            <p class="text-success"> <b> {{ Session::get('message') }} </b> </p>
                        </div>
                    </section>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="card">
                                    <div class="card-content">
                                        <form class="form-horizontal" method="POST" action=" {{ url('/update-project') }} ">

                                            @csrf

                                            <input type="hidden" name="proid" value=" {{ $projects->id }} ">

                                            <fieldset>
                                                <div class="form-group">
                                                    <label class="col-md-4 control-label">Project Name:</label>
                                                    <div class="col-md-6">
                                                        <div class="input-field">
                                                            <input name="name" type="text" value=" {{ $projects->name }} " required>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-md-4 control-label">Date:</label>
                                                    <div class="col-md-6">
                                                        <div class="input-field">
                                                            <input name="date" type="date" value="{{$projects->date}}" required>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-md-4 control-label">Project Description:</label>
                                                    <div class="col-md-6">
                                                        <div class="input-field">
                                                            <textarea class="tinymce" name="description">{!! $projects->description !!}</textarea>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-md-4 control-label"></label>
                                                    <div class="col-md-4">
                                                        <input type="submit" class="btn btn-my" value="Submit">
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
@endsection

@push('script')
    <script src=" {{ asset('tinymce/tinymce.min.js')  }}"></script>
    <script src=" {{ asset('tinymce/my.js')  }}"></script>
@endpush