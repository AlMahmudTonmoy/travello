@extends('layouts.app')
@section('css')

@endsection

@section('content')
<div class="container mb-3 border-dark">
    <div class="card border-dark " style="">
        <div class="card-header ">
            <h2 class="text-center font-italic">Cureent Blog</h2>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8 ftco-animate">


            {!! $post->head !!}
            <p>
                <img src="{!! asset('uploads/blog_images') !!}/{{ $post->head_img }}" alt="" class="img-fluid">
            </p>
            {!! $post->tail !!}
            <p>
                <img src="{!! asset('uploads/blog_images') !!}/{{ $post->tail_img }}" alt="" class="img-fluid">
            </p>
            <div class="d-flex justify-content-end m-3">
                <form class="m-1" action="{!! route('edit_post') !!}" method="post">
                    @csrf
                    <input type="hidden" name="id" value="{{ $post->id }}">
                    <input type="submit" class="btn-sm btn-primary" value="Edit Main Post">
                </form>
            </div>

            @foreach ($post->sections as $section)

            {!! $section->head !!}
            @if ($section->head_img)
            <p>
                <img src="{!! asset('uploads/blog_images') !!}/{{ $section->head_img }}" alt="" class="img-fluid">
            </p>
            @endif
            {!! $section->tail !!}

            @if ($section->tail_img)
            <p>
                <img src="{!! asset('uploads/blog_images') !!}/{{ $section->tail_img }}" alt="" class="img-fluid">
            </p>
            @endif
            <div class="d-flex justify-content-end m-3">
                <form class="m-1" action="{!! route('edit_section') !!}" method="post">
                    @csrf
                    <input type="hidden" name="id" value="{{ $section->id }}">
                    <input type="submit" class="btn-sm btn-primary" value="Edit">
                </form>
                <form class="m-1" action="{!! route('delete_section') !!}" method="post">
                    @csrf
                    <input type="hidden" name="section_id" value="{{ $section->id }}">
                    <input type="hidden" name="post_id" value="{{ $post->id }}">
                    <input type="submit" class="btn-sm btn-danger" value="Delete">
                </form>
            </div>

            @endforeach
        </div>
    </div>
</div>


<div class="container mt-5">
    <div class="row">
        <div class="col">
            <div class=" card  mb-3 ">
                <div class=" card-header p-2  font-italic ">
                    <h4> Add An Another Section To This Post </h4>
                </div>
                <div class=" card-body ">

                    <form class="" action="{!! route('add_section_post') !!}" enctype="multipart/form-data" method="post">
                        @csrf
                        <div class="row p-3 d-flex justify-content-between">
                            <div class="col-md-6">
                                <label class="font-weight-bold">|-->Blog post name</label>

                                <input type="text" class="form-control" disabled value='{{ $post->post_name }} - Section'>
                                <input type="hidden" class="form-control" name="post_name" value='{{ $post->post_name }} - Section'>

                                <input type="hidden" name="post_id" value="{{ $post->id }}">

                                @error ('post_name')
                                <div class="text-danger">***{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="col-md-6">
                                <label class="font-weight-bold">|-->Tags</label>
                                <input type="text" name='tags' class="form-control" disabled value="{{ implode(" , ",$tag_array) }}">
                                @error ('tags')
                                <div class="text-danger">***{{ $message }}</div>
                                @enderror
                            </div>

                        </div>

                        <div class="form-group">
                            <textarea name="head" class="form-control" rows="15"> {{ old('head') }} </textarea>
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
                            <textarea name="tail" class="form-control" rows="15">{{ old('tail') }} </textarea>
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

@section('js')

{{-- for blog edit api connecntion --}}

<script src="https://cdn.tiny.cloud/1/h4efslnnmjjd3jl8l4jnfm3k80d2yagce4iscoph730xpb0e/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
    tinymce.init({
        selector: 'textarea'
    });
</script>


@endsection