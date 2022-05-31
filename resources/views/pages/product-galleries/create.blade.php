@extends('layouts.default')

@section('content')

<div class="card">
    <div class="card-header">
        <strong>Tambah Barang</strong>
    </div>
    <div class="card-body card-block">
        <form action="{{ route('product-galleries.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="" class="form-control-label">Nama Barang</label>
                <select name="products_id" id="" class="form-control">
                    @foreach ($items as $item )
                        <option value="{{ $item->id }}">{{ $item->name }}</option>
                    @endforeach
                </select>
                 @error('name')<div class="text-muted">{{ $message }}</div> @enderror
            </div>
            <div class="form-group">
                <label for="" class="form-control-label">Foto Barang</label>
                <input type="file" name="photo" value="{{ old('photo') }}" acccept="image/*" class="form-control @error('photo') is-invalid @enderror">
                @error('photo')<div class="text-muted">{{ $message }}</div> @enderror
            </div>

            <div class="form-group">
                <label for="" class="form-control-label">Jadikan Foto Utama</label>
                <select name="is_default" id="" class="form-control">
                    <option value="">Pilih Opsi</option>
                    <option value="1">Ya</option>
                    <option value="0">Tidak</option>
                </select>
                @error('quantity')<div class="text-muted">{{ $message }}</div> @enderror
            </div>

            <div class="form-group">
               <button type="submit" class="btn btn-primary btn-block">Tambah Foto Barang</button>
            </div>

        </form>
    </div>
</div>

@endsection
