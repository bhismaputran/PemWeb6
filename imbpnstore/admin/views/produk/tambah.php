<div id="content-wrapper">
    <div class="container mt-2">
                <div class="pull-md-left">
                    <h4>Daftar Produk</h4>
                </div>
<form action="index.php?mod=produk&page=save" method="POST">
    <div class="container mt-2">
    
        <div class="form-group">
            <label for="">Nama Produk</label>
            <input type="text" name="nama_produk" required value="<?=(isset($_POST['nama_produk']))?$_POST['nama_produk']:'';?>" class="form-control">
            <span class="text-danger"><?=(isset($err['nama_produk']))?$err['nama_produk']:''?></span>
        </div>
        <div class="form-group">
            <label for="">Harga Produk</label>
            <input type="number" name="harga_produk" required value="<?=(isset($_POST['harga_produk']))?$_POST['harga_produk']:'';?>" class="form-control">
            <span class="text-danger"><?=(isset($err['harga_produk']))?$err['harga_produk']:''?></span>
        </div>
        <div class="form-group">
        <label for="">Deskripsi Produk</label>
        <input type="text" name="deskripsi" class="form-control" required value="<?=(isset($_POST['deskripsi']))?$_POST['deskripsi']:'';?>">
        <span class="text-danger"><?=(isset($err['deskripsi']))?$err['deskripsi']:''?></span>
        </div>
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-primary">Save</button>
    </div>
</div>
</form>