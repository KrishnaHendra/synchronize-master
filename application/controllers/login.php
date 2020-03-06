<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class login extends CI_Controller {

    public function __CONSTRUCT(){
        parent::__CONSTRUCT();
        $this->load->model('login_model','login');
    }

    public function index()
    {
        $this->form_validation->set_rules('email', 'email', 'trim|required|valid_email');
        $this->form_validation->set_rules('password', 'password', 'trim|required');
        
        
        if ($this->form_validation->run() == TRUE) {
            $this->login->cekLogin();
        } else {
            $this->load->view('login'); 
        }
    }

    public function logout()
    {
        session_destroy();
        redirect('login','refresh');
    }

    public function registration(){
        $this->form_validation->set_rules('nama','Nama','trim|required');
        $this->form_validation->set_rules('email','Email','trim|required|valid_email|is_unique[user.email]');
        $this->form_validation->set_rules('password','Password','trim|required|min_length[4]');
        $this->form_validation->set_rules('telepon','Telepom','trim|required');
        $this->form_validation->set_rules('tgl_lahir','Tanggal Lahir','trim|required');

        if($this->form_validation->run()==FALSE){
            $this->load->view('registration');
        }else{
            $this->login->registration();
            // var_dump($this->input->post('nama'));
            redirect('login');
        }
    }

}

/* End of file login.php */
