<?php

/**
 * 
 */
class model_user extends CI_Model
{
	function diagnosa()
	{
		$gejala = $this->input->post('kode_gejala');
		$jumlah_dipilih = count($gejala);
		for ($x = 0; $x < $jumlah_dipilih; $x++) {

			$this->db->query("select DISTINCT p.kode_hp, p.hamapenyakit from basispengetahuan b, hamapenyakit p where b.kode_gejala='$gejala[$x]' and p.kode_hp=b.kode_hp group by kode_hp");

			return $this->db->get();
		}
	}

	function get_all_hamapenyakit()
	{
		$this->db->select('*');
		$this->db->from('hamapenyakit');

		return $this->db->get();
	}

	function get_gejala_hp($kode_hp)
	{
		$this->db->select('basispengetahuan.*, hamapenyakit.solusi,gejala.gejala');
		$this->db->from('basispengetahuan');
		$this->db->join('gejala', 'basispengetahuan.kode_gejala = gejala.kode_gejala');
		$this->db->join('hamapenyakit', 'basispengetahuan.kode_hp = hamapenyakit.kode_hp');
		$this->db->where('basispengetahuan.kode_hp', $kode_hp);

		return $this->db->get();
	}

	function get_all_gejala()
	{

		$this->db->select('*');
		$this->db->from('gejala');

		return $this->db->get();
	}

	function get_hp($kode_hp)
	{
		$this->db->select('*');
		$this->db->from('hamapenyakit');
		$this->db->where('kode_hp', $kode_hp);

		return $this->db->get();
	}
}
