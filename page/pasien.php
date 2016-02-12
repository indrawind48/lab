<html>
    <head>
        <title>judul</title>
        <!--link rel="stylesheet" href="../libs/bootstrap.min.css"-->	
        <!--link rel="stylesheet" href="../libs/dataTables.bootstrap.css"-->
    </head>
<?php 
include ('../libs/koneksi.php');

					
	$sql="select a.id,a.kode,a.id_pasien,a.nama,a.alamat,a.tempat_lahir,a.tanggal_lahir,b.nama_pekerjaan,a.no_telp from pasien a left join pekerjaan b on (a.pekerjaan)=b.kode";
	$query=mysql_query($sql); ?>    
    
    <body>
        <div class="container">
            <h3 class="text-center">Data Pasien</h3><br>
			<a href="home.php?ref=input_registrasi" class="btn btn-default btn-sm btn-success" style="float:right;"><span class="glyphicon glyphicon-plus"></span> Add New</a>
<br><br><br>
            <div class="box-body table-responsive">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                     <tr>
                     		<th width="10">No</th>
                            <th>ID Pasien</th>
							<th>Nama</th>
							<th>Alamat</th>
							<th>Tempat Lahir</th>
							<th>Tanggal Lahir</th>
							<th>Pekerjaan</th>
							<th>No Telepon</th>
							<th width="100">Action</th>
                    </tr>
                    </thead>
                    <tbody>
 
<?php $no=1;	while ($data=mysql_fetch_array($query)) {			

$kode = $data['kode'];
$id_pasien = $data['id_pasien'];
$nama = $data['nama'];
$alamat = $data['alamat'];
$tempat_lahir = $data['tempat_lahir'];
$tanggal_lahir = $data['tanggal_lahir'];
$pekerjaan = $data['nama_pekerjaan'];
$no_telp = $data['no_telp'];

   ?>               
                    
                        <tr>
                        	<td><?php echo $no ?></td>
                            <td><?php echo $id_pasien ?></td>
							<td><?php echo $nama ?></td>
                            <td><?php echo $alamat ?></td>
							<td><?php echo $tempat_lahir ?></td>
                            <td><?php echo $tanggal_lahir ?></td>
							<td><?php echo $pekerjaan ?></td>
                            <td><?php echo $no_telp ?></td>
							<td align="center">
									<a name="update" href="home.php?ref=add_pemeriksaan&id=<?php echo $data['id']."&kode=".$data['kode']; ?>" class="btn btn-default btn-sm btn-warning"><span class="glyphicon glyphicon-search"></span></a> 
							
									<a name="update" href="home.php?ref=edit_pasien&id=<?php echo $data['id']."&kode=".$data['kode']; ?>" class="btn btn-default btn-sm btn-primary"><span class="glyphicon glyphicon-pencil"></span></a> 
									
									<a name="delete" href="home.php?ref=del_pasien&id=<?php echo $data['id']."&kode=".$data['kode']; ?>" onclick ="if (!confirm('Apakah Anda yakin akan menghapus data ini?')) return false;"class="btn btn-default btn-sm btn-danger"><span class="glyphicon glyphicon-remove"></span></a>
							</td>
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