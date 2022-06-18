@extends('layouts.default')

@section('content')

<div class="card">
    <div class="card-header">
        <strong>Uabah Transaksi</strong>
        <small>{{ $item->uuid }}</small>
    </div>
    <div class="card-body card-block">
        <form action="{{ route('transaction.update',$item->id) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label for="" class="form-control-label">Nama Pemesan</label>
                <input type="text" name="name" value="{{ old('name') ? old('name') : $item->name }}" class="form-control @error('name') is-invalid @enderror">
                 @error('name')<div class="text-muted">{{ $message }}</div> @enderror
            </div>
            <div class="form-group">
                <label for="" class="form-control-label">Email</label>
                <input type="text" name="email" value="{{ old('email') ? old('email') : $item->email }}" class="form-control @error('email') is-invalid @enderror">
                @error('type')<div class="text-muted">{{ $message }}</div> @enderror
            </div>

            <div class="form-group">
                <label for="" class="form-control-label">Nomor HP</label>
                <input type="text" name="number" value="{{ old('number') ? old('number') : $item->number }}" class="form-control @error('number') is-invalid @enderror">
                @error('type')<div class="text-muted">{{ $message }}</div> @enderror
            </div>

            <div class="form-group">
                <label for="" class="form-control-label">Alamat Pemesan </label>
                <textarea name="address" id="editor" cols="30" rows="10" class="form-control @error('address') is-invalid @enderror">{{ old('address') ? old('address') : $item->address }}</textarea>
                @error('address')<div class="text-muted">{{ $message }}</div> @enderror
            </div>
            <div class="form-group">
               <button type="submit" class="btn btn-primary btn-block">Ubah Transaksi</button>
            </div>

        </form>
    </div>
</div>

@endsection
