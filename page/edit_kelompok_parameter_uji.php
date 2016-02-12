<html>
<head>
<title>Edit Data</title>
        <!--link rel="stylesheet" href="libs/bootstrap.min.css">	
        <link rel="stylesheet" href="libs/dataTables.bootstrap.css"-->
<?php 
include ('../libs/koneksi.php');
include ("../libs/alerts.php");
	$kunjungan="kunjungan";
					
	$sql="select id,kode,nama from kelompok_parameter_uji  WHERE id = '".$_GET['id']."'";
	$query=mysql_query($sql); 
	$data=mysql_fetch_array($query);
	?> 
</head>
<body>

<div class="container">
<div class="row">
    <div class="col-lg-12">
        <div class="">
            <h3>Edit Kelompok Parameter Uji</h3>
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
	mysql_query("UPDATE kelompok_parameter_uji SET kode = upper('".$code."'), nama = upper('".$_POST['nama']."') WHERE id = '".$_GET['id']."'");
	echo "<script language=javascript>parent.location.href='home.php?ref=kelompok_parameter_uji';</script>";
	writeMsg('update.sukses');

	//Re-Load Data from DB
	//$sql = mysql_query("select id,kode,nama from kelompok_parameter_uji  WHERE id = '".$_GET['id']."'");
	//$data = mysql_fetch_array($sql);
}
?>

	<div class="form-group">
  		<label class="control-label" for="nama">Nama</label>
  		<input type="text" class="form-control" name="nama" id="nama" value="<?php echo $data['nama']; ?>" style="text-transform:uppercase"  required>
	</div>
	
	<!--div class="form-group">
  		<label class="control-label" for="alamat">Kode</label>
  		<input type="text" class="form-control" name="kode" id="kode" value="<?php echo $data['kode']; ?>" required>
	</div-->

	
	<div class="form-group">
	<input type="submit" value="Update" name="update" class="btn btn-primary">
	<a href="home.php?ref=kelompok_parameter_uji" class="btn btn-danger">Batal</a>
	</div>

	</form>
	</div>
</div>

</div>
</body>
</html>