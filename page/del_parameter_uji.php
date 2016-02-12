<?php
include "../libs/koneksi.php";

mysql_query("DELETE FROM parameter_uji WHERE ID = '".$_GET['id']."'");
echo "<script language=javascript>parent.location.href='home.php?ref=parameter_uji';</script>";
?>