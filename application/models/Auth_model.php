<?php
class Auth_model extends CI_Model {
    public function check_login($username, $password) {
        return $this->db->get_where('users', [
            'username' => $username,
            'password' => $password,
            'status' => 'active'
        ])->row();
    }
}
