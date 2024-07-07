<?php
//memasukkan file config.php
include('config.php');
?>
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
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="tambah.php">Tambah Mahasiswa</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="tambah dosen.php">Tambah Dosen</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="tambah makul.php">Tambah Makul</a>
                    </li>
                    <li class="nav-item">
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
		<h2>Daftar Mahasiswa</h2>
		
		<hr>
		
		<table class="table table-striped table-hover table-sm table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>NO.</th>
					<th>NIM</th>
					<th>NAMA MAHASISWA</th>
					<th>JENIS KELAMIN</th>
					<th>JURUSAN</th>
					<th>AKSI</th>
				</tr>
			</thead>
			<tbody>
				<?php
				//query ke database SELECT tabel mahasiswa urut berdasarkan nim yang paling besar
				$sql = mysqli_query($koneksi, "SELECT * FROM mahasiswa ORDER BY nim ASC") or die(mysqli_error($koneksi));
				//jika query diatas menghasilkan nilai > 0 maka menjalankan script di bawah if...
				if(mysqli_num_rows($sql) > 0){
					//membuat variabel $no untuk menyimpan nomor urut
					$no = 1;
					//melakukan perulangan while dengan dari dari query $sql
					while($data = mysqli_fetch_assoc($sql)){
						//menampilkan data perulangan
						echo '
						<tr>
							<td>'.$no.'</td>
							<td>'.$data['nim'].'</td>
							<td>'.$data['nama'].'</td>
							<td>'.$data['jenis_kelamin'].'</td>
							<td>'.$data['jurusan'].'</td>
							<td>
								<a href="edit.php?id='.$data['id'].'" class="badge badge-warning">Edit</a>
								<a href="delete.php?id='.$data['id'].'" class="badge badge-danger" onclick="return confirm(\'Yakin ingin menghapus data ini?\')">Delete</a>
							</td>
						</tr>
						';
						$no++;
					}
				//jika query menghasilkan nilai 0
				}else{
					echo '
					<tr>
						<td colspan="6">Tidak ada data.</td>
					</tr>
					';
				}
				?>
			<tbody>
		</table>
		
	</div>
	


	<div class="container" style="margin-top:20px">
		<h2>Daftar Dosen</h2>
		
		<hr>
		
		<table class="table table-striped table-hover table-sm table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>KODE DOSEN</th>
					<th>NAMA DOSEN</th>
					<th>AKSI</th>
				</tr>
			</thead>
			<tbody>
				<?php
				//query ke database SELECT tabel dosen urut berdasarkan kode_dosen yang paling besar
				$sql = mysqli_query($koneksi, "SELECT * FROM dosen ORDER BY kode_dosen ASC") or die(mysqli_error($koneksi));
				//jika query diatas menghasilkan nilai > 0 maka menjalankan script di bawah if...
				if(mysqli_num_rows($sql) > 0){
					//membuat variabel $no untuk menyimpan nomor urut
					$no = 1;
					//melakukan perulangan while dengan dari dari query $sql
					while($data = mysqli_fetch_assoc($sql)){
						//menampilkan data perulangan
						echo '
						<tr>
							<td>'.$data['kode_dosen'].'</td>
							<td>'.$data['nama_dosen'].'</td>
							<td>
								<a href="edit dosen.php?kode_dosen='.$data['kode_dosen'].'" class="badge badge-warning">Edit</a>
								<a href="delete dosen.php?kode_dosen='.$data['kode_dosen'].'" class="badge badge-danger" onclick="return confirm(\'Yakin ingin menghapus data ini?\')">Delete</a>
							</td>
						</tr>
						';
						$no++;
					}
				//jika query menghasilkan nilai 0
				}else{
					echo '
					<tr>
						<td colspan="6">Tidak ada data.</td>
					</tr>
					';
				}
				?>
			<tbody>
		</table>
		
	</div>


	<div class="container" style="margin-top:20px">
		<h2>Daftar Makul</h2>
		
		<hr>
		
		<table class="table table-striped table-hover table-sm table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>KODE MAKUL</th>
					<th>NAMA MAKUL</th>
					<th>SKS</th>
					<th>KODE DOSEN</th>
					<th>AKSI</th>
				</tr>
			</thead>
			<tbody>
				<?php
				//query ke database SELECT tabel makul urut berdasarkan kode makul yang paling besar
				$sql = mysqli_query($koneksi, "SELECT * FROM makul ORDER BY kode_mk ASC") or die(mysqli_error($koneksi));
				//jika query diatas menghasilkan nilai > 0 maka menjalankan script di bawah if...
				if(mysqli_num_rows($sql) > 0){
					//membuat variabel $no untuk menyimpan nomor urut
					$no = 1;
					//melakukan perulangan while dengan dari dari query $sql
					while($data = mysqli_fetch_assoc($sql)){
						//menampilkan data perulangan
						echo '
						<tr>
							<td>'.$data['kode_mk'].'</td>
							<td>'.$data['nama_mk'].'</td>
							<td>'.$data['sks'].'</td>
							<td>'.$data['kode_dosen'].'</td>
							<td>
								<a href="edit makul.php?kode_mk='.$data['kode_mk'].'" class="badge badge-warning">Edit</a>
								<a href="delete makul.php?kode_mk='.$data['kode_mk'].'" class="badge badge-danger" onclick="return confirm(\'Yakin ingin menghapus data ini?\')">Delete</a>
							</td>
						</tr>
						';
						$no++;
					}
				//jika query menghasilkan nilai 0
				}else{
					echo '
					<tr>
						<td colspan="6">Tidak ada data.</td>
					</tr>
					';
				}
				?>
			<tbody>
		</table>
		
	</div>

	<div class="container" style="margin-top:20px">
		<h2>Daftar Kelas</h2>
		
		<hr>
		
		<table class="table table-striped table-hover table-sm table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>NO.</th>
					<th>ID KELAS</th>
					<th>NAMA KELAS</th>
					<th>KAPASITAS</th>
					<th>NAMA GURU</th>
					<th>AKSI</th>
				</tr>
			</thead>
			<tbody>
				<?php
				//query ke database SELECT tabel mahasiswa urut berdasarkan nim yang paling besar
				$sql = mysqli_query($koneksi, "SELECT * FROM kelas ORDER BY id_kelas ASC") or die(mysqli_error($koneksi));
				//jika query diatas menghasilkan nilai > 0 maka menjalankan script di bawah if...
				if(mysqli_num_rows($sql) > 0){
					//membuat variabel $no untuk menyimpan nomor urut
					$no = 1;
					//melakukan perulangan while dengan dari dari query $sql
					while($data = mysqli_fetch_assoc($sql)){
						//menampilkan data perulangan
						echo '
						<tr>
							<td>'.$no.'</td>
							<td>'.$data['id_kelas'].'</td>
							<td>'.$data['nama_kelas'].'</td>
							<td>'.$data['kapasitas'].'</td>
							<td>'.$data['nama_guru'].'</td>
							<td>
								<a href="edit kelasku.php?id_kelas='.$data['id_kelas'].'" class="badge badge-warning">Edit</a>
								<a href="delete kelas.php?id_kelas='.$data['id_kelas'].'" class="badge badge-danger" onclick="return confirm(\'Yakin ingin menghapus data ini?\')">Delete</a>
							</td>
						</tr>
						';
						$no++;
					}
				//jika query menghasilkan nilai 0
				}else{
					echo '
					<tr>
						<td colspan="6">Tidak ada data.</td>
					</tr>
					';
				}
				?>
			<tbody>
		</table>
		
	</div>
	
    <div class="container" style="margin-top:20px">
        <h2>Daftar Mahasiswa</h2>
        
        <hr>
        
        <table class="table table-striped table-hover table-sm table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>NO.</th>
                    <th>FOTO</th>
                    <th>NAMA MAHASISWA</th>
                    <th>NIM</th>
                    <th>JURUSAN</th>
                    <th>ALAMAT</th>
                    <th>AKSI</th>
                </tr>
            </thead>
            <tbody>
                <?php
                //query ke database SELECT tabel mahasiswa urut berdasarkan nim yang paling besar
                $sql = mysqli_query($koneksi, "SELECT * FROM Biodata ORDER BY NIM ASC") or die(mysqli_error($koneksi));
                //jika query diatas menghasilkan nilai > 0 maka menjalankan script di bawah if...
                if(mysqli_num_rows($sql) > 0){
                    //membuat variabel $no untuk menyimpan nomor urut
                    $no = 1;
                    //melakukan perulangan while dengan dari dari query $sql
                    while($data = mysqli_fetch_assoc($sql)){
                        //menampilkan data perulangan
                        echo '
                        <tr>
                            <td>'.$no.'</td>
                            <td><img src="data:image/jpeg;base64,'.base64_encode($data['Foto']).'" width="100"/></td>
                            <td>'.$data['Nama'].'</td>
                            <td>'.$data['NIM'].'</td>
                            <td>'.$data['Jurusan'].'</td>
                            <td>'.$data['Alamat'].'</td>
                            <td>
                                <a href="edit biodata.php?NIM='.$data['NIM'].'" class="badge badge-warning">Edit</a>
                                <a href="delete biodata.php?NIM='.$data['NIM'].'" class="badge badge-danger" onclick="return confirm(\'Yakin ingin menghapus data ini?\')">Delete</a>
                            </td>
                        </tr>
                        ';
                        $no++;
                    }
                }else{
                    echo '
                    <tr>
                        <td colspan="7">Tidak ada data.</td>
                    </tr>
                    ';
                }
                ?>
            <tbody>
        </table>
        
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6zBWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>