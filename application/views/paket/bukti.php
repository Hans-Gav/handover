<div class="card p-4 shadow-sm">
    <h4>Serah Terima: <?= $paket->kode_resi ?></h4>
    <p>Lokasi Rak: <strong><?= $paket->lokasi_rak ?></strong></p>

    <form method="post" action="<?= site_url('paket/store_bukti/' . $paket->id) ?>" enctype="multipart/form-data">
        <div class="mb-3">
            <label>Upload Foto Bukti (driver + paket)</label>
            <input type="file" name="foto_bukti" class="form-control" accept="image/*" required>
        </div>
        <button class="btn btn-success">Simpan & Tandai Selesai</button>
    </form>
</div>
