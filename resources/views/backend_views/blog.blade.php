@extends('layouts.app')

@section('css')

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/dataTables.semanticui.min.css">

@endsection

@section('content')
<div class="container">
    <div class="m-3 " align='right'>
        <a href="{!! route('add_blog') !!}" class="btn-sm btn-success">Add Blog</a>
        <a href="#" class="btn-sm btn-danger">Trashed Blog</a>

    </div>
    <div class="col-8 m-auto">
        <table id="example" class="ui celled table ">
            <thead>
                <tr>
                    <th class="bg-secondary text-light">SL</th>
                    <th class="bg-secondary text-light">Post Name</th>
                    <th class="bg-secondary text-light">Action</th>

                </tr>
            </thead>
            <tbody>
                {{-- <script type="text/javascript" src=""></script> --}}
                @foreach ($posts as $post)
                <tr>
                    <td class="border text-center font-weight-bold font-italic"> {{ $loop->index + 1 }}</td>
                    <td class="border"> {!! $post->post_name !!}</td>
                    <td class="d-flex border">
                        <form action="{!! route('add_section') !!}" method="post">
                            @csrf
                            <input type="hidden" name="id" value="{{ $post->id }}">
                            <input type="submit" class="btn btn-success mx-1 mt-1" value="Add Section">
                        </form>
                        <form action="#" method="post">
                            @csrf
                            <input type="hidden" name="id" value="{{ $post->id }}">
                            <input type="submit" class="btn btn-primary mx-1 mt-1" value="Edit">
                        </form>
                        <form action="#" method="post">
                            @csrf
                            <input type="hidden" name="id" value="{{ $post->id }}">
                            <input type="submit" class="btn btn-danger mx-1 mt-1" value="Delete">
                        </form>
                    </td>
                </tr>
                @endforeach
            </tbody>

        </table>
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