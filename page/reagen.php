<html>
    <head>
        <title>judul</title>
        <!--link rel="stylesheet" href="../libs/bootstrap.min.css"-->	
        <!--link rel="stylesheet" href="../libs/dataTables.bootstrap.css"-->
    </head>
<?php 
include ('../libs/koneksi.php');

					
	$sql="SELECT a.id,a.kode_reagen,a.nama_reagen,a.bentuk,a.stock,b.kode_parameter FROM reagen a left join reagen_parameter_array b on (a.kode_reagen)=b.kode_reagen";
	$query=mysql_query($sql); ?>    
    
    <body>
        <div class="container">
            <h3 class="text-center">Data Reagen</h3><br>
			<a href="home.php?ref=add_reagen" class="btn btn-default btn-sm btn-success" style="float:right;"><span class="glyphicon glyphicon-plus"></span> Add New</a>
<br><br><br>

            <div class="">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                     <tr>
                     		<th width="10">No</th>
                            <th width="100">Kode Reagen</th>
                            <th>Nama Reagen</th>
                            <th>Bentuk</th>
                            <th width="100">Stock</th>
                            <th >Parameter</th>
							<th width="150">Action</th>
                    </tr>
                    </thead>
                    <tbody>
 
<?php $no=1;	while ($data=mysql_fetch_array($query)) {			

$kode_reagen = $data['kode_reagen'];
$nama_reagen = $data['nama_reagen'];
$bentuk = $data['bentuk'];
$stock = $data['stock'];
$parameter = $data['kode_parameter'];
$sql1="SELECT group_concat(' [',b.nama_parameter,'] ')nama_parameter FROM reagen_parameter a LEFT JOIN parameter_uji b ON (b.sub_kode)=a.kode_parameter WHERE a.kode_reagen='".$kode_reagen."'";
$query1=mysql_query($sql1);
$row=mysql_fetch_assoc($query1);
$nama_parameter=$row['nama_parameter'];
  //echo $sql1;
  ?>               
                    
                        <tr>
                        	<td><?php echo $no ?></td>
                            <td><?php echo $kode_reagen ?></td>
                            <td><?php echo $nama_reagen ?></td>
                            <td><?php echo $bentuk ?></td>
                            <td><?php echo $stock ?></td>
                            <td><?php echo $nama_parameter  ?></td>
							<td align="center">
									<a name="set" href="home.php?ref=parameter_reagen&id=<?php echo $data['id']; ?>" class="btn btn-default btn-sm btn-success"><span class="glyphicon glyphicon-pushpin"></span></a>
							
									<a name="tambah" href="home.php?ref=stock_reagen&id=<?php echo $data['id']; ?>" class="btn btn-default btn-sm btn-warning"><span class="glyphicon glyphicon-plus"></span></a> 
									
									<a name="update" href="home.php?ref=edit_reagen&id=<?php echo $data['id']; ?>" class="btn btn-default btn-sm btn-primary"><span class="glyphicon glyphicon-pencil"></span></a> 
									
									<a name="delete" href="home.php?ref=del_reagen&id=<?php echo $data['id']."&kode=".$data['kode_reagen']; ?>" onclick ="if (!confirm('Apakah Anda yakin akan menghapus data ini?')) return false;"class="btn btn-default btn-sm btn-danger"><span class="glyphicon glyphicon-remove"></span></a>
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