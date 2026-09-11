<?php
class MY_Controller extends CI_Controller {
	function __construct()
	{
		parent::__construct();
	}
	function add_view($view, $data = array())
	{
       	$data['contenido']=$this->load->view($view,$data,true);	
		$this->load->view('template',$data);
	}
}
?>
