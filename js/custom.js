$(".btnSend").click(function(){
        $('#staff_form').bootstrapValidator({container: 'tooltip',
        feedbackIcons: {valid: 'icon icon-material-done',invalid: 'icon icon-material-close',validating: 'glyphicon glyphicon-refresh'},
        fields: {
            cn_details: {
                validators: {notEmpty: {message: 'Contact Details is required'}
                }
            },
            salon_name: {
                validators: {notEmpty: {message: 'Name of the Salon required'}
                }
            },
            address: {
                validators: {notEmpty: {message: 'Address required'}
                }
            },
            business_type: {
                validators: {notEmpty: {message: 'Choose the type'}
                }
            },

            p_description: {
                validators: {notEmpty: {message: 'Description is required'}
                }
            },
            date: {
                validators: {notEmpty: {message: 'Date required'}
                }
            }
            
            
            }
                      
    }).on('success.form.bv', function(e) {
            e.preventDefault();
            var $form = $(e.target);
            var bv = $form.data('bootstrapValidator');            
            var $inputs = $('staff_form :input');
                    var values = {};
                    $inputs.each(function() {
                        values[this.name] = $(this).val();
                        console.log(values[this.name] + '=' + $(this).val())
                    });
                    var values = {};
                    $.each($('.staff_form').serializeArray(), function(i, field) {
                        console.log(field.name);
                        values[field.name] = field.value;
                    });
                    send_data=values;
                    if ($form.data('submitted') === true) {
                      e.preventDefault();
                    } 
                    else {
                        $.ajax({ type: "POST", url: window.isalon.base_url+'save_staffrequest' , data: send_data }).done(function( msg ) {
                        sweetAlert("Success!", "Your Staff Requirement Form submitted successfully.", "success"); 
                        console.log(JSON.stringify(values));
                        $('#cn_details').val("");
                        $('#salon_name').val("");
                        $('#address').val("");
                        $('#business_type').val("");
                        $('#p_description').val("");
                        $('#date').val("");
                        $('#additional_detail').val("");                                                        
                        });
                      $form.data('submitted', true);
                    }
                   
        });                                                         
                
         
})
 

$(".job_submit").click(function(){
        $('#job_form').bootstrapValidator({container: 'tooltip',
        feedbackIcons: {valid: 'icon icon-material-done',invalid: 'icon icon-material-close',validating: 'glyphicon glyphicon-refresh'},
        fields: {
            name: {
                validators: {notEmpty: {message: 'Your name is required'}
                }
            },
            mobile: {
                    validators: {
                    digits: {message: 'The phone number can contain digits only'},
                    notEmpty: {message: 'Your phone number is required'},
                    stringLength: {min: 10,max: 12,message: 'Not a valid Phone number'}
                }
            },
            email: {
                validators: {notEmpty: {message: 'Email is required'},
                 emailAddress: {message: 'The value is not a valid email address'}
                
                }
            },
            position: {
                validators: {notEmpty: {message: 'Choose Position'}
                }
            },

            Locality: {
                validators: {notEmpty: {message: 'Your Locality is required'}
                }
            },
            salon_type: {
                validators: {notEmpty: {message: 'Choose the type of Salon'}
                }
            },
            
            
            salary: {
                validators: {notEmpty: {message: 'Your salary is required'},
                digits: {message: 'Salary can contain digits only'}
                }
            }
            }           
    }).on('success.form.bv', function(e) {
            e.preventDefault();
            var $form = $(e.target);
            var bv = $form.data('bootstrapValidator'); 
            var $inputs = $('job_form :input');

                    var values = {};
                    $inputs.each(function() {
                        values[this.name] = $(this).val();
                        console.log(values[this.name] + '=' + $(this).val())
                    });

                     var values = {};
                    $.each($('.job_form').serializeArray(), function(i, field) {
                        console.log(field.name);
                        values[field.name] = field.value;
                    });
                    send_data=values;

                if ($form.data('submitted') === true) {
                      e.preventDefault();
                    } 
                else {
                        $.ajax({ type: "POST", url: window.isalon.base_url+'save_jobrequest' , data: send_data }).done(function( msg ) {
                        sweetAlert("Success!", "Your Job Request submitted Successfully.", "success");
                        console.log(JSON.stringify(values));
                        $('#name').val("");
                        $('#mobile').val("");
                        $('#email').val("");
                        $('#position').val("");
                        $('#Locality').val("");
                        $('#salon_type').val("");
                        $('#salary').val(""); 

                        });
                      $form.data('submitted', true);
                    }
                           
        });                                                         
                
         
})

$('#date').datepicker({
format: "dd/mm/yyyy"
 });  
            
          