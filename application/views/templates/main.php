<?php $this->load->view('templates/header'); ?>
<?php $this->load->view('templates/sidebar'); ?>

<div class="main-content">
    <?= isset($content) ? $content : '' ?>
</div>

