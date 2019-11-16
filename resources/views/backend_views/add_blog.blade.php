@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col">
            <div class=" card  mb-3 ">
                <div class=" card-header p-2  font-italic ">
                    <h4> Add Blog </h4>
                </div>
                <div class=" card-body ">

                    tommorow we will work here

                </div>
            </div>

        </div>

    </div>

</div>
@endsection

@section('javascript')
<script src="https://cdn.tiny.cloud/1/h4efslnnmjjd3jl8l4jnfm3k80d2yagce4iscoph730xpb0e/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
<script>
    tinymce.init({
        selector: 'textarea'
    });
</script>
@endsection