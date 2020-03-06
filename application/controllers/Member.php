<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Member extends CI_Controller {

    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Admin','admin');
    }
    

    public function index()
    {
        $data['data']=$this->db->get_where('admin',['email'=>$this->session->userdata('email')])->row_array();
        $data['member']=$this->admin->data_member();
        $data['title']='Data Member';
        $data['konten']='data_member';
        $this->load->view('template_admin',$data);
    }

}

/* End of file Controllername.php */
