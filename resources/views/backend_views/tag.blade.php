@extends('layouts.app')

@section('css')

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.semanticui.min.css">

@endsection

@section('content')
<div class="container">
    <div class="row">
        <div class="col-12">

            <div class="row ">
                <div class="col-7 m-auto">
                    <div class="card">
                        <div class="card-header">
                            <h3>Tags</h3>
                        </div>
                        <div class="card-body">
                            <table id="example" class="ui celled table text-center">
                                <thead>
                                    <tr>
                                        <th class="">SL</th>
                                        <th class="">tag Name</th>
                                        <th class="">Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    {{-- <script type="text/javascript" src=""></script> --}}
                                    @foreach ($tags as $tag)
                                    <tr>
                                        <td class="border text-center font-weight-bold font-italic"> {{ $loop->index + 1 }}</td>
                                        <td class="border"> {!! $tag->tag!!}</td>
                                        <td class="d-flex border justify-content-center">

                                            <a href="{!! route('edit_tag',$tag->id) !!}" class="btn btn-primary mx-1 mt-1">Edit</a>

                                            <form action="{!! route('delete_tag') !!}" method="post">
                                                @csrf
                                                <input type="hidden" name="id" value="{{ $tag->id }}">
                                                <input type="submit" class="btn btn-danger mx-1 mt-1" value="Delete">
                                            </form>
                                        </td>
                                    </tr>
                                    @endforeach
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-4 ">
                    <div class="card">
                        <div class="card-header bg-secondary">
                            <h2 class="text-light">Add Tag</h2>
                        </div>
                        <div class="card-body">
                            <form action="{!! route('add_tag') !!}" method="post">
                                @csrf
                                <div class="form-group">
                                    <label class="font-weight-bold">Tage Name</label>
                                    <input class="form-control" type="text" name="tag">
                                    @error ('tag')
                                    <div class="text-danger">
                                        ***{{ $message }}
                                    </div>

                                    @enderror
                                </div>
                                <input class="btn btn-success" type="submit" value="Add">
                            </form>
                        </div>

                    </div>
                    @if (session('tag_error'))
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        {{ session('tag_error') }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    @endif
                </div>

            </div>


        </div>

    </div>
</div>



@endsection


@section('js')

<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.semanticui.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>


<script type="text/javascript">
    $(document).ready(function() {
        $('#example').DataTable();
    });
</script>

@endsection