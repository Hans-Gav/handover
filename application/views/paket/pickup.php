<div class="card p-4 shadow-sm">
    <h4>Scan / Input Resi untuk Serah Terima</h4>

    <?php if ($this->session->flashdata('error')): ?>
        <div class="alert alert-danger"><?= $this->session->flashdata('error'); ?></div>
    <?php endif; ?>

    <form method="post" action="<?= site_url('paket/search') ?>">
        <div class="mb-3">
            <label>Kode Resi</label>
            <input type="text" name="kode_resi" class="form-control" required placeholder="Scan/ketik resi...">
        </div>
        <button class="btn btn-primary">Cari Paket</button>
    </form>
</div>
