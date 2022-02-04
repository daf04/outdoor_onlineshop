<?php

  include 'db.php';

  if(isset($_GET['idk'])){
    $delete = mysqli_query($conn, "DELETE FROM tb_category WHERE category_id = '".$_GET['idk']."'");
    echo '<script>window.location="data-kategori.php"</script>';
  }
