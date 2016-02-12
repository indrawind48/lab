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
            <h3>Tambah Parameter Uji </h3>
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
$query = "SELECT max(sub_kode) as maxID FROM parameter_uji where kode='".$_POST['kode']."'";
$hasil = mysql_query($query);
$data  = mysql_fetch_array($hasil);
$idMax = $data['maxID'];
$noUrut =substr($idMax, 4, 3);
$noUrut++;
$char = $_POST['kode']."-";
$new = $char . sprintf("%03s", $noUrut);
//echo $newID;
$cek=substr($new,4,3);
//echo $cek;
if($cek == 000) 
{
$newID = $char . sprintf("%03s", $noUrut+1);
}
else
{
$newID = $char . sprintf("%03s", $noUrut);
} 
$nama_parameter=mysql_real_escape_string($_POST['nama_parameter']);
	mysql_query("insert into parameter_uji (kode,sub_kode,nama_parameter,satuan,metode,batas_normal,biaya) values ('".$_POST['kode']."','".$newID."','".$nama_parameter."','".$_POST['satuan']."','".$_POST['metode']."','".$_POST['batas_normal']."','".$_POST['biaya']."')");
	echo "<script language=javascript>parent.location.href='home.php?ref=parameter_uji';</script>";
	writeMsg('save.sukses');

	//Re-Load Data from DB
	//$sql = mysql_query("SELECT id,tanggal,id_pasien,nama,alamat,jenis_pasien,dokter_pemeriksa WHERE id = '".$_GET['id']."'");
	//$data = mysql_fetch_array($sql);
}
?>

	<div class="form-group">
  		<label class="control-label" for="kode">Kelompok Parameter</label>
  		<!--input type="text" class="form-control" name="kode" id="kode" -->
		<select name="kode" class="form-control" tabindex="1" required >
        <option value=""></option>
        <?php
		$sql=mysql_query("select * from kelompok_parameter_uji ");
		while($data=mysql_fetch_array($sql, MYSQL_BOTH )){
		echo "<option value=$data[kode]>";
		echo "".$data[nama]."";
		} 	 
		
		?>
		</select>  
	</div>

	<!--div class="form-group">
  		<label class="control-label" for="sub_kode">Kode</label>
  		<input type="text" class="form-control" name="sub_kode" id="sub_kode" value="HEM-" maxlength="7" style="width:15%; text-transform:uppercase;" >
	</div-->
	<div class="form-group">
  		<label class="control-label" for="nama_parameter">Nama Parameter</label>
  		<input type="text" class="form-control" name="nama_parameter" id="nama_parameter" tabindex="2" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="satuan">Satuan</label>
  		<input type="text" class="form-control" name="satuan" id="satuan" tabindex="3" required>
	</div>
	<div class="form-group">
  		<label class="control-label" for="metode">Metode</label>
  		<input type="text" class="form-control" name="metode" id="metode" tabindex="4" required>
	</div>

	<div class="form-group">
  		<label class="control-label" for="batas_normal">Batas Normal</label>
  		<input type="text" class="form-control" name="batas_normal" id="batas_normal" tabindex="5" required>
	</div>
	<div class="form-group">
  		<label class="control-label" for="biaya">Biaya (Rp)</label>
  		<input type="number" class="form-control" name="biaya" id="biaya" tabindex="6" required>
	</div>

	

	<div class="form-group">
	<input type="submit" value="Tambah" name="tambah" class="btn btn-primary" tabindex="7">
	<a href="home.php?ref=parameter_uji" class="btn btn-danger" tabindex="8">Batal</a>
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