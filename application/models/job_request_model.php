<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class job_request_model extends CI_Model{
    private $__table = 'isalon_staff_requirement';
    private $__table_sub = 'isalon_job_info';
    
    
    public function __construct()
    {
        parent::__construct();
    }
  
     public function add_staffrequest($data){
     	$query = $this->db->insert($this->__table, $data); 
        return $query;        	
     }

 	public function add_jobsrequest($data){
     	$query = $this->db->insert($this->__table_sub, $data); 
        return $query;        	
     }
    
}