@extends('layouts.app')

@section('css')

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.semanticui.min.css">

@endsection

@section('content')
<div class="container">
    <div class="row">
        <div class="col-6 mx-auto">



            <div class="card">
                <div class="card-header bg-secondary">
                    <h2 class="text-light">Add Tag</h2>
                </div>
                <div class="card-body">
                    <form action="{!! route('edit_tag_post') !!}" method="post">
                        @csrf
                        <div class="form-group">
                            <label class="font-weight-bold">Tage Name</label>
                            <input type="hidden" name="id" value="{{ $tag->id }}">
                            <input class="form-control" type="text" name="tag" value="{{ $tag->tag }}">
                            @error ('tag')
                            <div class="text-danger">
                                ***{{ $message }}
                            </div>
                            @enderror
                        </div>
                        <input class="btn btn-success" type="submit" value="Save">
                    </form>
                </div>


            </div>


        </div>

    </div>
</div>



@endsection


@section('js')



@endsection