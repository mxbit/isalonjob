<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

     public function __construct(){  
      parent::__construct();	
      
    }
    
    
    public function index(){	
	    $this->load->view('home/home');
    }
    
	public function user_request()
	{

	$data['content'] = 'home/view_staff_requirement';  
    $this->load->view('template/template_home',$data);

	}
 
    

//@class ends
}