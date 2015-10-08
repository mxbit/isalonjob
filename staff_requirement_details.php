<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Bangalore Salon,Stylists at door you step">
    <meta name="keywords" content="stylists, bangalore stylists, sytlists in bangalore, bangalore salon, salons bangalore, spa, salon home services, salon at your service, salon at home, beauty services bangalore, salon app, salon booking app, salon appointment app, salon academy, salon at doorstep app, salon booking, salon booking app, grooming app, bridal app, grooming services, bridal services, salon operations, salon training">
    <meta name="author" content="anand@mxbit.co.in">

    <title>iSALONJOB.com</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css">

    <!-- Custom Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="css/animate.min.css" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/creative.css" type="text/css">
    <link rel="stylesheet" href="css/datepicker.css" type="text/css">
    <link rel="stylesheet" href="css/formValidation.css" type="text/css">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <img src="img/isalon.png"  style="width:250px;padding:10px;" class="img-responsive">
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="index.html">HOME</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">STAFFING</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">SERVICES</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">BUY/SELL</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="salon_job.php">JOB</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">CONTACT</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
<!--  start staff requirement form Here   -->
<section class="ibg-primary" id="staff_form">
    <div class="container">
        <div class="row">
        <div class="col-lg-10 col-lg-offset-2 text-center">
        <h2 class="section-heading">Staff Requirement Form</h2>
    <form name="staff_form" id="staff_form" method="post" action="staff_requirement_details.php" class="form-horizontal" >
           <div style="margin-right: 430px;width:25%;margin-left: 145px;font-size: 22px;">
            Client Information</div>

        <fieldset>
                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2">Contact Details</label>
                    <div class="col-lg-10">
                       <textarea name="cn_details"class="form-control" rows="5" id="contact_details"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Name of the Salon</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="salon_name" placeholder="">
                    </div>
                </div>
                 <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Complete Address</label>
                    <div class="col-lg-10">
                       <textarea name="address" class="form-control" rows="5" id="address"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 panel-heading">Type of business</label>
                    <div class="col-lg-10"style="text-align:left;font-size:15px;">
                    <ul>
                        <li class="list-style"><input type="radio" name="business_type" value="Ladies & Kids Only">Ladies & Kids Only</li>
                        <li class="list-style"><input type="radio" name="business_type" value="Gents Only">Gents Only</li>
                        <li class="list-style"><input type="radio" name="business_type" value="Unisex - WITHOUT Cross Gender Services">Unisex - WITHOUT Cross Gender Services</li>
                        <li class="list-style"><input type="radio" name="business_type" value="Unisex - WITH Cross Gender Services">Unisex - WITH Cross Gender Services</li>
                    </ul>
                    </div>
                </div>

               <div style="margin-right: 430px;width: auto;margin-left: 145px;font-size: 22px;">
                Staffing Requirement Details</div>
               <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Position Description</label>
                    <div class="col-lg-10">
                       <textarea name="p_description"class="form-control" rows="5" id="address"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2">By when do you need to fill the above position?</label>
                    <div class="col-lg-10">
                      <input type="text" name="date" class="date-control" placeholder="click to show datepicker" 
                        id="example1">
                    </div>
                </div>

                 <div class="form-group">
                    <label for="inputEmail" class="col-lg-2">Any additional details, remarks, etc.?</label>
                    <div class="col-lg-10">
                       <textarea name="additional_detail" class="form-control" rows="5" id="contact_details"></textarea>
                    </div>
                </div>    
                                   
            <div class="form-group pull-right" >
                <div class="col-lg-12 ">
                
                <button name="submit" type="submit" class="btn btn-primary btn-xl">Submit</button>
                </div>
            </div>        

        </fieldset>
    </form>

         </div>
        </div>
    </div>
</section>
<!-- End Staff Requirement form here -->

 <?php
/* Attempt MySQL server connection.*/
$link = mysqli_connect("localhost", "root", "","isalon");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 



 
// attempt insert query execution
if(isset($_POST['submit']))
{
// Escape user inputs for security
$cn_details = mysqli_real_escape_string($link, $_POST['cn_details']);
$salon_name = mysqli_real_escape_string($link, $_POST['salon_name']);
$address = mysqli_real_escape_string($link, $_POST['address']);
$business_type = mysqli_real_escape_string($link, $_POST['business_type']);
$p_description = mysqli_real_escape_string($link, $_POST['p_description']);
$date = mysqli_real_escape_string($link, $_POST['date']);
$additional_detail = mysqli_real_escape_string($link, $_POST['additional_detail']);
$sql = "INSERT INTO  isalon_staff_requirement (contact,name,address,business_type,position_details,joining_date,additional_info) VALUES ('$cn_details','$salon_name','$address','$business_type','$p_description','$date','$additional_detail')";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 }
// close connection
mysqli_close($link);
?>
    
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>You need our help ? That's great! Lets get started. Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-left">
                    <i class="fa fa-map-marker fa-3x wow bounceIn"></i>
                    <p class="text-left">754, 80 Feet Service Road, <br>11th Cross, 13th Main, Domlur, <br>HAL 2nd Stage, <br>Next to Woodstock Restaurant, Bengaluru, Karnataka 560008</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-phone fa-2x wow bounceIn" data-wow-delay=".1s"></i>
                    <p><a >080 4152 1400</a></p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-2x wow bounceIn" data-wow-delay=".1s"></i>
                    <p><a href="mailto:hi@isalonjob.com">hi@isalonjob.com</a></p>
                </div>

            </div>
        </div>
    </section>
    <script src="js/formValidation.js"></script>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/jquery.fittext.js"></script>
    <script src="js/wow.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/creative.js"></script>

    <!-- datepicker JavaScript -->
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script type="text/javascript">
            // When the document is ready
            $(document).ready(function () {
                
                $('#example1').datepicker({
                    format: "dd/mm/yyyy"
                });  
            
            });
        </script>

</body>

</html>
