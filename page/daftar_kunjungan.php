<html>
    <head>
        <title>judul</title>
        <!--link rel="stylesheet" href="../libs/bootstrap.min.css"-->	
        <!--link rel="stylesheet" href="../libs/dataTables.bootstrap.css"-->
    </head>
<?php 
					
	$sql="select a.id,a.tanggal,a.kode,a.nama_pengunjung,a.alamat_pengunjung,b.jenis,a.dokter_pengirim from kunjungan_pasien a left join jenis_pasien b on (a.jenis_pengunjung)=b.kode";
	$query=mysql_query($sql); ?>    
    
    <body>
        <div class="container">
            <h3 class="text-center">Daftar Kunjungan Pasien</h3>
			<form>
            <table width="327" border="0">
            <tr>
            <td width="111">Periode</td>
            <td width="300">
            <select name="periode" class="form-control" id="periode">
            <option value="harian">Harian</option>
            <option value="bulanan">Bulanan</option>
			<option value="tahunan">Tahunan</option>

            </select>
            </td>
            </tr>
            <tr>
            <td>Tanggal</td>
            <td><input type="text" class="form-control form_date " data-date-format="yyyy-mm-dd" name="tanggal" id="tanggal" required></td>
            </tr>
            <tr>
              <td height="41">&nbsp;</td>
              <td><span class="form-group">
                <input type="submit" value="FILTER" name="filter" class="btn btn-primary">
              </span></td>
            </tr>
            </table> 
			</form method="post">
            <div class="form-group"></div>
			<a href="home.php?ref=input_registrasi" class="btn btn-default btn-sm btn-success" style="float:right;"><span class="glyphicon glyphicon-plus"></span> Add New</a>
<br><br><br>
            <div class="box-body table-responsive">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                     <tr>
                     		<th width='10'>No</th>
                            <th>Tanggal</th>
                            <th>No Reg</th>
                            <th>Nama</th>
                            <th>Alamat</th>
                            <th>Jenis Pasien</th>
                            <th>Dokter Pengirim</th>
                            
                      </tr>
                    </thead>
                    <tbody>
 
<?php $no=1;	while ($data=mysql_fetch_array($query)) {			

$tanggal = $data['tanggal'];
$id_pasien = $data['kode'];
$nama = $data['nama_pengunjung'];
$alamat = $data['alamat_pengunjung'];
$jenis_pasien = $data['jenis'];
$dokter_pemeriksa = $data['dokter_pengirim'];


   ?>               
                    
                        <tr>
                        	<td><?php echo $no ?></td>
                        	<td><?php echo $tanggal ?></td>
                            <td><?php echo $id_pasien ?></td>
                            <td><?php echo $nama ?></td>
                            <td><?php echo $alamat ?></td>
                            <td><?php echo $jenis_pasien ?></td>
							<td><?php echo $dokter_pemeriksa ?></td>
							
                        </tr>
	<?php $no++; } ?>                                                
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