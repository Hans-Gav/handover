<?php
class Lokasi_model extends CI_Model {

    public function get_available() {
        return $this->db->where('tersedia', 1)->get('locations')->result();
    }

    public function update_status($id, $tersedia = 1) {
        $this->db->where('id', $id)->update('locations', ['tersedia' => $tersedia]);
    }
}
