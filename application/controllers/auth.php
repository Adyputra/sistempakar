<?php
defined('BASEPATH') or exit('No direct script access allowed');

class auth extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
	}
	
	public function index()
	{
		if(isset($_SESSION['username'])){
			redirect(base_url('admin'));
		}
		$this->load->view('user/header');
		$this->load->view('user/login');
		$this->load->view('user/footer');
	}
	public function login(){
		$d = $_POST;
		$array = [
			'username' => $d['username'],
			'password' => $d['password']
		];
		$q = $this->db->get_where("admin", $array)->result_array();
		if(count($q) > 0){
			$data = $q[0];
			$_SESSION['username'] = $data['username'];
			$_SESSION['nama_admin'] = $data['nama_admin'];
			$_SESSION['id_admin'] = $data['id_admin'];
			// $this->session->set_userdata('id_admin')
			redirect(base_url('admin'));
		}else{
			$this->session->set_flashdata('msg', 'Login gagal');
			redirect(base_url('auth'));
		}
	}
	public function logout()
	{
		session_destroy();
		redirect(base_url('auth'));
	}
}
