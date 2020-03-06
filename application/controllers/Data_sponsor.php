<?php
/**
 *
 */
class Data_sponsor extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
		$this->load->model('sponsor_model');
		$data=$this->db->get_where('admin',['email'=>$this->session->userdata('email')])->row_array();
    if(!isset($data)){
    redirect('auth');
        }
  }
  public function index()
  {
    $data['data']=$this->db->get_where('admin',['email'=>
    $this->session->userdata('email')])->row_array();

    $data['konten'] = 'data_sponsor';
    $data['sponsor'] = $this->sponsor_model->get_sponsor();
    $this->load->view('template_admin', $data);
  }
  public function tambah(){

      $data = array();

      if($this->input->post('submit')){ // Jika user menekan tombol Submit (Simpan) pada form
        // lakukan upload file dengan memanggil function upload yang ada di GambarModel.php
        $upload = $this->sponsor_model->upload();

        if($upload['result'] == "success"){ // Jika proses upload sukses
           // Panggil function save yang ada di GambarModel.php untuk menyimpan data ke database
          $this->sponsor_model->save($upload);

          redirect('data_sponsor'); // Redirect kembali ke halaman awal / halaman view data
        }else{ // Jika proses upload gagal
          $data['message'] = $upload['error']; // Ambil pesan error uploadnya untuk dikirim ke file form dan ditampilkan
        }
      }

  }
}
