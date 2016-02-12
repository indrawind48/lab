<?php
include "../libs/koneksi.php";

mysql_query("DELETE FROM dokter WHERE ID = '".$_GET['id']."'");
echo "<script language=javascript>parent.location.href='home.php?ref=dokter';</script>";
?>