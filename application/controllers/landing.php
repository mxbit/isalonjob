<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Landing extends CI_Controller {

  public function __construct(){  
    parent::__construct();  
    if (!$this->ion_auth->logged_in()){
      redirect('auth', 'refresh');
    }  

    $this->load->library('grocery_CRUD');
    $this->load->model('places_model','places');


  }

  public function index(){  
    redirect('landing/admin_home');
  }

  
  public function admin_home()  {
    $data['content'] = 'admin/view_admin_landing';  
    $this->load->view('admin/template_admin',$data);    
  }

  public function maps()  {
    $data['content'] = 'maps/testmap';
    $data['metro'] = true;
    $this->load->view('admin/template_admin',$data);    
  }

  public function vacancy()  {
    $crud = new grocery_CRUD();
    $crud->set_table('isalon_vacancy');    
    $crud->set_subject('Vacancy List'); 


    $crud->display_as('id_vacancy','VacancyID');
    $crud->display_as('position','Position');
    $crud->display_as('location','Location');
    $crud->display_as('salary_range','Salary_Range');
    $crud->display_as('contact_info','Contact_Information');
    $crud->display_as('start_date','Start Date');
    $crud->display_as('close_date','Closing Date');
    $crud->display_as('description','Description');
    
    $crud->required_fields('id_vacancy','position','location','salary_range','contact_info','start_date','close_date','description');

    $crud->columns('id_vacancy','position','location','salary_range','contact_info','start_date','close_date','description');
    
    $data['gcrud'] = $crud->render();

    $data['content'] = 'admin/view_vacancy_list';  
    $this->load->view('admin/template_admin',$data);
   
  }




/**
AJAX REQUESTS
***/

  public function get_citis()  {
    $cities = $this->places->get_places( $this->input->get('query') );
    echo (json_encode($cities->result()));
  }



//@class ends
}