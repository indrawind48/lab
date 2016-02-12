<html>
    <head>
        <title>Paket Pemeriksaan</title>
        <!--link rel="stylesheet" href="../libs/bootstrap.min.css"-->	
        <!--link rel="stylesheet" href="../libs/dataTables.bootstrap.css"-->
    </head>
<?php 
include ('../libs/koneksi.php');
/*
			  $s=mysql_query("select kode from paket_nama GROUP BY kode");
			while ($d=mysql_fetch_array($s)) {
			$k=$d['kode'];

$sql1="select nama_parameter from paket_nama where kode='".$k."'";
$query1=mysql_query($sql1);
while($data=mysql_fetch_array($query1)) {
$namap=$data['nama_parameter'];

			//echo $namap;
			
}
}
	*/
					
	$sql="SELECT id,kode,nama_paket,parameter,biaya FROM paket_pemeriksaan";
	//$sql="SELECT a.id,a.kode,a.nama_paket,a.parameter,a.biaya,b.total FROM paket_pemeriksaan a LEFT JOIN paket_total b ON (a.kode)=b.kode";
	$query=mysql_query($sql);    

	?> 
    <body>
        <div class="container">
            <h3 class="text-center">Paket Pemeriksaan</h3><br>
			<a href="home.php?ref=add_paket" class="btn btn-default btn-sm btn-success" style="float:right;"><span class="glyphicon glyphicon-plus"></span> Add New</a>
<br><br><br>

            <div class="">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                     <tr>
                     		<th width="10">No</th>
							<th>Kode Paket</th>
							<th>Nama Paket</th>
                            <th>Parameter Uji</th>
							<th width="80">Biaya</th>
							<th width="50">Action</th>
                    </tr>
                    </thead>
                    <tbody>
 
<?php $no=1;	while ($data=mysql_fetch_array($query)) {			

$kode = $data['kode'];
$nama = $data['nama_paket'];
$parameter = $data['parameter'];
$biaya = $data['biaya'];
//echo $nama;
//$sql2=mysql_query("SELECT GROUP_CONCAT(' [',a.nama_parameter,'] ')nama_parameter FROM paket_nama a LEFT JOIN parameter_uji b ON (a.parameter)=b.sub_kode WHERE a.kode='".$kode."'");
$sql2=mysql_query("SELECT GROUP_CONCAT(' [',nama_parameter,'] ') nama_parameter FROM paket_nama WHERE kode='".$kode."'");
$row=mysql_fetch_assoc($sql2);  
$nama_parameter=$row['nama_parameter']
  ?>               
                    
                        <tr>
                        	<td><?php echo $no ?></td>
							<td><?php echo $kode ?></td>
                            <td><?php echo $nama ?></td>
                            <td><?php echo $nama_parameter ?></td>
							<td><?php echo "  Rp ".number_format($biaya,0,'.','.') ?></td>
							<td align="center">
									<a name="update" href="home.php?ref=edit_paket&id=<?php echo $data['id']."&kode=".$data['kode']; ?>" class="btn btn-default btn-sm btn-primary"><span class="glyphicon glyphicon-pencil"></span></a> 
									
									<a name="delete" href="home.php?ref=del_paket&id=<?php echo $data['id']."&kode=".$data['kode']; ?>" onclick ="if (!confirm('Apakah Anda yakin akan menghapus data ini?')) return false;"class="btn btn-default btn-sm btn-danger"><span class="glyphicon glyphicon-remove"></span></a>
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