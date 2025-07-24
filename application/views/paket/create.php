<div class="card p-4 shadow-sm">
    <h4 class="mb-3">Input Paket</h4>

    <?php if ($this->session->flashdata('error')): ?>
        <div class="alert alert-danger"><?= $this->session->flashdata('error'); ?></div>
    <?php endif; ?>

    <form method="post" action="<?= site_url('paket/store') ?>">
        <div class="mb-3">
            <label>Kode Resi</label>
            <input type="text" name="kode_resi" class="form-control" required autofocus placeholder="Scan resi...">
        </div>
        <div class="mb-3">
            <label>Lokasi Rak</label>
            <input type="text" name="lokasi_rak" class="form-control" required placeholder="Scan/Pilih lokasi rak...">
        </div>
        <button class="btn btn-primary" type="submit">Simpan Paket</button>
    </form>
</div>
