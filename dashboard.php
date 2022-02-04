<?php
session_start();
if ($_SESSION['status_login'] != true) {
  echo '<script>window.location="login.php"</script>';
}
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width-device-width, initial-scale=1">
  <title>DAFFA OUTDOOR STORE</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
  <!-- Header -->
  <header>
    <div class="container">
      <h1><a href="dashboard.php">Daffa Outdoor</a></h1>
      <ul>
        <li><a href="dashboard.php">Dashboard</a></li>
        <li><a href="profil.php">Profil</a></li>
        <li><a href="data-kategori.php">Data Kategori</a></li>
        <li><a href="data-produk.php">Data Produk</a></li>
        <li><a href="keluar.php">Keluar</a></li>
      </ul>
    </div>
  </header>

  <!-- Content -->
  <div class="section">
    <div class="container">
      <h3>Dashboard</h3>
      <div class="box">
        <h4>Selamat Datang <?php echo $_SESSION['a_global']->admin_name ?> di DAFFA OUTDOOR</h4>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer>
    <div class="container">
      <small>Copyright &copy; 2022 - Toko Gaul.</small>
    </div>
  </footer>
</body>

</html>