<?php
include "../libs/koneksi.php";

mysql_query("DELETE FROM reagen WHERE ID = '".$_GET['id']."'");
mysql_query("DELETE FROM reagen_parameter WHERE kode_reagen='".$_GET['kode']."'");
mysql_query("DELETE FROM reagen_parameter_array WHERE kode_reagen='".$_GET['kode']."'");
echo "<script language=javascript>parent.location.href='home.php?ref=reagen';</script>";
?>