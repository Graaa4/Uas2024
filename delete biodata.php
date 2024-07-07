<?php
// Include config file to connect to the database
include('config.php');

// Check if NIM parameter is set
if(isset($_GET['NIM'])){
    // Get NIM value from URL
    $NIM = $_GET['NIM'];
    
    // Query to delete record from Biodata table
    $cek = mysqli_query($koneksi, "SELECT * FROM Biodata WHERE NIM='$NIM'") or die(mysqli_error($koneksi));
    
    // If record exists, delete it
    if(mysqli_num_rows($cek) > 0){
        $del = mysqli_query($koneksi, "DELETE FROM Biodata WHERE NIM='$NIM'") or die(mysqli_error($koneksi));
        if($del){
            echo '<script>alert("Berhasil menghapus data."); document.location="index.php";</script>';
        }else{
            echo '<script>alert("Gagal menghapus data."); document.location="index.php";</script>';
        }
    }else{
        echo '<script>alert("NIM tidak ditemukan di database."); document.location="index.php";</script>';
    }
}else{
    echo '<script>alert("NIM tidak ditemukan di database."); document.location="index.php";</script>';
}
?>
