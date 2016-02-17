<html>
    <head>
        <title>judul</title>
        <!--link rel="stylesheet" href="../libs/bootstrap.min.css"-->	
        <!--link rel="stylesheet" href="../libs/dataTables.bootstrap.css"-->
    </head>
<?php 
include ('../libs/koneksi.php');
include ('modal.php');

					
$sql="select id,kode,nama from kelompok_parameter_uji";
$query=mysql_query($sql);
	
	if(isset($_POST['tambah']))
{
	$code=substr($_POST['nama'],0,3);
	mysql_query("insert into kelompok_parameter_uji (kode,nama) values (upper('".$code."'),upper('".$_POST['nama']."'))");
	echo "<script language=javascript>parent.location.href='home.php?ref=kelompok_parameter_uji';</script>";
	writeMsg('save.sukses');
}
elseif(isset($_POST['update']))
{
	$code=substr($_POST['nama'],0,3);
	mysql_query("UPDATE kelompok_parameter_uji SET kode = upper('".$code."'), nama = upper('".$_POST['nama']."') WHERE id = '".$_POST['id']."'");
	echo "<script language=javascript>parent.location.href='home.php?ref=kelompok_parameter_uji';</script>";
	writeMsg('update.sukses');
}
elseif(isset($_POST['hapus']))
{
mysql_query("DELETE FROM kelompok_parameter_uji WHERE ID = '".$_POST['id']."'");
echo "<script language=javascript>parent.location.href='home.php?ref=kelompok_parameter_uji';</script>";
}
?>    
    
    <body>
        <div class="container">
		
            <h3 class="text-center">Kelompok Parameter Uji</h3><br>
			<!--a href="home.php?ref=add_kelompok_parameter_uji" class="btn btn-default btn-sm btn-success" style="float:right;"><span class="glyphicon glyphicon-plus"></span> Add New</a-->
			<button type="button" class="btn btn-default btn-sm btn-success" style="float:right;" data-toggle="modal" data-target="#modal_add"><span class="glyphicon glyphicon-plus"></span> Add New </button>
<br><br><br>
<!--modal-->


<!--end modal-->

									
			<div class="">
                <table id="example1" class="table table-bordered table-striped">
                    <thead>
                     <tr>
                     		<th width="10">No</th>
							<th>Kode</th>
                            <th>Nama Kelompok</th>
							<th width="100">Action</th>
                    </tr>
                    </thead>
                    <tbody>
 
<?php $no=1;	while ($data=mysql_fetch_array($query)) {			
$id = $data['id'];
$kode = $data['kode'];
$nama = $data['nama'];

   ?>               
                    
                        <tr>
                        	<td><?php echo $no ?></td>
							<td><?php echo $kode ?></td>
                            <td><?php echo $nama ?></td>
							<td align="center">
									<button type="button" class="btn btn-default btn-sm btn-primary" data-toggle="modal" data-target="#modal_edit" data-id="<?php echo $id ?>" data-nama="<?php echo $nama ?>"><span class="glyphicon glyphicon-pencil"></span></button>
									<button type="button" class="btn btn-default btn-sm btn-danger" data-toggle="modal" data-target="#modal_delete" data-id="<?php echo $id ?>" data-nama="<?php echo $nama ?>"><span class="glyphicon glyphicon-remove"></span></button>
							</td>
                        </tr>
	<?php $no++; } ?> 
                    </tbody>
                    <tfoot>
                    </tfoot>
                </table>
            </div>
        </div>	
    </body>
</html>