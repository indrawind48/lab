<?php
include "../libs/koneksi.php";

mysql_query("DELETE FROM jenis_pasien WHERE ID = '".$_GET['id']."'");
echo "<script language=javascript>parent.location.href='home.php?ref=jenis_pasien';</script>";
?>