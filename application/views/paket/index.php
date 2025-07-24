<div class="card p-4 shadow-sm">
    <h4 class="mb-3">Daftar Paket Tersimpan</h4>

    <?php if ($this->session->flashdata('success')): ?>
        <div class="alert alert-success"><?= $this->session->flashdata('success'); ?></div>
    <?php endif; ?>

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>Kode Resi</th>
                <th>Lokasi Rak</th>
                <th>Waktu Packing</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($packages as $p): ?>
                <tr>
                    <td><?= $p->kode_resi ?></td>
                    <td><?= $p->lokasi_rak ?></td>
                    <td><?= $p->waktu_packing ?></td>
                    <td><span class="badge bg-<?= $p->status == 'pending' ? 'warning text-dark' : 'success' ?>">
                        <?= ucfirst($p->status) ?></span></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
