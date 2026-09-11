<?php
class Inicio extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->helper(array('form', 'url'));
	}
	public function index()
	{
		$this->load->library('session');
		$login= $this->session->userdata('username');
		$idsesion= $this->session->userdata('idsesion');
		$data['idsesion']=$idsesion;
		$this->add_view('mapa',$data);
	}
	public function acceso()
	{
		$this->load->library('session');
		$this->load->model('Usuario_model');
		$login=$this->input->post('login'); 
		$password=$this->input->post('password'); 		
		$r=$this->Usuario_model->login($login,$password);
		if($r>0){
			$newdata = array('username'  => $login,
							 'idsesion'	=> time(),	
							 'logged_in' => TRUE
							 );
			$this->session->set_userdata($newdata);
			$idusuario=$this->Usuario_model->idusuario_login($login);
		}
	    redirect('/Inicio/index/');
	}	
	public function guardar()
	{
		$this->load->model('Reporte_model');
		$nombre=$this->input->post('nombre'); 
		$tipo=$this->input->post('tipo'); 
		$danos=$this->input->post('danos'); 
		$operativo=$this->input->post('operativo'); 
		$evaluacion=$this->input->post('evaluacion'); 
		$control=$this->input->post('control'); 
		$calibracion=$this->input->post('calibracion'); 
		$fuentes=$this->input->post('fuentes');
		$dosimetria=$this->input->post('dosimetria'); 
		$latitud=$this->input->post('latitud');
		$longitud=$this->input->post('longitud');
		$datos=[
		'nombre' => $nombre,
		'tipo' => $tipo,
		'estructurales' => $danos,
		'operativo' => $operativo,
		'evaluacion' => $evaluacion,
		'control' => $control,
		'calibracion' => $calibracion,
		'fuentes' => $fuentes,
		'dosimetria' => $dosimetria,
		'latitud' => doubleval($latitud),
		'longitud' => doubleval($longitud),
		];

		$this->Reporte_model->ireporte($datos);
		$this->add_view('guardado');
	}
	public function load()
	{
		$this->load->model('Reporte_model');
		$data['status'] = 'ok';
        $data['instituciones']=$this->Reporte_model->get_instituciones();
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
	}
	public function login()
	{
		$this->add_view('login');
	}
	public function inicio()
	{
		$this->load->model('Usuario_model');
		$this->load->library('session');
		$login= $this->session->userdata('username');
		$idsesion= $this->session->userdata('idsesion');
		if(empty($idsesion)){
			redirect('/Inicio/index/');
		}
		else {
			$idusuario=$this->Usuario_model->idusuario_login($login);
			$data['idusuario']=$idusuario;
			$this->add_view('mapa',$data);	
		}		
		//$this->add_view('login');
	}	
	public function cambio_password()
	{
		//$this->add_view('login');
	}	
	public function registro()
	{
		//$this->add_view('login');
	}
	public function logout()
	{
		$this->load->library('session');
		$this->session->sess_destroy();		
		redirect('/Inicio/index/');
	}
}
