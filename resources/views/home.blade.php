<?php use Carbon\Carbon; ?>
@extends('layouts.app')
@section('title', 'ExamLea - Aplikasi Ujian online')
@section('breadcrumb')
  <h1>Dashboard</h1>
  <ol class="breadcrumb">
    <li><a href="#"><i class="fa fa-home"></i> Home</a></li>
    <li class="active">Selamat datang</li>
  </ol>
@endsection
@section('content')
  <?php include(app_path().'/functions/myconf.php'); ?>
  @if(Auth::user()->status == 'A')
    <div class="callout callout-info" >
      <h4>Assalamu'alaikum <b>{{ Auth::user()->nama }} (admin)</b></h4>
    </div>
  @endif
  @if(Auth::user()->status == 'A' || Auth::user()->status == 'G')
    <div class="clearfix"></div>
    <div class="col-md-8">
      <div class="box box-primary">
        <div class="box-header with-border">
          <h3 class="box-title">Paket soal</h3>
          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
          </div>
        </div>
        <div class="box-body">
          <table class="table table-hover table-striped" id="table_soal">
            @if (Auth::user()->status == 'G')
              <caption>Data paket soal yang Anda buat</caption>
            @else
              <caption>Data paket soal</caption>
            @endif
            <thead>
              <tr>
                <th>Nama Paket</th>
                <th>Deskripsi</th>
                <th>Jenis</th>
                <th style="text-align: center;">KKM</th>
                <th style="text-align: center; width: 70px">Waktu</th>
                <th style="text-align: center; width: 110px">Aksi</th>
              </tr>
            </thead>
          </table>
        </div>
      </div>
    </div>
    <div class="col-md-4">
        <div class="box-header with-border">
    
      </div>
      <div class="box box-warning">
        <div class="box-header with-border">
          <h3 class="box-title" style="color: coral"><i class="fa fa-info-circle"></i> Quotes</h3>
        </div>
        <div class="box-body">
          <p>Ujian Terberat Seorang Muslim adalah Istiqamah </p>
        </div>
      </div>
    </div>
  @else
    <div class="alert" style="background: #fff; border: solid thin #d8d5d5;"></div>
  @endif
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
    table_soal = $('#table_soal').DataTable({
      processing: true,
      serverSide: true,
      responsive: true,
      lengthChange: true,
      ajax: {
        url: '{!! route('elearning.get-soal-home') !!}',
        
      },
      columns: [
        {data: 'paket', name: 'paket', orderable: true, searchable: true },
        {data: 'deskripsi', name: 'deskripsi', orderable: true, searchable: true },
        {data: 'jenis', name: 'jenis', orderable: true, searchable: true },
        {data: 'kkm', name: 'kkm', orderable: true, searchable: true },
        {data: 'waktu', name: 'waktu', orderable: true, searchable: true },
        {data: 'action', name: 'action', orderable: false, searchable: false, },
      ],
      "drawCallback": function (setting) {}
    });
    $("#btn-wrap-info").click(function() {
      $(this).hide();
      $("#wrap-info").show();
    });
  });
  </script>
@endpush