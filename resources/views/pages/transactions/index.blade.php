@extends('layouts.default')

@section('content')
 <div class="order">
     <div class="row">
         <div class="col-12">
             <div class="card">
                 <div class="card-body">
                     <h4 class="box-title">Daftar Transaksi Masuk</h4>
                 </div>
                 <div class="card-body--">
                    <div class="table-stats order-table ov-h">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Nama</th>
                                    <th>Email</th>
                                    <th>Nomor</th>
                                    <th>Total Transaksi</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>

                                @forelse ($items as $item)
                                <tr>
                                    <td>{{ $item->id  }}</td>
                                    <td>{{ $item->name }}</td>
                                    <td>{{ $item->email }}</td>
                                    <td>{{ $item->number }}</td>
                                    <td>{{ $item->transaction_total }}</td>
                                    <td>
                                        @if($item->transaction_status =='PENDING')
                                            <span class="badge badge-info"><i class="fa fa-circle-thin" aria-hidden="true"></i>
                                        @elseif ($item->transaction_status =='SUCCESS')
                                            <span class="badge badge-success"><i class="fa fa-check"></i>
                                        @elseif ($item->transaction_status =='FAILED')
                                            <span class="badge badge-danger"><i class="fa fa-times"></i>
                                        @else
                                            <span>
                                        @endif
                                            {{ $item->transaction_status }}
                                        </span>
                                    </td>
                                    <td>
                                        @if($item->transaction_status == 'PENDING')
                                            <a href="{{ route('transaction.status',$item->id) }}?status=SUCCESS" class="btn btn-success btn-sm">
                                                <i class="fa fa-check"></i>
                                            </a>
                                            <a href="{{ route('transaction.status',$item->id) }}?status=FAILED" class="btn btn-warning btn-sm">
                                                <i class="fa fa-times"></i>
                                            </a>
                                        @endif
                                        <a
                                        href="#mymodal"
                                        data-remote="{{ route('transaction.show',$item->id) }}"
                                        data-toggle="modal"
                                        data-target="#mymodal"
                                        data-title="Detail Transaksi {{ $item->uuid }}"
                                        class="btn btn-info btn-sm">
                                        <i class="fa fa-eye"> </i></a>


                                        <a href="{{ route('transaction.edit',$item->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-pencil"> </i> </a>
                                        <form action="{{ route('transaction.destroy', $item->id) }}" class="d-inline" method="post">
                                            @csrf
                                            @method('delete')
                                        <button class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button>
                                        </form>
                                    </td>

                                </tr>

                                @empty
                                <tr>
                                    <td colspan="6" class="text-center">Tidak ada data</td>
                                </tr>
                                @endforelse

                            </tbody>
                        </table>
                    </div>
                 </div>
             </div>
         </div>
     </div>
 </div>
@endsection
