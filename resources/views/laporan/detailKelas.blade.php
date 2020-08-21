@extends('layouts.app')
@section('title', 'Laporan')
@section('breadcrumb')
  <h1>Laporan</h1>
  <ol class="breadcrumb">
    <li><a href="{{ url('/home') }}"><i class="fa fa-home"></i> Home</a></li>
    <li class="active">Laporan</li>
  </ol>
@endsection
@section('content')
<?php include(app_path().'/functions/myconf.php'); ?>
<div class="col-md-8">
  <div class="box box-primary">
  	<div class="box-header with-border">
      <h3 class="box-title">Paket soal dalam kelas ({{ $kelas->nama }})</h3>
    </div>
    <div class="box-body">
	    <table class="table table-condensed" id="table_paket_soal">
	    	<thead>
	    		<tr>
	    			<th>Nama paket soal</th>
	    			<th style="text-align: center; width: 50px">Aksi</th>
	    		</tr>
	    	</thead>
      </table>
    </div>
  </div>
</div>
<div class="col-md-4">
  @if($user->status == 'G' or $user->status == 'A')
  
  @endif
</div>
@endsection
@push('css')
<link rel="stylesheet" href="{{URL::asset('assets/plugins/datatables/media/css/dataTables.bootstrap.css')}}">
<link rel="stylesheet" href="{{URL::asset('assets/plugins/datatables/extensions/Responsive/css/responsive.dataTables.css')}}">
<link rel="stylesheet" href="{{URL::asset('assets/plugins/datatables/extensions/FixedHeader/css/fixedHeader.bootstrap.css')}}">
@endpush
@push('scripts')
<script src="{{URL::asset('assets/plugins/datatables/media/js/jquery.dataTables.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatables/media/js/dataTables.bootstrap.min.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatables/extensions/Responsive/js/dataTables.responsive.js')}}"></script>
<script src="{{URL::asset('assets/plugins/datatables/extensions/FixedHeader/js/dataTables.fixedHeader.js')}}"></script>
<script>
$(document).ready(function (){
  table_paket_soal = $('#table_paket_soal').DataTable({
    processing: true,
    serverSide: true,
    responsive: true,
    lengthChange: true,
    ajax: {
      url: '{!! route('elearning.laporan.data_paket_soal') !!}',
      data: {"id_kelas": '{{ $kelas->id }}'},
    },
    columns: [
      {data: 'paket', name: 'paket', orderable: true, searchable: true },
      {data: 'action', name: 'action', orderable: false, searchable: false, },
    ],
    "drawCallback": function (setting) {}
  });
});
</script>
@endpush