<html>
<head>
<title>Edit Data</title>
        <!--link rel="stylesheet" href="../libs/bootstrap.min.css">	
        <link rel="stylesheet" href="../libs/dataTables.bootstrap.css">
        <link href="../libs/style.css" rel="stylesheet"-->
<?php 
include ('../libs/koneksi.php');
include ("../libs/alerts.php");
	//$kunjungan="kunjungan";
					
	//$sql="select id,tanggal,id_pasien,nama,alamat,jenis_pasien,dokter_pemeriksa from ".$kunjungan."  WHERE id = '".$_GET['id']."'";
	//$query=mysql_query($sql); 
	//$data=mysql_fetch_array($query);
	?> 
</head>
<body>

<div class="container">
<div class="row">
    <div class="col-lg-12">
        <div class="page-header1">
            <h3>Tambah Dokter </h3>
        </div>
    </div>
</div>
<br><br>
<div class="row">
	<div class="col-md-6">
	<form id="form_input" method="POST">	

<?php  
if(isset($_POST['tambah']))
{
	$code=substr($_POST['nama'],0,3);
	mysql_query("insert into dokter (kode,nama_dokter,alamat_dokter,no_telp) values ('".$code."','".$_POST['nama_dokter']."','".$_POST['alamat_dokter']."','".$_POST['no_telp']."')");
	echo "<script language=javascript>parent.location.href='home.php?ref=dokter';</script>";
	writeMsg('save.sukses');

	//Re-Load Data from DB
	//$sql = mysql_query("SELECT id,tanggal,id_pasien,nama,alamat,jenis_pasien,dokter_pemeriksa WHERE id = '".$_GET['id']."'");
	//$data = mysql_fetch_array($sql);
}
?>

	<div class="form-group">
  		<label class="control-label" for="nama_dokter">Nama</label>
  		<input type="text" class="form-control" name="nama_dokter" id="nama_dokter" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="alamat_dokter">Alamat</label>
  		<textarea type="text" class="form-control" name="alamat_dokter" id="alamat_dokter" required></textarea>
	</div>
	
	<div class="form-group">
  		<label class="control-label" for="no_telp">No Telephone</label>
  		<input type="number" class="form-control" name="no_telp" id="no_telp" maxlength="12" style="width:25%;" required>
	</div>

	<div class="form-group">
	<input type="submit" value="Tambah" name="tambah" class="btn btn-primary">
	<a href="home.php?ref=dokter" class="btn btn-danger">Batal</a>
	</div>

	</form>
	</div>
</div>

</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!--script src="../libs/jquery.min.js"></script-->
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!--script src="../libs/bootstrap.min.js"></script>
	<script src="../libs/jquery.dataTables.min.js"></script>
    <script src="../libs/dataTables.bootstrap.js"></script>	
    <script src="../libs/jquery.validate.min.js"></script>
	<script src="../libs/additional-methods.min.js"></script>
	<script src="../libs/bootstrap-datetimepicker.js"></script>
	<script src="../libs/bootstrap-datetimepicker.id.js"></script>
	
	<script src="../libs/highcharts.js"></script>
	<script src="../libs/data.js"></script>
	<script type="text/javascript">
	var $nocon = jQuery.noConflict();
		$nocon(function () {
    $nocon('#chrtbar').highcharts({
        data: {
            table: 'chrt'
        },
        chart: {
            type: 'line'
        },
        title: {
            text: 'Statistik Pasien Dan Pemeriksaan'
        },
        yAxis: {
            allowDecimals: false,
            title: {
                text: 'Units'
            }
        },
        tooltip: {
            formatter: function () {
                return '<b>' + this.series.name + '</b><br/>' +
                    this.point.y + ' ' + this.point.name.toLowerCase();
            }
        }
    });
});
	</script>
	
	<script>
	var $jnoc3 = jQuery.noConflict();
			$jnoc3('.form_date').datetimepicker({
			language:  'id',
			weekStart: 1,
			todayBtn:  1,
			autoclose: 1,
			todayHighlight: 1,
			startView: 2,
			minView: 2,
			forceParse: 0
			});
	</script>
	<script>
	var $jnoc1 = jQuery.noConflict();
	$jnoc1(document).ready(function () {
    $menuLeft = $jnoc1('.pushmenu-left');
    $nav_list = $jnoc1('#nav_list');
    $nav_list.click(function(){
        $jnoc1(this) .toggleClass('active') ;
        $jnoc1('.pushmenu-push').toggleClass('pushmenu-push-toright');
        $menuLeft.toggleClass('pushmenu-open');
        });
    });
	</script>
    
    <script type="text/javascript">
    var $jnoc = jQuery.noConflict();
	$jnoc(function() {
    $jnoc('#example1').dataTable();
    });
    </script>
	
<script>
var $jnoc2 = jQuery.noConflict();
$jnoc2("#form_input").validate();
</script-->

</body>
</html>