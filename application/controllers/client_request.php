<?php defined('BASEPATH') OR exit('No direct script access allowed');

class client_request extends CI_Controller {

     public function __construct(){  
      parent::__construct();	
      if (!$this->ion_auth->logged_in()){
        redirect('auth', 'refresh');
      }	

      $this->load->model('jobs_model','jobs'); 
      $this->load->library('grocery_CRUD');
    }
    
    
    public function index(){	
	     redirect('client_request/job_request_list');
    }
    
    public function job_request_list(){
      $crud = new grocery_CRUD();
      $crud->set_table('isalon_job_info');    
      $crud->set_subject('Jobs Requests List');

    $crud->field_type('prefered_type','dropdown',
            array( '1'  => 'Ladies Only', '2' => 'Gents Only', '3' => 'Unisex WITHOUT Cross Gender Services', '4' => 'Unisex WITH Cross Gender Services'));
$crud->field_type('position','dropdown',
            array( '1'  => 'Beautician', '2' => 'Hair Stylist', '3' => 'Spa Therapist', '4' => 'Salon Manager', '5'=> 'Receptionist', '6' => 'Trainer', '7' => 'Other'));

      $crud->display_as('id','Job Id');
      $crud->display_as('name','Name');
      $crud->display_as('phone','Phone');
      $crud->display_as('email','Email');
      $crud->display_as('position','Position');
      $crud->display_as('locality','Locality');
      $crud->display_as('prefered_type','prefered_type');
      $crud->display_as('salary','Salary');

      $crud->order_by('id','desc');

      

      $crud->required_fields('id','name','phone','email','position','locality','prefered_type','salary');

      $crud->columns('id','name','phone','email','position','locality','prefered_type','salary');

      $crud->unset_add();
      $crud->unset_edit();
      

      $data['gcrud'] = $crud->render();

      $data['content'] = 'jobs/view_job_request';  
      $this->load->view('admin/template_admin',$data);    
    }

 public function staff_requirement_list(){
      $crud = new grocery_CRUD();
      $crud->set_table('isalon_staff_requirement');    
      $crud->set_subject('Staff Requirement List');

    
      $crud->display_as('id','Id');
      $crud->display_as('contact_details','Contact Details');
      $crud->display_as('name_salon','Name of the Salon');
      $crud->display_as('address','Complete Address');
      $crud->display_as('business_type','Type of Business');
      $crud->display_as('position_details','Position Description');
      $crud->display_as('joining_date','joining_Date');
      $crud->display_as('additional_info','Additional_Info');

      $crud->order_by('id','desc');

      $crud->required_fields('id','contact_details','name_salon','address','business_type','position_details','joining_date','additional_info');
      $crud->columns('id','contact_details','name_salon','address','business_type','position_details','joining_date','additional_info');

      $crud->unset_add();
      $crud->unset_edit();
      

      $data['gcrud'] = $crud->render();

      $data['content'] = 'jobs/view_staff_requirement_list';  
      $this->load->view('admin/template_admin',$data);    
    }
 
    

//@class ends
}