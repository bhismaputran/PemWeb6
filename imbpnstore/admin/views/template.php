<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets4/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets4/css/template/style.css">
    <link rel="stylesheet" href="../assets4/fontawesome/css/all.css">

    <!--    icon    -->
    <link rel="shortcut icon" href="../assets4/images/logo/imbpnstore.png" type="image/s-icon">

    <title>Halaman Dashboard Admin</title>
  </head>
  <body class="bg-light">
            <!-- header -->
        <nav class="navbar navbar-expand navbar-light bg-info">
        <a class="navbar-brand" href="#">
            <img src="../assets4/images/logo/imbpnstore.png" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
            IMBPN STORE
        </a>
        <button class="btn" type="buttom" id="sidebarToggle"><span class="navbar-toggler-icon"></span></button>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown no-arrow">
                <a class="nav-link dropdown-toggle" href="#" id="profil" role="button" data-toggle="dropdown"
                arta-haspopup="true" 
                    arta-haspopup="false">
                    <img class="rounded-circle" width="30" src="../assets4/images/user/user.png" alt="logo">
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="profil">
                    <a class="dropdown-item" href="../admin/controller/logout.php">Logout</a>
                </div>
            </li>
        </ul>
        </nav>
    <!--Menu Sidebar-->
    <div id="wrapper">
        <ul class="sidebar navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="">
                <i class="fas fa-home"></i> <span> Dashboard</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="index.php?mode=produk">
                <i class="fas fa-cart-plus"></i> <span> Produk</span>
                </a>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="index.php?mode=pembeli">
                <i class="fas fa-users"></i> <span> Pembeli</span>
                </a>
            </li>
            
        </ul>
        <?php include_once $content; ?>
    </div>

    <!--    Halaman Content    -->


    <!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="../assets4/jquery/jquery.min.js"></script>
    <script src="../assets4/js/bootstrap.bundle.min.js"></script>
    <script src="../assets4/js/template/custom.js"></script>
  </body>
</html>