<?php
defined('BASEPATH') or exit('No direct script access allowed');

class admin extends CI_Controller
{
	public function __construct()
	{
	}

	public function index()
	{
	}

	public function profile()
	{
	}

	public function edit_admin()
	{
	}

	public function gejala()
	{
		$id_admin = $this->session->userdata('id_admin');

		$db = $this->model_admin->get_admin($id_admin)->row();
		$data['nama_admin'] = $db->nama_admin;
		$data['gejala'] = $this->model_admin->get_all_gejala()->result_array();

		$this->load->view('admin/navbar', $data);
		$this->load->view('admin/sidebar', $data);
		$this->load->view('admin/gejala', $data);
		$this->load->view('admin/footer');
	}

	public function add_gejala()
	{
		$add = $this->model_admin->add_gejala();

		if ($add['result'] == 'success') {

			$this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Add Gejala Success!
			</div>
			');
			redirect('admin/gejala');
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Add Gejala Failed!
			</div>
			');
			redirect('admin/gejala');
		}
	}

	public function delete_gejala()
	{
		$delete = $this->model_admin->delete_gejala();

		if ($delete['result'] == 'success') {

			$this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Delete Gejala Success!
			</div>
			');
			redirect('admin/gejala');
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Delete Gejala Failed!
			</div>
			');
			redirect('admin/gejala');
		}
	}

	public function edit_gejala()
	{
		$delete = $this->model_admin->edit_gejala();

		if ($delete['result'] == 'success') {

			$this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Edit Gejala Success!
			</div>
			');
			redirect('admin/gejala');
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Edit Gejala Failed!
			</div>
			');
		}
	}

	public function hamapenyakit()
	{
		$id_admin = $this->session->userdata('id_admin');

		$db = $this->model_admin->get_admin($id_admin)->row();
		$data['nama_admin'] = $db->nama_admin;
		$data['hamapenyakit'] = $this->model_admin->get_all_hamapenyakit()->result_array();

		$this->load->view('admin/navbar', $data);
		$this->load->view('admin/sidebar', $data);
		$this->load->view('admin/hamapenyakit', $data);
		$this->load->view('admin/footer');
	}

	public function add_hamapenyakit()
	{
		$add = $this->model_admin->add_hamapenyakit();

		if ($add['result'] == 'success') {

			$this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Add Hama Dan Penyakit Success!
			</div>
			');
			redirect('admin/hamapenyakit');
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Add Hama Dan Penyakit Failed!
			</div>
			');
			redirect('admin/hamapenyakit');
		}
	}

	public function delete_hamapenyakit()
	{
		$delete = $this->model_admin->delete_hamapenyakit();

		if ($delete['result'] == 'success') {

			$this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Delete Hama Dan Penyakit Success!
			</div>
			');
			redirect('admin/hamapenyakit');
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Delete Hama Dan Penyakit Failed!
			</div>
			');
			redirect('admin/hamapenyakit');
		}
	}

	public function edit_hamapenyakit()
	{
		$delete = $this->model_admin->edit_hamapenyakit();

		if ($delete['result'] == 'success') {

			$this->session->set_flashdata('message', '<div class="alert alert-success alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Edit Hama Dan Penyakit Success!
			</div>
			');
			redirect('admin/hamapenyakit');
		} else {
			$this->session->set_flashdata('message', '<div class="alert alert-danger alert-dismissible fade in"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				Edit Hama Dan Penyakit Failed!
			</div>
			');
		}
	}

	public function detail_hp()
	{
	}

	public function add_basispengetahuan()
	{
	}

	public function delete_basispengetahuan()
	{
	}
}
