<?php
include "../libs/koneksi.php";

mysql_query("DELETE FROM petugas WHERE ID = '".$_GET['id']."'");
echo "<script language=javascript>parent.location.href='home.php?ref=petugas';</script>";
?>