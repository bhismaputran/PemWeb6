<?php
$con->auth();
$conn=$con->koneksi();
switch (@$_GET['page']){
    case 'add':
        $content="views/produk/tambah.php";
        include_once 'views/template.php';
    break;
    case 'save':
        if($_SERVER['REQUEST_METHOD']=="POST"){
            //Validasi
            if(empty($_POST['nama_produk'])){
                $err['nama_produk']= "Nama Wajib Diisi";
            }
            if(empty($_POST['harga_produk'])){
                $err['harga_produk']= "Harga Wajib Diisi";
            }
            if(empty($_POST['deskripsi'])){
                $err['deskripsi']= "Deskripsi Wajib Diisi";
            }

            if(!isset($err)){
                $sql = "INSERT INTO produk (nama_produk, harga_produk, deskripsi)
                VALUES ('$_POST[nama_produk]','$_POST[harga_produk]','$_POST[deskripsi]')";
                if ($conn->query($sql) === TRUE) {
                    header('Location: '.$con->site_url().'/admin/index.php?mod=produk');
                } else {
                    $err['msg']= "Error: " . $sql . "<br>" . $conn->error;
                }
            }
        }else{
            $err['msg']="Tidak diizinkan";
        }
        if(isset($err)){
            $content="views/produk/tambah.php";
            include_once 'views/template.php';
        }
    break;
    case 'edit':
        $produk ="SELECT * FROM prodok WHERE md5(id_produk)='$_GET[id_produk]'";
        $produk=$conn->query($produk);
        $_POST=$produk->fetch_assoc();
        $_POST['id_produk']=$_POST['id_produk'];
        //var_dump($produk);
        $content="views/produk/tambah.php";
        include_once 'views/template.php';
    break;
    default:

    $sql = "SELECT * FROM produk";
    $produk=$conn->query($sql);
    $conn->close();
    $content="views/produk/tampil.php";
    include_once 'views/template.php';
}
?>