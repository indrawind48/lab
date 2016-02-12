<html>
<head>
<title>Edit Data</title>
        <!--link rel="stylesheet" href="libs/bootstrap.min.css">	
        <link rel="stylesheet" href="libs/dataTables.bootstrap.css"-->
<?php 
include ('../libs/koneksi.php');
include ("../libs/alerts.php");
	$kunjungan="kunjungan";
					
	$sql="select id,jenis from jenis_pasien  WHERE id = '".$_GET['id']."'";
	$query=mysql_query($sql); 
	$data=mysql_fetch_array($query);
	?> 
</head>
<body>

<div class="container">
<div class="row">
    <div class="col-lg-12">
        <div class="">
            <h3>Edit Jenis Pasien</h3>
        </div>
    </div>
</div>

<div class="row">
	<div class="col-md-6">
	<form id="form_input" method="POST">	

<?php  
if(isset($_POST['update']))
{
	$code=substr($_POST['jenis'],0,3);
	mysql_query("UPDATE jenis_pasien SET  jenis = upper('".$_POST['jenis']."'), kode = upper('".$code."') WHERE id = '".$_GET['id']."'");
	echo "<script language=javascript>parent.location.href='home.php?ref=jenis_pasien';</script>";
	writeMsg('update.sukses');

	//Re-Load Data from DB
	//$sql = mysql_query("select id,kode,nama from kelompok_parameter_uji  WHERE id = '".$_GET['id']."'");
	//$data = mysql_fetch_array($sql);
}
?>

	<div class="form-group">
  		<label class="control-label" for="jenis">Jenis Pasien</label>
  		<input type="text" class="form-control" name="jenis" id="jenis" style="text-transform:uppercase" value="<?php echo $data['jenis']; ?>" required>
	</div>
	
	<!--div class="form-group">
  		<label class="control-label" for="alamat">Kode</label>
  		<input type="text" class="form-control" name="kode" id="kode" value="<?php// echo $data['kode']; ?>" required>
	</div-->

	
	<div class="form-group">
	<input type="submit" value="Update" name="update" class="btn btn-primary">
	<a href="home.php?ref=jenis_pasien" class="btn btn-danger">Batal</a>
	</div>

	</form>
	</div>
</div>

</div>
</body>
</html>