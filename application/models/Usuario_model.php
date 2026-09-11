<?php
class Usuario_model extends CI_Model {

    public function __construct() {
        parent:: __construct();
    }
    public function login($login,$password)
    {
        //$this->load->database();     
        if (empty($salida)) { $salida=""; } 
        $query = $this->db->query("select * from reportedsr.usuarios where login='$login' and clave=md5('$password');");
        $row = $query->row();
        if (isset($row))
        {
            $salida=1;
        }          
        return $salida;       
    }
    public function idusuario($login,$password)
    {
        //$this->load->database();
        if (empty($salida)) { $salida=""; }
        $query = $this->db->query("select id from reportedsr.usuarios where login='$login' and clave=md5('$password');");

        $row = $query->row();

        if (isset($row))
        {
            $salida=$row->id;
        }         
        return $salida;         
    }
    public function idusuario_login($login)
    {
        //$this->load->database();
        if (empty($salida)) { $salida=""; }
        $query = $this->db->query("select id from reportedsr.usuarios where login='$login';");

        $row = $query->row();

        if (isset($row))
        {
            $salida=$row->id;
        }         
        return $salida;         
    }
    public function get_id()
    {
        if (empty($salida)) { $salida=""; } 
         
        $query = $this->db->query("select * from nextval('reportedsr.usuarios_id_seq');");   
        $salida=$query->result();
        foreach ($query->result() as $row)
        {
                $salida=$row->nextval;
        }        
        return $salida;              
    } 
    public function eliminar($id){
        $this->db->where('id', $id);
        $this->db->delete('reportedsr.usuarios'); 
    }    
}
