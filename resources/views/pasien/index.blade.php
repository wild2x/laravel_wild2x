<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Data Pasien</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background: lightgray">

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <div>
                    <h3 class="text-center my-4">Data Pasient</h3>
                    <hr>
                </div>
                <div class="card border-0 shadow-sm rounded">
                    <div class="card-body">
                        <a href="{{ route('pasien.create') }}" class="btn btn-md btn-success mb-3">Add New</a>
                        <a href="{{ route('home') }}" class="btn btn-md btn-success mb-3">Home</a><br>
                        <select id="rsname" name="rsname">
                        <option value="">-- Pilih Rumah Sakit --</option>
                        @foreach ($rumah_sakit as $rt)
                            <option value="{{$rt->id}}">{{$rt->nama}}</option>
                        @endforeach
                        </select>

                        <br><br>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">Nama Pasien</th>
                                    <th scope="col">Alamat</th>
                                    <th scope="col">No Telepon</th>
                                    <th scope="col">email</th>
                                </tr>
                            </thead>
                            <tbody id="isi">
                                
                            </tbody>
                        </table>
                   
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        //message with sweetalert
        @if(session('success'))
            Swal.fire({
                icon: "success",
                title: "BERHASIL",
                text: "{{ session('success') }}",
                showConfirmButton: false,
                timer: 2000
            });
        @elseif(session('error'))
            Swal.fire({
                icon: "error",
                title: "GAGAL!",
                text: "{{ session('error') }}",
                showConfirmButton: false,
                timer: 2000
            });
        @endif

    </script>
    <script>
            $(document).ready(function() {
              
                $('#rsname').on('change', function() {
                    var id_rs = $(this).val();
                   
                    if (id_rs) {
                        $.ajax({
                            url: '/getpasienrs/' + id_rs,
                            type: 'GET',
                            dataType: 'json',
                            success: function(data) {
                                $('#isi').empty();
                                if (data.length > 0) {
                                    'Ali '
                                    $.each(data, function(key, pasien) {
                                        $('#isi').append('<tr><td>'  + pasien.nama
                                                       + '</td><td>' + pasien.alamat
                                                       + '</td><td>' + pasien.telepon
                                                       + '</td><td>' + pasien.email                                                     
                                                       + '</td></tr>')
                                    });
                                } else {
                                    $('#isi').append('<tr><td colspan="3" class="text-center">Tidak ada pasien</td></tr>');
                                }
                            }
                        });
                    } else {
                        $('#isi').empty();
                    }
                });
            });
    </script>
</body>
</html>