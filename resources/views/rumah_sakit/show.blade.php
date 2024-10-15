<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Detail</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body style="background: lightgray">

    <div class="container mt-5 mb-5">
        <div class="row">
           
            <div class="col-md-8">
                <div class="card border-0 shadow-sm rounded">
                    <div class="card card-title"> <h3>{{ $rumah_sakit->nama }}</h3></div>
                    <div class="card-body">
                       
                        <hr/>
                        <p>{{ $rumah_sakit->alamat}}</p>
                        <code>
                            <p></p>
                        </code>
                        <hr/>
                        <p>contact : {{ $rumah_sakit->telepon }}</p>
                        <p>email   : {{ $rumah_sakit->email }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>