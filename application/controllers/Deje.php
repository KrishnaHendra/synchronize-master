<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Deje extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('dj_model');
	}

	public function index(){

		$data['data']=$this->db->get_where('admin',['email'=>
    $this->session->userdata('email')])->row_array();

    $data['konten'] = 'data_dj';
		$data['deje'] = $this->dj_model->get_dj();

			//get_kategori untuk dropdown tambah/edit buku
			$this->load->view('template_admin', $data);

	}

	public function tambah(){

			$data = array();

			if($this->input->post('submit')){ // Jika user menekan tombol Submit (Simpan) pada form
				// lakukan upload file dengan memanggil function upload yang ada di GambarModel.php
				$upload = $this->dj_model->upload();

				if($upload['result'] == "success"){ // Jika proses upload sukses
					 // Panggil function save yang ada di GambarModel.php untuk menyimpan data ke database
					$this->dj_model->save($upload);

					redirect('deje'); // Redirect kembali ke halaman awal / halaman view data
				}else{ // Jika proses upload gagal
					$data['message'] = $upload['error']; // Ambil pesan error uploadnya untuk dikirim ke file form dan ditampilkan
				}
			}

	}

	public function delete($id_dj){

			$this->dj_model->delete($id_dj);
			$this->session->set_flashdata('notif','<div class="alert alert-danger alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
			<i class="fa fa-check-circle"></i> Data DJ Berhasil Dihapus
			</div>');
			redirect('deje');
	}

	public function get_data($id)
	{

			$data = $this->guestar_model->get_data($id);
			echo json_encode($data);

	}

}
