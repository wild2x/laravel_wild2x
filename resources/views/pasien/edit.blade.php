<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Rumah Sakit</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

<body>
<div class="container mt-5">
<div class="row">   
<div class="col-md-12">
<div class="card card-primary">
<div class="card-header">
<h3 class="card-title">Edit Data Pasien</h3>
    </div>
        <form action="{{ route('pasien.update', $pasien->id) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="card-body">
                <div class="form-group">
                    <label for="nama">Nama Pasien</label>
                    <input type="text" class="form-control" id="nama" name="nama" placeholder="nama" value="{{old('nama',$pasien->nama)}}" required>
                </div>

                <div class="form-group">
                    <label for="alamat">Alamat</label>
                    <input type="text" class="form-control" id="alamat" name="alamat" placeholder="alamat" value="{{old('alamat',$pasien->alamat)}}">
                </div>

                <div class="form-group">
                    <label for="telepon">No Telepon</label>
                    <input type="text" class="form-control" id="telepon" name="telepon" placeholder="telepon" value="{{old('telepon',$pasien->telepon)}}">
                </div>
                
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter email" value="{{old('email',$pasien->email)}}">
                </div>

                <div class="form-group">
                    <label for="id_rs">Rumah Sakit</label>
                    <select class="form-control"  id="id_rs" name="id_rs" placeholder="Pilih Rumah Sakit" required>
                        @foreach ($rumah_sakit as $rs)
                        <option value="{{$rs->id}}" >{{$rs->nama}}</option> 
                        @endforeach    
                    </select>
                </div>               
              
            </div>

            <div class="card-footer">
                <button type="submit" class="btn btn-success mb-3">Simpan</button>
                <a href="/pasien" class="btn btn-md btn-warning mb-3">Cancel</a>
                

            </div>
        </form>
    </div>
</div>
</div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</html>
