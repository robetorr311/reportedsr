<?php
class Formulario extends MY_Controller {
	function __construct()
	{
		parent::__construct();
		$this->load->helper(array('form', 'url'));
	}
	public function index()
	{
		$this->load->model('Usuario_model');
		$this->load->library('session');
		$login= $this->session->userdata('username');
		$idsesion= $this->session->userdata('idsesion');
        $this->load->model('Reporte_model');
        $idreporte=$this->input->get('idreporte');
		if(empty($idsesion)){
			redirect('/Inicio/login/');
		}
		else {
			$this->load->model('Ubicacion_model');
			$idusuario=$this->Usuario_model->idusuario_login($login);
			$reporte=$this->Reporte_model->get_reporte($idreporte);
			foreach ($reporte as $row) {
				$tipo=$row->tipo;
				$nombre=$row->nombre;
			}
			$institucion=$this->Reporte_model->get_institucion($idreporte);
			if(!empty($institucion)){
			    foreach ($institucion as $row) {
			    	$idinstitucion=$row->id;
                    $idestado=$row->estado;
                    $municipio=$row->municipio;
                    $parroquia=$row->parroquia;
                    $direccion=$row->direccion;
                    $correo=$row->correo;
                    $telefono=$row->telefono;
                    $director=$row->director;
                    $rimfri=$row->rimfri;
			    }
			}
			if(!empty($reporte)){
			    $data['tipo']=$tipo;
                $data['nombre']=$nombre;
			}
			$data['idreporte']=$idreporte;
			if(!empty($institucion)){
				$data['idinstitucion']=$idinstitucion;
                $data['idestado']=$idestado;
                $data['estado']=$this->Ubicacion_model->estado($idestado);
                $data['idmunicipio']=$municipio;
                $data['idparroquia']=$parroquia;
                $data['municipio']=$this->Ubicacion_model->municipio($municipio);
                $data['parroquia']=$this->Ubicacion_model->parroquia($parroquia);
                $data['direccion']=$direccion;
                $data['correo']=$correo;
                $data['telefono']=$telefono;
                $data['director']=$director;
                $data['rimfri']=$rimfri;
			}
			$data['idusuario']=$idusuario;
			$data['estados']=$this->Ubicacion_model->get_estados();
            $data['idsesion']=$idsesion;
			$this->add_view('formulario',$data);	
		}
	}
	public function municipios()
	{
		$this->load->model('Ubicacion_model');
		$estado=$this->input->post('estado');
		$data['status'] = 'ok';
        $data['municipios']=$this->Ubicacion_model->get_municipios($estado);
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
	}
	public function parroquias()
	{
		$this->load->model('Ubicacion_model');
		$municipio=$this->input->post('municipio');
		$data['status'] = 'ok';
        $data['parroquias']=$this->Ubicacion_model->get_parroquias($municipio);
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
	}	
	public function guardar_datos()
	{
		$this->load->model('Reporte_model');
        $idreporte=$this->input->post('idreporte');
        $nombre=$this->input->post('nombre');
        $estado=$this->input->post('estado');
        $municipio=$this->input->post('municipio');
        $parroquia=$this->input->post('parroquia');
        $direccion=$this->input->post('direccion');
        $correo=$this->input->post('correo');
        $telefono=$this->input->post('telefono');
        $director=$this->input->post('director');
        $rimfri=$this->input->post('rimfri');
		$datos=[
            'idreporte' => $idreporte,
            'nombre' => $nombre,
            'estado' => $estado,
            'municipio' => $municipio,
            'parroquia' => $parroquia,
            'direccion' => $direccion,
            'correo' => $correo,
            'telefono' => $telefono,
            'director' => $director,
            'rimfri' => $rimfri
		];
		$idinstitucion=$this->Reporte_model->guardar_datos($datos);
		$data['status'] = 'ok';
        $data['idinstitucion']=$idinstitucion;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
	}
	public function update_datos()
	{
		$this->load->model('Reporte_model');
        $idreporte=$this->input->post('idreporte');
        $idinstitucion=$this->input->post('idinstitucion');
        $nombre=$this->input->post('nombre');
        $estado=$this->input->post('estado');
        $municipio=$this->input->post('municipio');
        $parroquia=$this->input->post('parroquia');
        $direccion=$this->input->post('direccion');
        $correo=$this->input->post('correo');
        $telefono=$this->input->post('telefono');
        $director=$this->input->post('director');
        $rimfri=$this->input->post('rimfri');
		$datos=[
            'idreporte' => $idreporte,
            'nombre' => $nombre,
            'estado' => $estado,
            'municipio' => $municipio,
            'parroquia' => $parroquia,
            'direccion' => $direccion,
            'correo' => $correo,
            'telefono' => $telefono,
            'director' => $director,
            'rimfri' => $rimfri
		];
		$idinstitucion=$this->Reporte_model->update_datos($datos,$idinstitucion);
		$data['status'] = 'ok';
        $data['idinstitucion']=$idinstitucion;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
	}	
	public function guardar_mn()
	{
		$this->load->model('Reporte_model');
        $idreporte=$this->input->post('idreporte');
        $gamma_camara=$this->input->post('gamma_camara');
        $spect=$this->input->post('spect');
        $pect=$this->input->post('pect');
        $cilintigrafo=$this->input->post('cilintigrafo');
        $equipo_portatil=$this->input->post('equipo_portatil');
        $actimetro=$this->input->post('actimetro');
        $tc99=$this->input->post('tc99');
        $i_131=$this->input->post('i_131');
        $ga67=$this->input->post('ga67');
        $fr18=$this->input->post('fr18');
        $tl201=$this->input->post('tl201');
        $i_125=$this->input->post('i_125');
        $i_131_capsula=$this->input->post('i_131_capsula');
        $batas=$this->input->post('batas');
        $guantes=$this->input->post('guantes');
        $pinzas=$this->input->post('pinzas');
        $cont_superficial=$this->input->post('cont_superficial');
        $cont_interna=$this->input->post('cont_interna');
        $cuarto_caliente=$this->input->post('cuarto_caliente');
        $medicos=$this->input->post('medicos');
        $fisicos=$this->input->post('fisicos');
        $tecnicos=$this->input->post('tecnicos');
        $otros=$this->input->post('otros');
        $idinstitucion=$this->input->post('idinstitucion');
		$datos=[
            'idreporte' => $idreporte,
            'gamma_camara' => $gamma_camara,
            'spect' => $spect,
            'pect' => $pect,
            'cilintigrafo' => $cilintigrafo,
            'equipo_portatil' => $equipo_portatil,
            'actimetro' => $actimetro1,
            'tc99' => $tc99,
            'i_131' => $i_131,
            'ga67' => $ga67,
            'fr18' => $fr18,
            'tl201' => $tl201,
            'i_125' => $i_125,
            'i_131_capsula' => $i_131_capsula,
            'batas' => $batas,
            'guantes' => $guantes,
            'pinzas' => $pinzas,
            'cont_superficial' => $cont_superficial,
            'cont_interna' => $cont_interna,
            'cuarto_caliente' => $cuarto_caliente,
            'medicos' => $medicos,
            'fisicos' => $fisicos,
            'tecnicos' => $tecnicos,
            'otros' => $otros,
            'idinstitucion' => $idinstitucion
		];
		$idmedicinanuclear=$this->Reporte_model->guardar_mn($datos);
		$data['status'] = 'ok';
        $data['idmedicinanuclear']=$idmedicinanuclear;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
	}
	public function update_mn()
	{
		$this->load->model('Reporte_model');
        $idreporte=$this->input->post('idreporte');
        $gamma_camara=$this->input->post('gamma_camara');
        $spect=$this->input->post('spect');
        $pect=$this->input->post('pect');
        $cilintigrafo=$this->input->post('cilintigrafo');
        $equipo_portatil=$this->input->post('equipo_portatil');
        $actimetro=$this->input->post('actimetro');
        $tc99=$this->input->post('tc99');
        $i_131=$this->input->post('i_131');
        $ga67=$this->input->post('ga67');
        $fr18=$this->input->post('fr18');
        $tl201=$this->input->post('tl201');
        $i_125=$this->input->post('i_125');
        $i_131_capsula=$this->input->post('i_131_capsula');
        $batas=$this->input->post('batas');
        $guantes=$this->input->post('guantes');
        $pinzas=$this->input->post('pinzas');
        $cont_superficial=$this->input->post('cont_superficial');
        $cont_interna=$this->input->post('cont_interna');
        $cuarto_caliente=$this->input->post('cuarto_caliente');
        $medicos=$this->input->post('medicos');
        $fisicos=$this->input->post('fisicos');
        $tecnicos=$this->input->post('tecnicos');
        $otros=$this->input->post('otros');
        $idinstitucion=$this->input->post('idinstitucion');
        $idmedicinanuclear=$this->input->post('idmedicinanuclear');
		$datos=[
            'gamma_camara' => $gamma_camara,
            'spect' => $spect,
            'cilintigrafo' => $cilintigrafo,
            'equipo_portatil' => $equipo_portatil,
            'actimetro' => $actimetro1,
            'tc99' => $tc99,
            'i_131' => $i_131,
            'ga67' => $ga67,
            'fr18' => $fr18,
            'tl201' => $tl201,
            'i_125' => $i_125,
            'i_131_capsula' => $i_131_capsula,
            'batas' => $batas,
            'guantes' => $guantes,
            'pinzas' => $pinzas,
            'cont_superficial' => $cont_superficial,
            'cont_interna' => $cont_interna,
            'cuarto_caliente' => $cuarto_caliente,
            'medicos' => $medicos,
            'fisicos' => $fisicos,
            'tecnicos' => $tecnicos,
            'otros' => $otros
		];
		$idinstitucion=$this->Reporte_model->update_mn($datos,$idmedicinanuclear);
		$data['status'] = 'ok';
        $data['idmedicinanuclear']=$idmedicinanuclear;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
	}
	public function guardar_rd()
	{
		$this->load->model('Reporte_model');
        $idreporte=$this->input->post('idreporte');
        $convencional_fijo=$this->input->post('convencional_fijo');
        $convencional_movil=$this->input->post('convencional_movil');
        $fluoroscopia=$this->input->post('fluoroscopia');
        $telecomandos=$this->input->post('telecomandos');
        $tomografo=$this->input->post('tomografo');
        $mamografos=$this->input->post('mamografos');
        $hemodinamia=$this->input->post('hemodinamia');
        $densitometria_osea=$this->input->post('densitometria_osea');
        $periapical=$this->input->post('periapical');
        $resonancia_magnetica=$this->input->post('resonancia_magnetica');
        $panoramico=$this->input->post('panoramico');
        $angiografo=$this->input->post('angiografo');
        $arco_en_c=$this->input->post('arco_en_c');
        $senalizacion=$this->input->post('senalizacion');
        $blindaje=$this->input->post('blindaje');
        $petos=$this->input->post('petos');
        $lentes=$this->input->post('lentes');
        $tiroide=$this->input->post('tiroide');
        $gonodas=$this->input->post('gonodas');
        $guantes=$this->input->post('guantes');
        $medicos=$this->input->post('medicosrd');
        $fisicos=$this->input->post('fisicosrd');
        $odontologos=$this->input->post('odontologosrd');
        $tecnicos=$this->input->post('tecnicosrd');
        $asistentes=$this->input->post('asistentesrd');
        $auxiliares=$this->input->post('auxiliaresrd');
        $idinstitucion=$this->input->post('idinstitucion');
		$datos=[
            'idreporte' => $idreporte,
            'convencional_fijo' => $convencional_fijo,
            'convencional_movil' => $convencional_movil,
            'fluoroscopia' => $fluoroscopia,
            'telecomandos' => $telecomandos,
            'tomografo' => $tomografo,
            'mamografo' => $mamografos,
            'hemodinamia' => $hemodinamia,
            'densitometria_osea' => $densitometria_osea,
            'periapical' => $periapical,
            'resonancia_magnetica' => $resonancia_magnetica,
            'panoramico' => $panoramico,
            'angiografo' => $angiografo,
            'arco_en_c' => $arco_en_c,
            'senalizacion' => $senalizacion,
            'blindaje' => $blindaje,
            'petos' => $petos,
            'lentes' => $lentes,
            'tiroide' => $tiroide,
            'gonodas' => $gonodas,
            'guantes' => $guantes,
            'medicos' => $medicosrd,
            'fisicos' => $fisicosrd,
            'odontologos' => $odontologosrd,
            'tecnicos' => $tecnicosrd,
            'asistentes' => $asistentesrd,
            'auxiliares' => $auxiliaresrd,
            'idinstitucion' => $idinstitucion
		];
		$idradiodiagnostico=$this->Reporte_model->guardar_rd($datos);
		$data['status'] = 'ok';
        $data['idradiodiagnostico']=$idradiodiagnostico;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
	}
	public function update_rd()
	{
		$this->load->model('Reporte_model');
        $idreporte=$this->input->post('idreporte');
        $convencional_fijo=$this->input->post('convencional_fijo');
        $convencional_movil=$this->input->post('convencional_movil');
        $fluoroscopia=$this->input->post('fluoroscopia');
        $telecomandos=$this->input->post('telecomandos');
        $tomografo=$this->input->post('tomografo');
        $mamografos=$this->input->post('mamografos');
        $hemodinamia=$this->input->post('hemodinamia');
        $densitometria_osea=$this->input->post('densitometria_osea');
        $periapical=$this->input->post('periapical');
        $resonancia_magnetica=$this->input->post('resonancia_magnetica');
        $panoramico=$this->input->post('panoramico');
        $angiografo=$this->input->post('angiografo');
        $arco_en_c=$this->input->post('arco_en_c');
        $senalizacion=$this->input->post('senalizacion');
        $blindaje=$this->input->post('blindaje');
        $petos=$this->input->post('petos');
        $lentes=$this->input->post('lentes');
        $tiroide=$this->input->post('tiroide');
        $gonodas=$this->input->post('gonodas');
        $guantes=$this->input->post('guantes');
        $medicos=$this->input->post('medicosrd');
        $fisicos=$this->input->post('fisicosrd');
        $odontologos=$this->input->post('odontologosrd');
        $tecnicos=$this->input->post('tecnicosrd');
        $asistentes=$this->input->post('asistentesrd');
        $auxiliares=$this->input->post('auxiliaresrd');
        $idinstitucion=$this->input->post('idinstitucion');
        $idradiodiagnostico=$this->input->post('idradiodiagnostico');
		$datos=[
            'convencional_fijo' => $convencional_fijo,
            'convencional_movil' => $convencional_movil,
            'fluoroscopia' => $fluoroscopia,
            'telecomandos' => $telecomandos,
            'tomografo' => $tomografo,
            'mamografo' => $mamografos,
            'hemodinamia' => $hemodinamia,
            'densitometria_osea' => $densitometria_osea,
            'periapical' => $periapical,
            'resonancia_magnetica' => $resonancia_magnetica,
            'panoramico' => $panoramico,
            'angiografo' => $angiografo,
            'arco_en_c' => $arco_en_c,
            'senalizacion' => $senalizacion,
            'blindaje' => $blindaje,
            'petos' => $petos,
            'lentes' => $lentes,
            'tiroide' => $tiroide,
            'gonodas' => $gonodas,
            'guantes' => $guantes,
            'medicos' => $medicosrd,
            'fisicos' => $fisicosrd,
            'odontologos' => $odontologosrd,
            'tecnicos' => $tecnicosrd,
            'asistentes' => $asistentesrd,
            'auxiliares' => $auxiliaresrd,
		];
		$idradiodiagnostico=$this->Reporte_model->update_rd($datos,$idradiodiagnostico);
		$data['status'] = 'ok';
        $data['idradiodiagnostico']=$idradiodiagnostico;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
	}
    public function guardar_rt()
    {
        $this->load->model('Reporte_model');
        $idreporte=$this->input->post('idreporte');
        $acelerador=$this->input->post('acelerador');
        $coba_60=$this->input->post('coba_60');
        $gamma_nkife=$this->input->post('gamma_nkife');
        $ciberknife=$this->input->post('ciberknife');
        $braquiterapia_a=$this->input->post('braquiterapia_a');
        $braquiterapia_m=$this->input->post('braquiterapia_m');
        $braquiterapia_b=$this->input->post('braquiterapia_b');
        $rayos_x=$this->input->post('rayos_x');
        $tac=$this->input->post('tac');
        $tps=$this->input->post('tps');
        $medicosrt=$this->input->post('medicosrt');
        $fisicosrt=$this->input->post('fisicosrt');
        $tecnicosrt=$this->input->post('tecnicosrt');
        $permiso=$this->input->post('permiso');
        $conformidad=$this->input->post('conformidad');
        $idinstitucion=$this->input->post('idinstitucion');
        $datos=[
            'idreporte' => $idreporte,
            'acelerador' => $acelerador,
            'coba60' => $coba_60,
            'gamma_nkife' => $gamma_nkife,
            'ciberknife' => $ciberknife,
            'braquiterapia_a' => $braquiterapia_a,
            'braquiterapia_m' => $braquiterapia_m,
            'braquiterapia_b' => $braquiterapia_b,
            'rayosx' => $rayos_x,
            'tac' => $tac,
            'tps' => $tps,
            'medicos' => $medicosrt,
            'fisicos' => $fisicosrt,
            'tecnicos' => $tecnicosrt,
            'permiso_sanitario' => $permiso,
            'confrmidad_sanitaria' => $conformidad,
            'idinstitucion' => $idinstitucion
        ];
        $idradioterapia=$this->Reporte_model->guardar_rt($datos);
        $data['status'] = 'ok';
        $data['idradioterapia']=$idradioterapia;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
    }
    public function update_rt()
    {
        $this->load->model('Reporte_model');
        $idreporte=$this->input->post('idreporte');
        $acelerador=$this->input->post('acelerador');
        $coba_60=$this->input->post('coba_60');
        $gamma_nkife=$this->input->post('gamma_nkife');
        $ciberknife=$this->input->post('ciberknife');
        $braquiterapia_a=$this->input->post('braquiterapia_a');
        $braquiterapia_m=$this->input->post('braquiterapia_m');
        $braquiterapia_b=$this->input->post('braquiterapia_b');
        $rayos_x=$this->input->post('rayos_x');
        $tac=$this->input->post('tac');
        $tps=$this->input->post('tps');
        $medicosrt=$this->input->post('medicosrt');
        $fisicosrt=$this->input->post('fisicosrt');
        $tecnicosrt=$this->input->post('tecnicosrt');
        $permiso=$this->input->post('permiso');
        $conformidad=$this->input->post('conformidad');
        $idinstitucion=$this->input->post('idinstitucion');
        $idradioterapia=$this->input->post('idradioterapia');
        $datos=[
            'acelerador' => $acelerador,
            'coba60' => $coba_60,
            'gamma_nkife' => $gamma_nkife,
            'ciberknife' => $ciberknife,
            'braquiterapia_a' => $braquiterapia_a,
            'braquiterapia_m' => $braquiterapia_m,
            'braquiterapia_b' => $braquiterapia_b,
            'rayosx' => $rayos_x,
            'tac' => $tac,
            'tps' => $tps,
            'medicos' => $medicosrt,
            'fisicos' => $fisicosrt,
            'tecnicos' => $tecnicosrt,
            'permiso_sanitario' => $permiso,
            'confrmidad_sanitaria' => $conformidad
        ];
        $idradioterapia=$this->Reporte_model->update_rt($datos,$idradioterapia);
        $data['status'] = 'ok';
        $data['idradioterapia']=$idradioterapia;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
    }
    public function load_equipos_mn(){
        $this->load->model('Reporte_model');
        $idinstitucion=$this->input->post('idinstitucion');
        $equiposmn=$this->Reporte_model->load_equipos_mn($idinstitucion);
        $data['status'] = 'ok';
        $data['equiposmn']=$equiposmn;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
    }
    public function load_radiofarmacos_mn(){
        $this->load->model('Reporte_model');
        $idinstitucion=$this->input->post('idinstitucion');
        $radiofarmacosmn=$this->Reporte_model->load_radiofarmacos_mn($idinstitucion);
        $data['status'] = 'ok';
        $data['radiofarmacosmn']=$radiofarmacosmn;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
    }
    public function guardar_equipo_mn(){
        $this->load->model('Reporte_model');
        $nombre_equipo_mn=$this->input->post('nombre_equipo_mn');
        $datos=[
            'nombre' => $nombre_equipo_mn,
            'hpadre' => 8
        ];
        $itemid=$this->Reporte_model->guardar_equipo_mn($datos);
        $equiposmn=$this->Reporte_model->load_equipos_mn();
        $data['status'] = 'ok';
        $data['itemid']=$itemid;
        $data['equiposmn']=$equiposmn;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
    }
    public function guardar_radiofarmaco_mn(){
        $this->load->model('Reporte_model');
        $nombre_radiofarmaco_mn=$this->input->post('nombre_radiofarmaco_mn');
        $datos=[
            'nombre' => $nombre_radiofarmaco_mn,
            'hpadre' => 9
        ];
        $itemid=$this->Reporte_model->guardar_radiofarmaco_mn($datos);
        $radiofarmacosmn=$this->Reporte_model->load_radiofarmacos_mn();
        $data['status'] = 'ok';
        $data['itemid']=$itemid;
        $data['radiofarmacosmn']=$radiofarmacosmn;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
    }


    public function save_equipo_mn(){
        $this->load->model('Reporte_model');
        $idequipo=$this->input->post('idequipo');
        $cantidad=$this->input->post('cantidad');
        $idinstitucion=$this->input->post('idinstitucion');
        $datos=[
            'idequipo' => $idequipo,
            'cantidad' => $cantidad,
            'idinstitucion' => $idinstitucion
        ];
        $itemid=$this->Reporte_model->save_equipo_mn($datos);
        $detalleequipos=$this->Reporte_model->load_detalleequipos_mn($idinstitucion);
        $data['status'] = 'ok';
        $data['detalleequiposmn']=$detalleequipos;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
    }
    public function save_radiofarmaco_mn(){
        $this->load->model('Reporte_model');
        $idequipo=$this->input->post('idequipo');
        $cantidad=$this->input->post('cantidad');
        $idinstitucion=$this->input->post('idinstitucion');
        $datos=[
            'idequipo' => $idequipo,
            'cantidad' => $cantidad,
            'idinstitucion' => $idinstitucion
        ];
        $itemid=$this->Reporte_model->save_radiofarmaco_mn($datos);
        $detalleradiofarmacos=$this->Reporte_model->load_detalleradiofarmacos_mn($idinstitucion);
        $data['status'] = 'ok';
        $data['detalleradiofarmacos']=$detalleradiofarmacos;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
    }
    public function load_detalle_radiofarmacos_mn(){
        $this->load->model('Reporte_model');
        $idinstitucion=$this->input->post('idinstitucion');
        $detalleradiofarmacos=$this->Reporte_model->load_detalleradiofarmacos_mn($idinstitucion);
        $data['status'] = 'ok';
        $data['detalleradiofarmacos']=$detalleradiofarmacos;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
    }
    public function load_detalle_equipos_mn(){
        $this->load->model('Reporte_model');
        $idinstitucion=$this->input->post('idinstitucion');
        $detalleequiposmn=$this->Reporte_model->load_detalleequipos_mn($idinstitucion);
        $data['status'] = 'ok';
        $data['detalleequiposmn']=$detalleequiposmn;
        return $this->output->set_content_type('application/json')->set_status_header('200')->set_output(json_encode($data));
    }
}
