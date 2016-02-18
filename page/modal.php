<?php include ('libs/koneksi.php'); ?>
<!--Modal Tambah kelompok parameter uji-->
<div id="modal_add_kelompok_parameter_uji" class="modal fade" role="dialog">
  <div class="modal-dialog ">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Tambah Kelompok Parameter Uji</h4>
      </div>
			<form id="form_input" method="POST">
      <div class="modal-body"> 
			<div class="form-group">
			<label class="control-label" for="nama">Nama Kelompok</label>
			<input type="text" class="form-control" name="nama" id="nama" style="text-transform:uppercase" required >
			</div>		
      </div>
      <div class="modal-footer">
		<input type="submit" value="Tambah" name="tambah" class="btn btn-primary">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
	  </form>
    </div>

  </div>
</div>
<!--Modal Edit Kelompok Parameter uji-->
<div id="modal_edit_kelompok_parameter_uji" class="modal fade" role="dialog">
	<div class="modal-dialog ">
	
	<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Edit Kelompok Parameter Uji</h4>
		</div>
			<form id="form_input" method="POST">
		<div class="modal-body">
			<div class="form-group">
			<label class="control-label" for="nama">Nama</label>
			<input type="text" class="form-control" name="nama" style="text-transform:uppercase"  required>
			<input type="hidden" class="form-control" name="id">
			</div>
		</div>
		<div class="modal-footer">
			<input type="submit" value="Update" name="update" class="btn btn-primary">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
			</form>
	</div>

	</div>
</div>
<!--Modal Hapus Kelompok Parameter uji-->
<div id="modal_delete_kelompok_parameter_uji" class="modal fade" role="dialog">
	<div class="modal-dialog ">

	<!-- Modal content-->
	<div class="modal-content">
			<form id="form_input" method="POST">
		<div class="modal-body">
			<div class="form-group">
			<br>
			<label class="control-label" for="nama">Hapus Data <a id="hapus_id"></a> ?</label>
			<input type="hidden" class="form-control" name="id">
			</div>
		</div>
		<div class="modal-footer">
			<input type="submit" value="Hapus" name="hapus" class="btn btn-danger">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
			</form>
	</div>

	</div>
</div>
<!--Modal Tambah parameter uji-->
<div id="modal_add_parameter_uji" class="modal fade" role="dialog">
  <div class="modal-dialog ">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Tambah Parameter Uji</h4>
      </div>
			<form id="form_input" method="POST">
      <div class="modal-body"> 
		<div class="form-group">
  		<label class="control-label" for="kode">Kelompok Parameter</label>
  		<!--input type="text" class="form-control" name="kode" id="kode" -->
		<select name="kode" class="form-control" tabindex="1" required >
        <option value="" hidden>Silahkan Pilih Kelompok Parameter</option>
			<?php
			$sql=mysql_query("select kode,nama from kelompok_parameter_uji ");
			while($data=mysql_fetch_array($sql, MYSQL_BOTH )){
			echo "<option value=$data[kode]>";
			echo "".$data['nama']."";
			} 	 
			?>
		</select>  
		</div>
		<div class="form-group">
			<label class="control-label" for="nama_parameter">Nama Parameter</label>
			<input type="text" class="form-control" name="nama_parameter" id="nama_parameter" tabindex="1" required>
		</div>

		<div class="form-group">
			<label class="control-label" for="satuan">Satuan</label>
			<input type="text" class="form-control" name="satuan" id="satuan" tabindex="1" required>
		</div>
		<div class="form-group">
			<label class="control-label" for="metode">Metode</label>
			<input type="text" class="form-control" name="metode" id="metode" tabindex="1" required>
		</div>

		<div class="form-group">
			<label class="control-label" for="batas_normal">Batas Normal</label>
			<input type="text" class="form-control" name="batas_normal" id="batas_normal" tabindex="1" required>
		</div>
		<div class="form-group">
			<label class="control-label" for="biaya">Biaya (Rp)</label>
			<input type="number" class="form-control" name="biaya" id="biaya" tabindex="1" required>
		</div>	
	</div>
      <div class="modal-footer">
		<input type="submit" value="Tambah" name="tambah" class="btn btn-primary">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
	  </form>
    </div>

  </div>
</div>
<!--Modal Edit Parameter uji-->
<div id="modal_edit_parameter_uji" class="modal fade" role="dialog">
	<div class="modal-dialog ">
	
	<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Edit Parameter Uji</h4>
		</div>
			<form id="form_input" method="POST">
		<div class="modal-body">
			<!--div class="form-group">
				<label class="control-label" for="kode">Nama Kelompok</label>
				<input type="text" class="form-control" name="kode" id="kode" value="<?php echo $data['nama']; ?>" readonly="readonly">
			</div-->
			<div class="form-group">
				<label class="control-label" for="sub_kode">Sub Kode</label>
				<input type="text" class="form-control" name="sub_kode" id="sub_kode" value="<?php echo $data['sub_kode']; ?>" readonly="readonly">
				<input type="hidden" class="form-control" name="id">
			</div>
			<div class="form-group">
				<label class="control-label" for="nama_parameter">Nama Parameter</label>
				<input type="text" class="form-control" name="nama_parameter" id="nama_parameter" value="<?php echo $data['nama_parameter']; ?>" tabindex="1" required>
			</div>

			<div class="form-group">
				<label class="control-label" for="satuan">Satuan</label>
				<input type="text" class="form-control" name="satuan" id="satuan" value="<?php echo $data['satuan']; ?>" tabindex="1" required>
			</div>
			<div class="form-group">
				<label class="control-label" for="metode">Metode</label>
				<input type="text" class="form-control" name="metode" id="metode" value="<?php echo $data['metode']; ?>" tabindex="1" required>
			</div>

			<div class="form-group">
				<label class="control-label" for="batas_normal">Batas Normal</label>
				<input type="text" class="form-control" name="batas_normal" id="batas_normal" value="<?php echo $data['batas_normal']; ?>" tabindex="1" required>
			</div>
			<div class="form-group">
				<label class="control-label" for="biaya">Biaya</label>
				<input type="number" class="form-control" name="biaya" id="biaya" value="<?php echo $data['biaya']; ?>" tabindex="1" required>
			</div>
		</div>
		<div class="modal-footer">
			<input type="submit" value="Update" name="update" class="btn btn-primary">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
			</form>
	</div>

	</div>
</div>
<!--Modal Hapus Parameter uji-->
<div id="modal_delete_parameter_uji" class="modal fade" role="dialog">
	<div class="modal-dialog ">

	<!-- Modal content-->
	<div class="modal-content">
			<form id="form_input" method="POST">
		<div class="modal-body">
			<div class="form-group">
			<br>
			<label class="control-label" for="nama">Hapus Data <a id="hapus_id1"></a> ?</label>
			<input type="hidden" class="form-control" name="id">
			</div>
		</div>
		<div class="modal-footer">
			<input type="submit" value="Hapus" name="hapus" class="btn btn-danger">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
			</form>
	</div>

	</div>
</div>
<!--Modal Tambah paket_pemeriksaan-->
<div id="modal_add_paket_pemeriksaan" class="modal fade" role="dialog">
  <div class="modal-dialog ">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Tambah Paket Pemeriksaan</h4>
      </div>
			<form id="form_input" method="POST">
      <div class="modal-body"> 
		<div class="form-group">
		<?php
		$query = mysql_query("SELECT max(kode) as maxID FROM paket_pemeriksaan ");
		$data  = mysql_fetch_assoc($query);
		$idMax = $data['maxID'];
		$noUrut =substr($idMax, 6,3);

		$noUrut++;
		$char = "PAKET-";
		$new = $char . sprintf("%03s", $noUrut);
		//echo $newID;
		$cek=substr($new,6,3);
		//echo $cek;
		if($cek == 000) 
		{
		$newID = $char . sprintf("%03s", $noUrut+1);
		}
		else
		{
		$newID = $char . sprintf("%03s", $noUrut);
		} 
		?>
  		<label class="control-label" for="kode">Kode Paket</label>
  		<input type="text" class="form-control" name="kode" id="kode" value="<?php echo $newID; ?>" style="width:35%; text-transform:uppercase;" readonly="readonly">
		</div>
		<div class="form-group">
  		<label class="control-label" for="nama">Nama Paket</label>
  		<input type="text" class="form-control" name="nama_paket" id="nama_paket" tabindex="1" style="text-transform:uppercase" required >
		</div>
		<div class="form-group">
  		<label class="control-label" for="biaya">Biaya Paket (Rp)</label>
  		<input type="number" class="form-control" name="biaya" id="biaya" tabindex="1" style="text-transform:uppercase;width:35%;" required >
		</div>
		<div class="form-group" >
			<label class="control-label" for="pilih">Parameter Uji</label><br>
			<select name="parameter_ujis[]" data-placeholder="Pilih Parameter Uji" style="width:70%;" class="form-control chosen-select " multiple tabindex="1" required>
			<?php
				$s=mysql_query("select kode,nama from kelompok_parameter_uji");
				while ($d=mysql_fetch_array($s)) {
				$t=$d['nama'];
				$k=$d['kode'];

				$sql1="select sub_kode,nama_parameter from parameter_uji where kode='".$k."'";
				$query1=mysql_query($sql1);
				echo"<optgroup label=$t>";
				while($data=mysql_fetch_array($query1)) {
				$nama=$data['nama_parameter'];
				$sk=$data['sub_kode'];
				echo"<option value=$sk>$nama</option>";
				
				}
				echo"</optgroup>";
				}
			  ?>
			  </select>
			  <br><br><br>
		  
        </div>
	</div>
      <div class="modal-footer">
		<input type="submit" value="Tambah" name="tambah" class="btn btn-primary">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
	  </form>
    </div>

  </div>
</div>
<!--Modal Edit paket_pemeriksaan-->
<div id="modal_edit_paket_pemeriksaan" class="modal fade" role="dialog">
	<div class="modal-dialog ">
	
	<!-- Modal content-->
	<div class="modal-content">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title">Edit Paket Pemeriksaan</h4>
		</div>
			<form id="form_input" method="POST">
		<div class="modal-body">
			<div class="form-group">
			<label class="control-label" for="kode">Kode Paket</label>
			<input type="text" class="form-control" name="kode" id="kode" value="<?php echo $data['kode']; ?>" style="width:35%; text-transform:uppercase;" readonly="readonly">
			</div>
			<div class="form-group">
			<label class="control-label" for="nama">Nama Paket</label>
			<input type="text" class="form-control" name="nama_paket" id="nama_paket" value="<?php echo $data['nama_paket']; ?>" tabindex="1" style="text-transform:uppercase" required >
			</div>
			<div class="form-group">
			<label class="control-label" for="biaya">Biaya Paket</label>
			<input type="number" class="form-control" name="biaya" id="biaya" value="<?php echo $data['biaya']; ?>" tabindex="1" style="text-transform:uppercase;width:35%;" required >
			</div>
			<div class="form-group" >
			<label class="control-label" for="pilih">Parameter Uji</label><br>
			<?php $qs1="<div id=qs1>--</div>"; echo $qs1; ?>
			<select name="parameter_ujis[]" data-placeholder="Pilih Parameter Uji" style="width:70%;" class="form-control chosen-select " multiple tabindex="1" required>
			<?php
			$a=mysql_query("SELECT parameter,nama_parameter FROM paket_nama where kode='".$_POST['kode']."'");
			while ($b=mysql_fetch_assoc($a)) {
			echo"<option class=hide value=$b[parameter] selected> $b[nama_parameter]</option>";
			?>
			<?php
			}
			$s=mysql_query("select kode,nama from kelompok_parameter_uji");
			while ($d=mysql_fetch_array($s)) {
			$t=$d['nama'];
			$k=$d['kode'];
			$sql1="select sub_kode,nama_parameter from parameter_uji where kode='".$k."'";
			$query1=mysql_query($sql1);
			echo"<optgroup label=$t>";
			while($data1=mysql_fetch_array($query1)) {
			$nama=$data1['nama_parameter'];
			$sk=$data1['sub_kode'];
			echo"<option value=$sk >$nama</option>";			
			}
			echo"</optgroup>";
			}
			 ?>
			</select>
			<br><br><br>
			</div>
		</div>
		<div class="modal-footer">
			<input type="submit" value="Update" name="update" class="btn btn-primary">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
			</form>
	</div>

	</div>
</div>
<!--Modal Hapus paket_pemeriksaan-->
<div id="modal_delete_paket_pemeriksaan" class="modal fade" role="dialog">
	<div class="modal-dialog ">

	<!-- Modal content-->
	<div class="modal-content">
			<form id="form_input" method="POST">
		<div class="modal-body">
			<div class="form-group">
			<br>
			<label class="control-label" for="nama">Hapus Data <a id="hapus_id2"></a> ?</label>
			<input type="hidden" class="form-control" name="id">
			</div>
		</div>
		<div class="modal-footer">
			<input type="submit" value="Hapus" name="hapus" class="btn btn-danger">
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		</div>
			</form>
	</div>

	</div>
</div>