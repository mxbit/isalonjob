<?php
$data = ($this->load->_ci_cached_vars);
$position = array( '1'  => 'Beautician', '2' => 'Hair Stylist', '3' => 'Spa Therapist', '4' => 'Salon Manager', '5'=> 'Receptionist', '6' => 'Trainer', '7' => 'Other');
 $type = array( '1'  => 'Ladies Only', '2' => 'Gents Only', '3' => 'Unisex WITHOUT Cross Gender Services', '4' => 'Unisex WITH Cross Gender Services');


?>
  <div class="panel" style="width: 600px;border: solid 1px rgba(237, 235, 224, 1);background-color: rgba(237, 235, 224, 1);">
  <a href="#" ><img src="<?php print base_url()?>assets/img/logo.png?>" alt="" /></a>

    <div class="panel-header" style="margin-left:10px;margin-right:10px;border-top:solid 1px gray;"><h3><?php echo " Message" ?></h3></div>
    <div class="panel-content">

      <div class="span10" style="margin-left:10px">
      <table>
    <tr height="30"><td>Name:</td>
      <td><?php print $data['name']?></td>
    </tr>       
    <tr height="30"><td>Mobile:</td>
      <td> <?php print $data['phone']?></td>
    </tr>  
    <tr height="30"><td>Email:</td>
      <td> <?php print $data['email']?></td>
    </tr>
    <tr height="30"><td>Position Desired:</td>
      <td><?php print $position[$data['position']]?></td>
    </tr>
    <tr height="30"><td>Locality:</td>
      <td> <?php print $data['locality']?></td>
    </tr>
    <tr height="30"><td>Preferred Type of Salon:</td>
      <td> <?php print  $type[$data['prefered_type']]?> </td>
    </tr>
    <tr height="30"><td>Current Salary</td>
      <td> <?php print $data['salary']?></td>
    </tr>      
       <tr height="30"><td></td></tr>     
      </table>
      </div>
    </div>
  </div>