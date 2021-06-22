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
	}

	public function detail_penyakit()
	{
	}

	public function konsultasi()
	{
		$data['gejala'] = $this->model_admin->get_all_gejala()->result_array();

		$this->load->view('user/header');
		$this->load->view('user/konsultasi', $data);
		$this->load->view('user/footer');
	}

	public function diagnosa()
	{
	}

	public function detail_hp()
	{
	}
}
