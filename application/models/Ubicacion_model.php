<?php
class Ubicacion_model extends CI_Model {

    public function __construct() {
        parent:: __construct();
    }

    public function get_estados()
    {
        $query = $this->db->query("select * from reportedsr.estados order by nombre;");   
        return $query->result();         
    }
    public function get_municipios($idestado)
    {
        $query = $this->db->query("select * from reportedsr.municipios where idestado=$idestado order by nombre;"); 
        return $query->result();
    }    
    public function get_parroquias($idmunicipio)
    {
        $query = $this->db->query("select * from reportedsr.parroquias where idmunicipio=$idmunicipio order by nombre;");   
        return $query->result();
    }
    public function estado($id)
    {
        if (empty($salida)) { $salida=""; } 
        $query = $this->db->query("select * from reportedsr.estados where id=$id order by nombre;");   
        foreach ($query->result() as $row)
            {
                $salida=$row->nombre;
            }
        return $salida;         
    }    
    public function parroquia($id)
    {
        if (empty($salida)) { $salida=""; } 
        $query = $this->db->query("select * from reportedsr.parroquias where id=$id order by nombre;");   
        foreach ($query->result() as $row)
            {
                $salida=$row->nombre;
            }
        return $salida;         
    }         
    public function municipio($id)
    {
        if (empty($salida)) { $salida=""; } 
        $query = $this->db->query("select * from reportedsr.municipios where id=$id order by nombre;");   
        foreach ($query->result() as $row)
            {
                $salida=$row->nombre;
            }
        return $salida;         
    }  
}
