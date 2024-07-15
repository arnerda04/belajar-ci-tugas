<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Toko</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <link href="style.css" rel="stylesheet">
</head>

<body>
	<?php 
        require_once("fungsi.php");
        $bulan_angka = date("m");
        $bulan_teks = date("F");
        $tahun = date("Y");
        $send1 = curl("monthly", "type=transaction&tahun=" . $tahun . "&bulan=" . $bulan_angka . "");

    ?>
        
        <h1>Dashboard - TOKO</h1>
        <h3><?= date("l, d-m-Y") ?> <span id="jam"></span>:<span id="menit"></span>:<span id="detik"></span></h3>
        <hr>
        <div class="flex-container" id="bulanan">
  <div class="item">
      <strong>Transaction <?= $bulan_teks ?> <?= $tahun ?></strong><br><br>
      <span class="number">
          <?php
          $send1 = curl("monthly", "type=transaction&tahun=" . $tahun . "&bulan=" . $bulan_angka . "");
          $hasil1 = $send1->results;

          if (!empty($hasil1)) {
              echo $hasil1->jml;
          }
          ?>
      </span>
  </div>
  <div class="item">
      <strong>Earning <?= $bulan_teks ?> <?= $tahun ?></strong><br><br>
      <span class="number">
          <?php
          $send2 = curl("monthly", "type=earning&tahun=" . $tahun . "&bulan=" . $bulan_angka . "");
          $hasil2 = $send2->results;

          if (!empty($hasil2)) {
              echo "IDR " . number_format($hasil2->jml, 2, ',', '.');
          }
          ?>
      </span>
  </div>
  <div class="item">
      <strong>User <?= $bulan_teks ?> <?= $tahun ?></strong><br><br>
      <span class="number">
          <?php
          $send3 = curl("monthly", "type=user&tahun=" . $tahun . "&bulan=" . $bulan_angka . "");
          $hasil3 = $send3->results;

          if (!empty($hasil3)) {
              echo $hasil3->jml;
          }
          ?>
      </span>
  </div>
</div>
        <div class="flex-container" id="tahunan">
            <div class="item">
                <strong>Transaction <?= $tahun ?></strong><br><br>
                <span class="number">
                <?php
          $send4 = curl("yearly", "type=transaction&tahun=" . $tahun . "");
          $hasil4 = $send4->results;

          if (!empty($hasil4)) {
              echo $hasil4->jml;
          }
          ?>
                </span>
            </div>
            <div class="item">
                <strong>Earning <?= $tahun ?></strong><br><br>
                <span class="number">
                <?php
          $send5 = curl("yearly", "type=earning&tahun=" . $tahun . "");
          $hasil5 = $send5->results;

          if (!empty($hasil5)) {
            echo "IDR " . number_format($hasil5->jml, 2, ',', '.');
        }
          ?>
                </span>
            </div>
            <div class="item">
                <strong>User <?= $tahun ?></strong><br><br>
                <span class="number">
                <?php
          $send6 = curl("yearly", "type=user&tahun=" . $tahun . "&bulan=" . $bulan_angka . "");
          $hasil6 = $send6->results;

          if (!empty($hasil6)) {
              echo $hasil6->jml;
          }
          ?>
                </span>
            </div>
        </div>
        <script>
            window.setTimeout("waktu()", 1000);

            function waktu() {
                var waktu = new Date();
                setTimeout("waktu()", 1000);
                document.getElementById("jam").innerHTML = waktu.getHours();
                document.getElementById("menit").innerHTML = waktu.getMinutes();
                document.getElementById("detik").innerHTML = waktu.getSeconds();
            }
    </script>

</body>

</html>