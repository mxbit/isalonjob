<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

     public function __construct(){  
      parent::__construct();

      $this->load->model('job_request_model','job_model');
      
    }
    
    
    public function index(){    
        $this->load->view('home/home');
    }
    
    public function user_request()
    {

    $data['content'] = 'home/view_staff_requirement_form';  
    $this->load->view('template/template_home',$data);

    }
    public function save_staffrequest()
    {
        $staff_data = array (
                    'contact_details'        =>$this->input->post('cn_details'),
                    'name_salon'             =>$this->input->post('salon_name'),
                    'address'                =>$this->input->post('address'),
                    'business_type'          =>$this->input->post('business_type'),
                    'position_details'       =>$this->input->post('p_description'),
                    'joining_date'           =>$this->input->post('date'),
                    'additional_info'        =>$this->input->post('additional_detail')

                    );
                    $result = $this->job_model->add_staffrequest($staff_data);

    //mail start here

        $config['mailtype'] = 'html';
        $config['charset'] = 'iso-8859-1';
        $config['wordwrap'] = TRUE;

        $this->load->library('email');
        $this->email->initialize($config);

        $this->email->from('Hi@isalonjob.com');
        $this->email->to('lavanya@mxbit.co.in');
        $this->email->subject('Staff Requirement Details');
        $data = $staff_data;
        $message = $this->load->view('mailes/view_message',$data,TRUE);
        $this->email->message($message);    
        $this->email->send();
        //print_r($message);

    }
 
public function job_request()
    {

    $data['content'] = 'home/view_salon_job';  
    $this->load->view('template/template_home',$data);

    }
    public function save_jobrequest()
    {
        $data = array (
                    'name'              =>$this->input->post('name'),
                    'phone'             =>$this->input->post('mobile'),
                    'email'             =>$this->input->post('email'),
                    'position'          =>$this->input->post('position'),
                    'locality'          =>$this->input->post('Locality'),
                    'prefered_type'     =>$this->input->post('salon_type'),
                    'salary'            =>$this->input->post('salary')

                    );
                    $result = $this->job_model->add_jobsrequest($data);
                    echo $result;

        //mail start here

        $config['mailtype'] = 'html';
        $config['charset'] = 'iso-8859-1';
        $config['wordwrap'] = TRUE;

        $this->load->library('email');
        $this->email->initialize($config);
        $this->email->from('Hi@isalonjob.com');
        $this->email->to('lavanya@mxbit.co.in');
        $this->email->subject('Job Request Details');
        $data = $data;
        $message = $this->load->view('mailes/view_jobrequest_message',$data,TRUE);
        $this->email->message($message);    
        $this->email->send();
          //print_r($message);           

    } 
    

//@class ends
}