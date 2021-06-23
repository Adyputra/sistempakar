<?php

/**
 * 
 */
class model_admin extends CI_Model
{

	function get_admin($id_admin)
	{
	}

	function get_all_admin()
	{
	}

	function edit_admin()
	{
	}

	function get_all_gejala()
	{
		$this->db->select('*');
		$this->db->from('gejala');

		return $this->db->get();
	}

	function get_hp($kode_hp)
	{
	}

	function add_gejala()
	{
		$this->db->order_by('kode_gejala', 'Desc');
		$db = $this->db->get('gejala')->row();

		$noUrut = (int) substr($db->kode_gejala, 1);
		$noUrut++;

		$char = "G";
		$newID = $char . sprintf("%02s", $noUrut);

		$data = array(
			'kode_gejala' => $newID,
			'gejala' =>  $this->input->post('gejala')
		);

		$this->db->insert('gejala', $data);

		if ($this->db->affected_rows() > 0) {
			$return =  array('result' => 'success');
		} else {
			$return =  array('result' => 'failed');
		}
		return $return;
	}

	function delete_gejala()
	{
		$this->db->where('kode_gejala', $this->input->post('kode_gejala'));
		$this->db->delete('gejala');

		if ($this->db->affected_rows() > 0) {
			$return =  array('result' => 'success');
		} else {
			$return =  array('result' => 'failed');
		}
		return $return;
	}

	function edit_gejala()
	{
		$data = array(
			'gejala' =>  $this->input->post('gejala')
		);
		$this->db->where('kode_gejala', $this->input->post('kode_gejala'));
		$this->db->update('gejala', $data);

		if ($this->db->affected_rows() > 0) {
			$return =  array('result' => 'success');
		} else {
			$return =  array('result' => 'failed');
		}
		return $return;
	}

	function get_all_hamapenyakit()
	{
		$this->db->select('*');
		$this->db->from('hamapenyakit');

		return $this->db->get();
	}

	function add_hamapenyakit()
	{
		$this->db->order_by('kode_hp', 'Desc');
		$db = $this->db->get('hamapenyakit')->row();

		$noUrut = (int) substr($db->kode_hp, 2);
		$noUrut++;

		$char = "HP";
		$newID = $char . sprintf("%02s", $noUrut);

		$data = array(
			'kode_hp' => $newID,
			'hamapenyakit' =>  $this->input->post('hamapenyakit'),
			'solusi' =>  $this->input->post('solusi')
		);

		$this->db->insert('hamapenyakit', $data);

		if ($this->db->affected_rows() > 0) {
			$return =  array('result' => 'success');
		} else {
			$return =  array('result' => 'failed');
		}
		return $return;
	}

	function delete_hamapenyakit()
	{
		$this->db->where('kode_hp', $this->input->post('kode_hp'));
		$this->db->delete('hamapenyakit');

		if ($this->db->affected_rows() > 0) {
			$return =  array('result' => 'success');
		} else {
			$return =  array('result' => 'failed');
		}
		return $return;
	}

	function edit_hamapenyakit()
	{
		$data = array(
			'hamapenyakit' =>  $this->input->post('hamapenyakit'),
			'solusi' =>  $this->input->post('solusi')
		);
		$this->db->where('kode_hp', $this->input->post('kode_hp'));
		$this->db->update('hamapenyakit', $data);

		if ($this->db->affected_rows() > 0) {
			$return =  array('result' => 'success');
		} else {
			$return =  array('result' => 'failed');
		}
		return $return;
	}

	function get_gejala_hp($kode_hp)
	{
	}

	function add_basispengetahuan()
	{
	}

	function delete_basispengetahuan()
	{
	}

	function edit_basispengetahuan()
	{
	}
}
