<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Paket extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('logged_in')) redirect('auth');
        $this->load->model('Paket_model');
    }

    public function index()
    {
        $data['title'] = 'Daftar Paket';
        $data['packages'] = $this->Paket_model->get_all();
        $data['content'] = $this->load->view('paket/index', $data, true);
        $this->load->view('templates/main', $data);
    }

    public function create()
    {
        $data['title'] = 'Input Paket';
        $data['content'] = $this->load->view('paket/create', '', true);
        $this->load->view('templates/main', $data);
    }

    public function store()
    {
        $kode_resi = $this->input->post('kode_resi');
        $lokasi_rak = $this->input->post('lokasi_rak');

        if ($this->Paket_model->check_exist($kode_resi)) {
            $this->session->set_flashdata('error', 'Kode resi sudah terdaftar.');
            redirect('paket/create');
        }

        $data = [
            'kode_resi' => $kode_resi,
            'lokasi_rak' => $lokasi_rak,
            'packer_id' => $this->session->userdata('user_id'),
        ];

        $this->Paket_model->insert($data);
        $this->session->set_flashdata('success', 'Paket berhasil disimpan.');
        redirect('paket');
    }

    public function pickup()
    {
        $data['title'] = 'Serah Terima Paket';
        $data['content'] = $this->load->view('paket/pickup', '', true);
        $this->load->view('templates/main', $data);
    }

    public function search()
    {
        $kode_resi = $this->input->post('kode_resi');
        $data['paket'] = $this->Paket_model->get_by_resi($kode_resi);

        if (!$data['paket']) {
            $this->session->set_flashdata('error', 'Resi tidak ditemukan atau sudah diambil.');
            redirect('paket/pickup');
        }

        $data['title'] = 'Ambil Paket';
        $data['content'] = $this->load->view('paket/bukti', $data, true);
        $this->load->view('templates/main', $data);
    }

    public function store_bukti($id)
    {
        $config['upload_path'] = './uploads/bukti/';
        $config['allowed_types'] = 'jpg|jpeg|png';
        $config['file_name'] = 'bukti_' . time();
        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('foto_bukti')) {
            $this->session->set_flashdata('error', $this->upload->display_errors());
            redirect('paket/pickup');
        }

        $foto = $this->upload->data('file_name');

        $this->Paket_model->update_bukti($id, $foto);
        $this->session->set_flashdata('success', 'Serah terima berhasil disimpan.');
        redirect('paket');
    }
}
