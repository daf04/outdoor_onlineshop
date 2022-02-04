<?php
    $hostname = 'localhost';
    $username = 'root';
    $password = '';
    $dbname = 'uaswp';

    $conn = mysqli_connect($hostname, $username, $password, $dbname) or die ('Gagal terhubung ke database');
