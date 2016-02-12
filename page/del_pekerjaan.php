<?php
include "../libs/koneksi.php";

mysql_query("DELETE FROM pekerjaan WHERE ID = '".$_GET['id']."'");
echo "<script language=javascript>parent.location.href='home.php?ref=pekerjaan';</script>";
?>