<html>
<head>
<title>Edit Data</title>
        <!--link rel="stylesheet" href="libs/bootstrap.min.css">	
        <link rel="stylesheet" href="libs/dataTables.bootstrap.css"-->
<?php 
include ('../libs/koneksi.php');
include ("../libs/alerts.php");
	$kunjungan="kunjungan";
					
	$sql="select a.id,b.nama,a.sub_kode,a.nama_parameter,a.satuan,a.metode,a.batas_normal,a.biaya from parameter_uji a left join kelompok_parameter_uji b on (a.kode)=b.kode  WHERE a.id = '".$_GET['id']."'";
	$query=mysql_query($sql); 
	$data=mysql_fetch_array($query);
	?> 
</head>
<body>

<div class="container">
<div class="row">
    <div class="col-lg-12">
        <div class="">
            <h3>Edit Parameter Uji</h3>
        </div>
    </div>
</div>

<div class="row">
	<div class="col-md-6">
	<form id="form_input" method="POST">	

<?php  
if(isset($_POST['update']))
{
	$nama_parameter=mysql_real_escape_string($_POST['nama_parameter']);
	mysql_query("UPDATE parameter_uji SET  nama_parameter = '".$nama_parameter."',satuan = '".$_POST['satuan']."', metode = '".$_POST['metode']."',batas_normal = '".$_POST['batas_normal']."', biaya = '".$_POST['biaya']."' WHERE id = '".$_GET['id']."'");
	echo "<script language=javascript>parent.location.href='home.php?ref=parameter_uji';</script>";
	writeMsg('update.sukses');

	//Re-Load Data from DB
	//$sql = mysql_query("select id,kode,nama from kelompok_parameter_uji  WHERE id = '".$_GET['id']."'");
	//$data = mysql_fetch_array($sql);
}
?>

	<div class="form-group">
  		<label class="control-label" for="kode">Kode Kelompok</label>
  		<input type="text" class="form-control" name="kode" id="kode" value="<?php echo $data['nama']; ?>" readonly="readonly">
	</div>

	<div class="form-group">
  		<label class="control-label" for="sub_kode">Sub Kode</label>
  		<input type="text" class="form-control" name="sub_kode" id="sub_kode" value="<?php echo $data['sub_kode']; ?>" readonly="readonly">
	</div>
	<div class="form-group">
  		<label class="control-label" for="nama_parameter">Nama Parameter</label>
  		<input type="text" class="form-control" name="nama_parameter" id="nama_parameter" value="<?php echo $data['nama_parameter']; ?>" tabindex="1" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="satuan">Satuan</label>
  		<input type="text" class="form-control" name="satuan" id="satuan" value="<?php echo $data['satuan']; ?>" tabindex="2" required>
	</div>
	<div class="form-group">
  		<label class="control-label" for="metode">Metode</label>
  		<input type="text" class="form-control" name="metode" id="metode" value="<?php echo $data['metode']; ?>" tabindex="3" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="batas_normal">Batas Normal</label>
  		<input type="text" class="form-control" name="batas_normal" id="batas_normal" value="<?php echo $data['batas_normal']; ?>" tabindex="4" required>
	</div>
	<div class="form-group">
  		<label class="control-label" for="biaya">Biaya</label>
  		<input type="number" class="form-control" name="biaya" id="biaya" value="<?php echo $data['biaya']; ?>" tabindex="5" required>
	</div>

	
	<div class="form-group">
	<input type="submit" value="Update" name="update" class="btn btn-primary" tabindex="6">
	<a href="home.php?ref=parameter_uji" class="btn btn-danger" tabindex="7">Batal</a>
	</div>

	</form>
	</div>
</div>

</div>
</body>
</html>