<!--Modal Tambah-->
<div id="modal_add" class="modal fade" role="dialog">
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
<!--Modal Edit-->
<div id="modal_edit" class="modal fade" role="dialog">
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
<!--Modal Hapus-->
<div id="modal_delete" class="modal fade" role="dialog">
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