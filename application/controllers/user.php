<?php
defined('BASEPATH') or exit('No direct script access allowed');

class user extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');

		$this->load->model('model_admin');
		$this->load->model('model_user');
	}

	public function index()
	{
		$this->load->view('user/header');
		$this->load->view('user/home');
		$this->load->view('user/footer');
	}

	public function data_penyakit()
	{
		$data['hamapenyakit'] = $this->model_user->get_all_hamapenyakit()->result_array();

		$this->load->view('user/header');
		$this->load->view('user/data_penyakit', $data);
	}

	public function detail_penyakit()
	{
	}

	public function konsultasi()
	{
	}

	public function diagnosa()
	{
	}

	public function detail_hp()
	{
	}
}
