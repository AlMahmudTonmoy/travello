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
                    <h4> Edit Post </h4>
                </div>
                <div class=" card-body ">

                    <form class="" action="{!! route('edit_post_post') !!}" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row p-3 d-flex justify-content-between">
                            <div class="col-md-6">
                                <label class="font-weight-bold">|-->Blog post name</label>
                                <input type="hidden" name="id" value="{{ $post->id }}">
                                <input type="text" class="form-control" name="post_name" value='{{ $post->post_name }}'>

                                @error ('post_name')
                                <div class="text-danger">***{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <label class="font-weight-bold">|-->Tags</label>
                                <select name="tags[]" multiple="multiple" class="">

                                    @foreach ($tags as $tag)
                                    <option value="{{ $tag->id }}" {{ in_array($tag->id , $tag_array ) ? 'selected' : '' }}>{{ $tag->tag }}</option>
                                    @endforeach
                                </select>
                                @error ('tags')
                                <div class="text-danger">***{{ $message }}</div>
                                @enderror
                            </div>

                        </div>

                        <div class="form-group">
                            <textarea name="head" rows="15" class="form-control"> {!! $post->head !!}  </textarea>
                        </div>
                        <div class="form-group">
                            <label for="" class="font-weight-bold font-italic">|--> Current Image</label> <br>
                            <img src="{!! asset('uploads/blog_images') !!}/{{ $post->head_img }}" alt="No Current Image Available" class="img-fluid " width="800" height="533">
                        </div>
                        <div class="form-group">
                            <input type="file" class="form-control" name="head_img" onchange="readURL(this);">
                            <img hidden id="tenant_photo_viewer" class="img-fluid form-control" src="#" alt="your image" />
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
                            <textarea name="tail" rows="15" class="form-control"> {!! $post->tail!!} </textarea>
                        </div>

                        <div class="form-group">
                            <label for="" class="font-weight-bold font-italic">|--> Current Image</label> <br>
                            <img src="{!! asset('uploads/blog_images') !!}/{{ $post->tail_img }}" alt="No Current Image Available" class="img-fluid " width="800" height="533">
                        </div>

                        <div class="form-group">
                            <input type="file" class="form-control" accept="image/*" name="tail_img" onchange="readURL2(this);">

                            <img hidden id="tenant_photo_viewer2" class="img-fluid form-control" src="#" alt="your image" />
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
                            {{-- sending old image referece  --}}
                            <input type="hidden" name="old_head_img" value="{{ $post->head_img }}">
                            <input type="hidden" name="old_tail_img" value="{{ $post->tail_img }}">
                            {{-- sending old image referece --}}
                            <input type="submit" name="" class="btn btn-success " value="Save">

                        </div>
                    </form>

                </div>
            </div>

        </div>

    </div>

</div>
@endsection

@section('js')

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