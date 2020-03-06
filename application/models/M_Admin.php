<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Admin extends CI_Model {

	public function show_admin()
	{
        $query = $this->db->query("SELECT * FROM admin a JOIN status s ON a.id_status = s.id_status");
        return $query;
    }
    
    public function add_admin(){
        $admin = [
            'nama' => $this->input->post('nama'),
            'email' => $this->input->post('email'),
            'password' => password_hash($this->input->post('password'),PASSWORD_DEFAULT),
            'aktif' => 1,
            'id_status' => 1,
            'created_at' => time()
        ];
        $this->db->insert('admin',$admin);
    }

    public function delete_admin($id_admin){
        $hapus = $this->db->query("DELETE FROM admin WHERE id_admin = $id_admin");
        return $hapus;
    }

    // public function input($data){
    //     try{
    //         $this->db->insert('guest', $data);
    //         return true;
    //       }catch(Exception $e){
    //       }
    // }
    public function get_transaksi(){
        $this->db->select('*');
        $this->db->from('transaksi t');
        $this->db->join('user u', 't.id_user = u.id_user');
        return $this->db->get()->result_array();
    }

    public function data_member(){
        
        $this->db->select('*');
        $this->db->from('user');
        return $this->db->get()->result_array();
    }
}
