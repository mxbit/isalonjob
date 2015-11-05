<?php
$data = ($this->load->_ci_cached_vars);
?>
  <div class="panel" style="width: 800px;border: solid 1px rgba(237, 235, 224, 1);background-color: rgba(237, 235, 224, 1);">
  <a href="#" ><img src="<?php print base_url()?>assets/img/logo.png?>" alt="" /></a>

    <div class="panel-header" style="margin-left:10px;margin-right:10px;border-top:solid 1px gray;"><h3><?php echo " Staff Requirement Details" ?></h3></div>
    <div class="panel-content">

      <div class="span10" style="margin-left:10px">
      <table>
    <tr height="30"><td>Contact Details:</td>
      <td><?php print $data['contact_details']?></td>
    </tr>       
    <tr height="30"><td>Name of the Salon:</td>
      <td> <?php print $data['name_salon']?></td>
    </tr>  
    <tr height="30"><td>Complete Address:</td>
      <td> <?php print $data['address']?></td>
    </tr>
    <tr height="30"><td>Type of business:</td>
      <td> <?php print $data['business_type']?></td>
    </tr>
    <tr height="30"><td>Position Description:</td>
      <td> <?php print $data['position_details']?></td>
    </tr>
    <tr height="30"><td>Need to fill the above position:</td>
      <td> <?php print $data['joining_date']?> </td>
    </tr>
    <tr height="30"><td>Additional details</td>
      <td> <?php print $data['additional_info']?></td>
    </tr>      
       <tr height="30"><td></td></tr>     
      </table>
      </div>
    </div>
  </div>