@extends('layouts.app')
@section('css')



<link href="{!! asset('css/multiselect.css') !!}" rel="stylesheet" type="text/css">
@endsection

@section('content')
<div class="container">
    <div class="row">
        <div class="col">
            <div class=" card  mb-3 ">
                <div class=" card-header p-2  font-italic ">
                    <h4> Add Blog </h4>
                </div>
                <div class=" card-body ">

                    <form class="" action="{!! route('add_post') !!}" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row p-3 d-flex justify-content-between">
                            <div class="col-md-6">
                                <label class="font-weight-bold">|-->Blog post name</label>

                                <input type="text" class="form-control" name="post_name" value='val'>

                                @error ('post_name')
                                <div class="text-danger">***{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <label class="font-weight-bold">|-->Tags</label>
                                <select name="tags[]" multiple="multiple" class="">
                                    <option value="1">Alaska</option>
                                    <option value="2">Arizona</option>
                                    <option value="3">Arkansas</option>
                                    <option value="4">California</option>
                                    <option value="5">Colorado</option>
                                    <option value="6">Connecticut</option>
                                    <option value="7">Delaware</option>
                                    <option value="8">Florida</option>
                                    <option value="9">Georgia</option>
                                    <option value="10">Hawaii</option>
                                    <option value="11">Idaho</option>
                                </select>
                                @error ('tags')
                                <div class="text-danger">***{{ $message }}</div>
                                @enderror
                            </div>

                        </div>

                        <div class="form-group">
                            <textarea name="head" class="form-control">  </textarea>
                        </div>
                        <div class="form-group">
                            <input type="file" class="form-control" name="head_img" onchange="readURL(this);">
                            <img hidden id="tenant_photo_viewer" class="img-fluid" src="#" alt="your image" />
                            <script>
                                function readURL(input) {
                                    if (input.files && input.files[0]) {
                                        var reader = new FileReader();
                                        reader.onload = function(e) {
                                            $('#tenant_photo_viewer').attr('src', e.target.result).width(800).height(533);
                                        };
                                        $('#tenant_photo_viewer').removeAttr("hidden");
                                        reader.readAsDataURL(input.files[0]);
                                    }
                                }
                            </script>
                        </div>
                        <div class="form-group">
                            <textarea name="tail" class="form-control">  </textarea>
                        </div>

                        <div class="form-group">
                            <input type="file" class="form-control" accept="image/*" name="tail_img" onchange="readURL2(this);">

                            <img hidden id="tenant_photo_viewer2" class="img-fluid" src="#" alt="your image" />
                            <script>
                                function readURL2(input) {
                                    if (input.files && input.files[0]) {
                                        var reader = new FileReader();
                                        reader.onload = function(e) {
                                            $('#tenant_photo_viewer2').attr('src', e.target.result).width(800).height(533);
                                        };
                                        $('#tenant_photo_viewer2').removeAttr("hidden");
                                        reader.readAsDataURL(input.files[0]);
                                    }
                                }
                            </script>
                        </div>

                        <div class="form-group text-right">

                            <input type="submit" name="" class="btn btn-success " value="Add">

                        </div>
                    </form>

                </div>
            </div>

        </div>

    </div>

</div>
@endsection

@section('javascript')

{{-- for blog edit api connecntion --}}

<script src="https://cdn.tiny.cloud/1/h4efslnnmjjd3jl8l4jnfm3k80d2yagce4iscoph730xpb0e/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
    tinymce.init({
        selector: 'textarea'
    });
</script>

{{-- for multi select portion --}}


<script src="{!! asset('js/multiselect.js') !!}"></script>
<script>
    var x = (window.matchMedia("(max-width: 1000px)").matches) ? (window.matchMedia("(max-width: 400px)").matches) ? 1 : 2 : 3
    $('select[multiple]').multiselect({
        columns: x,
        placeholder: 'Select options'
    });
</script>
@endsection