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
    <div class="row justify-content-center">
        <div class="col-md-12 border-top border-bottom ">
            <div class="ml-md-3">
                <table id="example" class="ui celled table ">
                    <thead>
                        <tr>
                            <th class="bg-secondary text-light">Name</th>
                            <th class="bg-secondary text-light">Position</th>
                            <th class="bg-secondary text-light">Office</th>
                            <th class="bg-secondary text-light">Age</th>
                            <th class="bg-secondary text-light">Start date</th>
                            <th class="bg-secondary text-light">Salary</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Tiger Nixon</td>
                            <td>System Architect</td>
                            <td>Edinburgh</td>
                            <td>61</td>
                            <td>2011/04/25</td>
                            <td>$320,800</td>
                        </tr>
                    </tbody>

                </table>
            </div>
        </div>
    </div>
</div>
@endsection

@section('Javascript')

<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.semanticui.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.1/semantic.min.js"></script>


<script type="text/javascript">
    $(document).ready(function() {
        $('#example').DataTable();
    });
</script>
@endsection