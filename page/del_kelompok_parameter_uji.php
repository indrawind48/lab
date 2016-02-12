<?php
include "../libs/koneksi.php";

mysql_query("DELETE FROM kelompok_parameter_uji WHERE ID = '".$_GET['id']."'");
echo "<script language=javascript>parent.location.href='home.php?ref=kelompok_parameter_uji';</script>";
?>