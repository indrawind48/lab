<html>
<head>
<title>Edit Reagen</title>
        <!--link rel="stylesheet" href="libs/bootstrap.min.css">	
        <link rel="stylesheet" href="libs/dataTables.bootstrap.css"-->
<?php 
include ('../libs/koneksi.php');
include ("../libs/alerts.php");
	$kunjungan="kunjungan";
					
	$sql="SELECT id,kode_reagen,nama_reagen,bentuk FROM reagen  WHERE id = '".$_GET['id']."'";
	$query=mysql_query($sql); 
	$data=mysql_fetch_array($query);
	?> 
</head>
<body>

<div class="container">
<div class="row">
    <div class="col-lg-12">
        <div class="">
            <h3>Edit Reagen </h3>
        </div>
    </div>
</div>

<div class="row">
	<div class="col-md-6">
	<form id="form_input" method="POST">	

<?php  
if(isset($_POST['update']))
{
	//$code=substr($_POST['nama'],0,3);
	mysql_query("UPDATE reagen SET  nama_reagen = '".$_POST['nama']."',bentuk = upper('".$_POST['bentuk']."') WHERE id = '".$_GET['id']."'");
	echo "<script language=javascript>parent.location.href='home.php?ref=reagen';</script>";
	writeMsg('update.sukses');

	//Re-Load Data from DB
	//$sql = mysql_query("select id,kode,nama from kelompok_parameter_uji  WHERE id = '".$_GET['id']."'");
	//$data = mysql_fetch_array($sql);
}
?>

	<div class="form-group">
  		<label class="control-label" for="nama">Nama</label>
  		<input type="text" class="form-control" name="nama" id="nama" value="<?php echo $data['nama_reagen']; ?>"  required>
	</div>
	
	<div class="form-group">
  		<label class="control-label" for="bentuk">Bentuk</label>
  		<input type="text" class="form-control" name="bentuk" id="bentuk" value="<?php echo $data['bentuk']; ?>" style="text-transform:uppercase" required>
	</div>

	
	<div class="form-group">
	<input type="submit" value="Update" name="update" class="btn btn-primary">
	<a href="home.php?ref=reagen" class="btn btn-danger">Batal</a>
	</div>

	</form>
	</div>
</div>

</div>
</body>
</html>