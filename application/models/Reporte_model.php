<?php
class Reporte_model extends CI_Model {

    public function __construct() {
        parent:: __construct();
    }
    public function ireporte($datos)
    {
        $this->db->insert('reportedsr.reporte', $datos);
    }
    public function get_instituciones()
    {
        if (empty($salida)) { $salida=""; }
        $query = $this->db->query("select * from reportedsr.reporte;");
        $salida=$query->result();
        return $salida;
    }
    public function guardar_datos($datos)
    {
        $this->db->insert('reportedsr.institucion', $datos);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }
    public function update_datos($datos,$id)
    {
        $this->db->where('id', $id);
        $this->db->update('reportedsr.institucion', $data);
        return $id;
    }
    public function get_reporte($idreporte)
    {
        if (empty($salida)) { $salida=""; }
        $query = $this->db->query("select * from reportedsr.reporte where id=$idreporte");
        $salida=$query->result();
        return $salida;
    }
    public function get_institucion($idreporte)
    {
        if (empty($salida)) { $salida=""; }
        $query = $this->db->query("select * from reportedsr.institucion where idreporte=$idreporte");
        $salida=$query->result();
        return $salida;
    }
    public function guardar_mn($datos)
    {
        $this->db->insert('reportedsr.medicina_nuclear', $datos);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }
    public function update_mn($datos,$id)
    {
        $this->db->where('id', $id);
        $this->db->update('reportedsr.medicinanuclear', $data);
        return $id;
    }
    public function guardar_rd($datos)
    {
        $this->db->insert('reportedsr.radiodiagnostico', $datos);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }
    public function update_rd($datos,$id)
    {
        $this->db->where('id', $id);
        $this->db->update('reportedsr.radiodiagnostico', $data);
        return $id;
    }
    public function guardar_rt($datos)
    {
        $this->db->insert('reportedsr.radioterapia', $datos);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }
    public function update_rt($datos,$id)
    {
        $this->db->where('id', $id);
        $this->db->update('reportedsr.radioterapia', $data);
        return $id;
    }
    public function load_equipos_mn()
    {
        if (empty($salida)) { $salida=""; }
        $query = $this->db->query("select * from reportedsr.tipoequipo where hpadre=8");
        $salida=$query->result();
        return $salida;
    }
    public function load_radiofarmacos_mn()
    {
        if (empty($salida)) { $salida=""; }
        $query = $this->db->query("select * from reportedsr.tipoequipo where hpadre=9");
        $salida=$query->result();
        return $salida;
    }
    public function guardar_equipo_mn($datos)
    {
        $this->db->insert('reportedsr.tipoequipo', $datos);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }
    public function guardar_radiofarmaco_mn($datos)
    {
        $this->db->insert('reportedsr.tipoequipo', $datos);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }
    public function save_equipo_mn($datos)
    {
        $this->db->insert('reportedsr.detallemn', $datos);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }
    public function save_radiofarmaco_mn($datos)
    {
        $this->db->insert('reportedsr.detallemn', $datos);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }
    public function load_detalle_equipos_mn($idinstitucion)
    {
        if (empty($salida)) { $salida=""; }
        $query = $this->db->query("select reportedsr.detallemn.id as id, reportedsr.tipoequipo.nombre as equipo, reportedsr.tipoequipo.id as idequipo, reportedsr.detallemn.cantidad as cantidad from reportedsr.detallemn, reportedsr.tipoequipo where reportedsr.detallemn.idequipo=reportedsr.tipoequipo.id AND reportedsr.tipoequipo.hpadre=9 AND reportedsr.detallemn.idinstitucion=".$idinstitucion);
        $salida=$query->result();
        return $salida;
    }
    public function load_detalleradiofarmacos_mn($idinstitucion)
    {
        if (empty($salida)) { $salida=""; }
        $query = $this->db->query("select reportedsr.detallemn.id as id, reportedsr.tipoequipo.nombre as equipo, reportedsr.tipoequipo.id as idequipo, reportedsr.detallemn.cantidad as cantidad from reportedsr.detallemn, reportedsr.tipoequipo where reportedsr.detallemn.idequipo=reportedsr.tipoequipo.id AND reportedsr.tipoequipo.hpadre=9 AND reportedsr.detallemn.idinstitucion=".$idinstitucion);
        $salida=$query->result();
        return $salida;
    }    
}
