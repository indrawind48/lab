<html>
<head>
<title>Edit Data</title>
        <!--link rel="stylesheet" href="libs/bootstrap.min.css">	
        <link rel="stylesheet" href="libs/dataTables.bootstrap.css"-->
<?php 
include ('../libs/koneksi.php');
include ("../libs/alerts.php");
	$kunjungan="kunjungan";
					
	$sql="select id,nama_dokter,alamat_dokter,no_telp from dokter  WHERE id = '".$_GET['id']."'";
	$query=mysql_query($sql); 
	$data=mysql_fetch_array($query);
	?> 
</head>
<body>

<div class="container">
<div class="row">
    <div class="col-lg-12">
        <div class="">
            <h3>Edit Dokter </h3>
        </div>
    </div>
</div>

<div class="row">
	<div class="col-md-6">
	<form id="form_input" method="POST">	

<?php  
if(isset($_POST['update']))
{
	$code=substr($_POST['nama'],0,3);
	mysql_query("UPDATE dokter SET nama_dokter = '".$_POST['nama_dokter']."', alamat_dokter = '".$_POST['alamat_dokter']."', no_telp = '".$_POST['no_telp']."', kode = '".$code."' WHERE id = '".$_GET['id']."'");
	echo "<script language=javascript>parent.location.href='home.php?ref=dokter';</script>";
	writeMsg('update.sukses');

	//Re-Load Data from DB
	//$sql = mysql_query("select id,kode,nama from kelompok_parameter_uji  WHERE id = '".$_GET['id']."'");
	//$data = mysql_fetch_array($sql);
}
?>

	<div class="form-group">
  		<label class="control-label" for="nama_dokter">Nama</label>
  		<input type="text" class="form-control" name="nama_dokter" id="nama_dokter" value="<?php echo $data['nama_dokter']; ?>" required>
	</div>
	
	<div class="form-group">
  		<label class="control-label" for="alamat_dokter">Alamat</label>
  		<input type="text" class="form-control" name="alamat_dokter" id="alamat_dokter" value="<?php echo $data['alamat_dokter']; ?>" required>
	</div>
	
	<div class="form-group">
  		<label class="control-label" for="no_telp">No Telephone</label>
  		<input type="number" class="form-control" name="no_telp" id="no_telp" value="<?php echo $data['no_telp']; ?>" maxlength="12" style="width:25%;" required>
	</div>
	
	<div class="form-group">
	<input type="submit" value="Update" name="update" class="btn btn-primary">
	<a href="home.php?ref=dokter" class="btn btn-danger">Batal</a>
	</div>

	</form>
	</div>
</div>

</div>
</body>
</html>