<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

// Incluimos el archivo fpdf
// require_once APPPATH."/third_party/fpdf/mc_pdf.php";
require_once 'application/third_party/PHPExcel.php';
class Excel extends PHPExcel{
	public function __construct(){
		parent::__construct();
	}
}
?>
