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
<h3 class="card-title">Input Data Rumah Sakit</h3>
    </div>
        <form action="{{route('rumah_sakit.store')}}" method="post">
            @csrf
            <div class="card-body">
                <div class="form-group">
                    <label for="nama">Nama Rumah Sakit</label>
                    <input type="text" class="form-control" id="nama" name="nama" placeholder="nama" required>
                </div>

                <div class="form-group">
                    <label for="alamat">Alamat</label>
                    <input type="text" class="form-control" id="alamat" name="alamat" placeholder="alamat">
                </div>

                <div class="form-group">
                    <label for="telepon">No Telepon</label>
                    <input type="text" class="form-control" id="telepon" name="telepon" placeholder="telepon">
                </div>
                
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" id="email" placeholder="Enter email">
                </div>

                               
              
            </div>

            <div class="card-footer">
                <button type="submit" class="btn btn-success mb-3">Simpan</button>
                <a href="/rumah_sakit" class="btn btn-md btn-warning mb-3">Cancel</a>
                

            </div>
        </form>
    </div>
</div>
</div>
</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</html>
