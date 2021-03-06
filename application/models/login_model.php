<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class login_model extends CI_Model {

    public function cekLogin()
    {
        $user = $this->db->get_where('user', array(
            'email' => $this->input->post('email'),
            'password' => $this->input->post('password')
        ));

        if ($user->num_rows() != null) {
            if ($user->num_rows() > 0) {
                $data = array(
                    'logged_in' => TRUE,
                    'nama_user' => $user->result()[0]->nama_user,
                    'email' => $user->result()[0]->email,
                    'telepon' => $user->result()[0]->telepon,
                    'id_user' => $user->result()[0]->id_user
                );
                
                $this->session->set_userdata( $data );
                redirect('home/home','refresh');
            } else {
                $this->session->set_flashdata('gagal', 'Data yang Anda Masukan Salah');
                redirect('login','refresh');
            }
        } else {
            $this->session->set_flashdata('gagal', 'Silahkan Masukan Data');
            redirect('login','refresh');
        }
        
    }

    public function registration(){
        $data=[
            'nama_user' => $this->input->post('nama'),
            'email' => $this->input->post('email'),
            'password' => $this->input->post('password'),
            'telepon' => $this->input->post('telepon'),
            'tgl_lahir' => $this->input->post('tgl_lahir'),
            'created_at' => time()
        ];
        $this->db->insert('user',$data);
        $this->session->set_flashdata('notif','<div class="alert alert-info alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
		<i class="fa fa-check-circle"></i> Akun berhasil dibuat, Silahkan Login!
		</div>');
    }

}

/* End of file login_model.php */
