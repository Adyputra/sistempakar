<?php

/**
 * 
 */
class model_user extends CI_Model
{

	function diagnosa()
	{
	}
	function get_all_hamapenyakit()
	{
		$this->db->select('*');
		$this->db->from('hamapenyakit');

		return $this->db->get();
	}
}
