<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Data Rumah Sakit</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background: lightgray">

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-12">
                <div>
                    <h3 class="text-center my-4">Data Rumah Sakit</h3>
                    <hr>
                </div>
                <div class="card border-0 shadow-sm rounded">
                    <div class="card-body">
                        <a href="{{ route('rumah_sakit.create') }}" class="btn btn-md btn-success mb-3">Add New</a>
                        <a href="{{ route('home') }}" class="btn btn-md btn-success mb-3">Home</a>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">Nama Rumah Sakit</th>
                                    <th scope="col">Alamat</th>
                                    <th scope="col">No Telepon</th>
                                    <th scope="col">email</th>
                                    <th scope="col" style="width: 20%">ACTIONS</th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse ($rumah_sakit as $rs)
                                    <tr>
                                        <td>{{ $rs->nama}}</td>
                                        <td>{{ $rs->alamat }}</td>
                                        <td>{{ $rs->telepon }}</td>
                                        <td>{{ $rs->email }}</td>
                                        <td class="text-center">
                                            <form onsubmit="return confirm('Apakah Anda Yakin ?');" action="{{ route('rumah_sakit.destroy', $rs->id) }}" method="POST">
                                                <a href="{{ route('rumah_sakit.show', $rs->id) }}" class="btn btn-sm btn-dark">SHOW</a>
                                                <a href="{{ route('rumah_sakit.edit', $rs->id) }}" class="btn btn-sm btn-primary">EDIT</a>
                                                @csrf
                                                @method('DELETE')
                                               <button type="submit" class="btn btn-sm btn-danger">HAPUS</button> 
                                               
                                            </form>
                                        </td>
                                    </tr>
                                @empty
                                    <div class="alert alert-danger">
                                       No Data.
                                    </div>
                                @endforelse
                            </tbody>
                        </table>
                        {{ $rumah_sakit->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

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

</body>
</html>