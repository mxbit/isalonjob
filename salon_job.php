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
    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style type="text/css">
    fieldset
    {
    width:600px;
    }
    legend
    {
        font-size: 20px;
    }
    label.field
    {
      text-align:left;
      width:200px;
      float:left;
      font-weight: bold;  
    }
    input.textbox
    {
        width:300px;
        float:left;
    }
    fieldset p
    {
        clear:both;
        padding:5px;
    }
</style>

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
<section>
    <div style="width:100%;">
        
    
        <form style="margin-left:20%"  name="job_form" id="job_form" method="post" action="" >
        <h2 class="section-heading">Need a Salon Job ?</h2>
            <fieldset>
       
       <p><label class="field">Name*</label>
        <input type="text" name="name" placeholder=""></p>
       <p><label class="field">Mobile*</label>
        <input type="text" name="mobile" placeholder=""></p>
       <p><label class="field">Email Address*</label>
        <input type="text" name="email" placeholder=""></p>
       <p><label class="field">Position Desired*</label>
        
        <select name="position">
            <option value="1">Beautician</option>
            <option value="2">Hair Stylist</option>
            <option value="3">Spa Therapist</option>
            <option value="4">Salon Manager</option>
            <option value="5">Receptionist</option>
            <option value="6">Trainer</option>
            <option value="7">Other</option>

          </select></p>
       <p><label class="field">Locality where you stay*</label>
       <input type="text" name="Locality" placeholder=""></p>
           
       <p><label class="field">Preferred type of Salon*</label>
            <select name="salon_type">
            <option value="1">Ladies Only</option>
            <option value="2">Gents Only</option>
            <option value="3">Unisex WITHOUT Cross Gender Services</option>
            <option value="4">Unisex WITH Cross Gender Services</option>
          </select></p>
       <p><label class="field">Current Salary*</label>
        <input type="text" name="salary" placeholder=""></p>
        <button style="margin-left: 60%" name="submit" type="submit" class="btn btn-primary btn-xl">
            Submit</button>
        </fieldset>
    </form>                   
               
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
 
// Escape user inputs for security



 
// attempt insert query execution
if(isset($_POST['submit']))
{
$name = mysqli_real_escape_string($link, $_POST['name']);
$mobile = mysqli_real_escape_string($link, $_POST['mobile']);
$email = mysqli_real_escape_string($link, $_POST['email']);
$position = mysqli_real_escape_string($link, $_POST['position']);
$Locality = mysqli_real_escape_string($link, $_POST['Locality']);
$salon_type = mysqli_real_escape_string($link, $_POST['salon_type']);
$salary = mysqli_real_escape_string($link, $_POST['salary']);
$sql = "INSERT INTO   isalon_job_info(name,phone,email,position,locality,prefered_type,salary) 
VALUES ('$name','$mobile','$email','$position','$Locality','$salon_type','$salary')";
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

   
    

</body>

</html>
