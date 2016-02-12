<html>
    <head>
        <title>judul</title>
        <!--link rel="stylesheet" href="../libs/bootstrap.min.css"-->	
        <!--link rel="stylesheet" href="../libs/dataTables.bootstrap.css"-->
    </head>
<?php 

	
	$sql="select a.tanggal,a.kode,a.id_pasien,b.nama from parameter_pasien a left join pasien b on (a.id_pasien)=b.id_pasien where a.tanggal='".date('Y-m-d')."'";
	$query=mysql_query($sql); 
	//echo $sql;
	
	if(isset($_POST['tanggal']) AND ($_POST['periode']=="semua"))
{	
	$sql="select a.tanggal,a.kode,a.id_pasien,b.nama from parameter_pasien a left join pasien b on (a.id_pasien)=b.id_pasien";
	$query=mysql_query($sql); 
	$cek=$_POST['periode'];
	
}	elseif(isset($_POST['tanggal']) AND ($_POST['periode']=="harian"))
{
	$sql="select a.tanggal,a.kode,a.id_pasien,b.nama from parameter_pasien a left join pasien b on (a.id_pasien)=b.id_pasien where a.tanggal='".$_POST['tanggal']."'";
	$query=mysql_query($sql); 
	$cek=$_POST['tanggal'];
	
} elseif (isset ($_POST['tanggal']) AND ($_POST['periode']=="bulanan")) 
{
	$bln=substr($_POST['tanggal'],5,2);
	$thn=substr($_POST['tanggal'],0,4);
	$sql="select a.tanggal,a.kode,a.id_pasien,b.nama from parameter_pasien a left join pasien b on (a.id_pasien)=b.id_pasien WHERE MONTH(a.tanggal)='".$bln."' AND YEAR(a.tanggal)='".$thn."'";
	$query=mysql_query($sql);
	$cek=$_POST['periode']." (".$bln." - ".$thn.")";	
		
} elseif (isset ($_POST['tanggal']) AND ($_POST['periode']=="tahunan")) 
{
	$thn=substr($_POST['tanggal'],0,4);
	$sql="select a.tanggal,a.kode,a.id_pasien,b.nama from parameter_pasien a left join pasien b on (a.id_pasien)=b.id_pasien WHERE  YEAR(a.tanggal)='".$thn."'";
	$query=mysql_query($sql); 
	$cek=$_POST['periode']." (".$thn.")";
}
	?>    
    
    <body>
        <div class="container">
            <h2 class="text-center">Index Hasil Uji</h2>
            <form  id="form_input" method="POST">
            <table width="327" border="0">
            <tr>
            <td width="111">Periode</td>
            <td width="300">
            <select name="periode" class="form-control" id="periode">
			<option value="semua">Semua</option>
            <option value="harian">Harian</option>
            <option value="bulanan">Bulanan</option>
			<option value="tahunan">Tahunan</option>

            </select>
            </td>
            </tr>
            <tr>
            <td>Tanggal</td>
            <td><input type="text" class="form-control form_date " data-date-format="yyyy-mm-dd" name="tanggal" id="tanggal" value="<?php echo date('Y-m-d'); ?>" required></td>
            </tr>
            <tr>
              <td height="41">&nbsp;</td>
              <td><span class="form-group">
                <input type="submit" value="FILTER" name="filter" class="btn btn-primary">
              </span></td>
            </tr>
            </table> 
			</form>
            <br><br>
			<div >Periode Data : <?php echo $cek ?></div><br>
            <div class="form-group"></div>
            <div class="box-body table-responsive">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                     <tr>
                     		<th width="10">No</th>
                            <th>Tanggal</th>
                            <th>ID Pasien</th>
                            <th>No Registrasi</th>
                            <th>Nama Pasien</th>
							<th>Keterangan</th>
                            
                      </tr>
                    </thead>
                    <tbody>
 <?php 
	$m=mysql_query("select tanggal,parameter_uji,kode,paket from parameter_pasien where `load`='Y'");
	while ($rw=mysql_fetch_array($m)) {
	$tgl = $rw['tanggal'];
	$reg = $rw['kode'];
	$para = explode(',',$rw['parameter_uji']);
	$j_paket = explode(',',$rw['paket']);
	$pp = count($para);
	//echo $para;
	$indeks=0; 
while($indeks < count($para)){ 
//echo $para[$indeks]; 
//echo "<br>";
$sql1="insert ignore pemeriksaan (tanggal,parameter,kode,paket) values ('".$tgl."','".$para[$indeks]."','".$reg."','".$j_paket[$indeks]."')";
$query1=mysql_query($sql1);
//echo $sql1;



$indeks++; 
}}
	
	
  ?>
<?php $no=1; 	while ($data=mysql_fetch_array($query)) {			

$tanggal = $data['tanggal']; 
$kode = $data['kode']; 
$nama = $data['nama'];
$id_pasien=$data['id_pasien'];
//$sql1="insert into pemeriksaan (kode) values ('".$kode."')";
//$query1=mysql_query($sql1);
//echo $sql1;
   ?>               
                    
                        <tr>
                        	<td><?php echo $no ?></td>
							<td><?php echo $tanggal ?></td>
							<td><?php echo $id_pasien ?></td>
                        	<td><?php  echo "<a href=home.php?ref=input_hasil&kode=".$kode."&tanggal=".$tanggal."&id_pasien=".$id_pasien."&nama=".$nama." target=>".$kode."</a>"; ?></td>
                            <td><?php echo $nama ?></td>


                            <td><?php  	$k=mysql_query("select SUM(IF(tag='N',pending,0))belum_selesai,SUM(IF(tag='Y',pending,0))sudah_selesai from pemeriksaan where kode='" .$kode. "'");
										$l=mysql_fetch_array($k); 
										$belum_selesai=$l['belum_selesai'];
										$sudah_selesai=$l['sudah_selesai']; 
										$tot = $sudah_selesai+$belum_selesai;   
										echo "Pemeriksaan Belum Selesai :".$belum_selesai."<br>";  
										echo "Pemeriksaan Sudah Selesai :".$sudah_selesai."<br>"; 
										echo "Total Pemeriksaan :".$tot."<br>";  ?></td>
                        </tr>
	<?php   $no++; } 
	$sql=mysql_query("UPDATE pemeriksaan a, parameter_uji b SET a.biaya=b.biaya  WHERE a.parameter = b.sub_kode;");
	//echo $sql;
	?>                                                
                    </tbody>
                    <tfoot>
                    </tfoot>
              </table>
          </div><!-- /.box-body -->
    </div>	
        <!--script src="table/jquery-1.11.1.min.js"></script-->
        <!--script src="table/bootstrap.min.js"></script-->
        <!--script src="table/jquery.dataTables.min.js"></script-->
        <!--script src="table/dataTables.bootstrap.js"></script-->	
        <!--script type="text/javascript">
            $(function() {
                $('#example1').dataTable();
            });
        </script-->
    </body>
</html>