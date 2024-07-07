<?php include('config.php'); ?>
<!DOCTYPE html>
<html>
<head>
	<title>UAS 2024</title>
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            padding-top: 70px;
            background-color: #f4f4f9;
        }
        .navbar {
            background-color: #343a40;
            color: white;
        }
        .navbar .nav-link {
            color: white !important;
        }
        .navbar .nav-link:hover {
            color: #ffc107 !important;
        }
        .card {
            margin-bottom: 20px;
            border-radius: 10px;
            border: none;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .card-header {
            font-size: 1.2rem;
            font-weight: bold;
            background-color: #343a40;
            color: white;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom: none;
        }
        .table-hover tbody tr:hover {
            background-color: rgba(255, 193, 7, 0.2);
        }
        .badge-warning:hover, .badge-danger:hover {
            cursor: pointer;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">UAS 2024</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Home</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="tambah.php">Tambah Mahasiswa</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="tambah dosen.php">Tambah Dosen</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="tambah makul.php">Tambah Makul</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="tambah kelas.php">Tambah Kelas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="tambah biodata.php">Tambah Biodata</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container" style="margin-top:20px">
		<h2>tambah kelas</h2>
		<hr>
		
		<?php
		if(isset($_POST['submit'])){
			$id_kelas			= $_POST['id_kelas'];
			$nama_kelas			= $_POST['nama_kelas'];
			$kapasitas			= $_POST['kapasitas'];
			$nama_guru			= $_POST['nama_guru'];

			$cek = mysqli_query($koneksi, "SELECT * FROM kelas WHERE id_kelas='$id_kelas'") or die(mysqli_error($koneksi));
			
			if(mysqli_num_rows($cek) == 0){
				$sql = mysqli_query($koneksi, "INSERT INTO kelas(id_kelas, nama_kelas, kapasitas, nama_guru ) VALUES('$id_kelas', '$nama_kelas', '$kapasitas', '$nama_guru')") or die(mysqli_error($koneksi));
				
				if($sql){
					echo '<script>alert("Berhasil menambahkan data."); document.location="tambah kelas.php";</script>';
				}else{
					echo '<div class="alert alert-warning">Gagal melakukan proses tambah data.</div>';
				}
			}else{
				echo '<div class="alert alert-warning">Gagal, NIM sudah terdaftar.</div>';
			}
		}
		?>
		
		<form action="tambah kelas.php" method="post">
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">ID KELAS</label>
				<div class="col-sm-10">
					<input type="text" name="id_kelas" class="form-control" size="4" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">NAMA KELAS</label>
				<div class="col-sm-10">
					<input type="text" name="nama_kelas" class="form-control" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">KAPASITAS</label>
				<div class="col-sm-10">
					<input type="text" name="kapasitas" class="form-control" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">NAMA GURU</label>
				<div class="col-sm-10">
					<input type="text" name="nama_guru" class="form-control" required>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 col-form-label">&nbsp;</label>
				<div class="col-sm-10">
					<input type="submit" name="submit" class="btn btn-primary" value="SIMPAN">
				</div>
			</div>
		</form>
		
	</div>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	
</body>
</html>