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
}
