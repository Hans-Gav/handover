<!-- application/views/templates/footer.php -->
</div> <!-- Tutup <div class="d-flex"> dari sidebar -->

<footer class="text-center mt-4 py-3 bg-light border-top">
  <div class="container">
    <small class="text-muted">© <?= date('Y') ?> SKANET System. All rights reserved.</small>
  </div>
</footer>

<!-- Bootstrap JS (jika belum ditambahkan di header) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- DataTables JS & dependencies -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
<script src="<?= base_url('assets/javascript/js.js') ?>"></script>
</body>

</html>