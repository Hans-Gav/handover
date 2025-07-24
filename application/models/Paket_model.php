<?php
class Paket_model extends CI_Model
{
    public function get_all()
    {
        $this->db->order_by('waktu_packing', 'DESC');
        return $this->db->get('packages')->result();
    }

    public function insert($data)
    {
        return $this->db->insert('packages', $data);
    }

    public function check_exist($kode_resi)
    {
        return $this->db->get_where('packages', ['kode_resi' => $kode_resi])->num_rows() > 0;
    }

    public function get_by_resi($kode_resi)
    {
        return $this->db->get_where('packages', [
            'kode_resi' => $kode_resi,
            'status' => 'pending'
        ])->row();
    }

    public function update_bukti($id, $foto)
    {
        $data = [
            'status' => 'picked',
            'waktu_serah' => date('Y-m-d H:i:s'),
            'foto_bukti' => $foto
        ];
        return $this->db->where('id', $id)->update('packages', $data);
    }
}
