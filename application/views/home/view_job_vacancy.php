<section id="vacancy_list">

<div class="container" id="vacancy_list" style="min-height: 255px;">
<div class="row">

  <div class="col-md-12">
      <div class=" panel">           
        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
         
          <?php if($details == null)  {  ?>
              <div class="panel-heading font color_view" role="tab" style="height:40px;padding-top:10px;background-color:#FCF8E3">
                      <div class="col-md-12">
                            <span style="font-size:30px">No Vacancies Found</span>
                      </div>
              </div>           
            <?php } else {?>
              <?php foreach ($details as $key => $value): ?>
                  <div class="panel panel-default font">
                        <div class="panel-heading font color_view" role="tab" id="headingOne_<?php echo $key;?>" style="height:40px;padding-top:10px;background-color:#FCF8E3">
 
                                <div class="col-md-8">
                                     <span style="font-weight: bold" >
                                          <?php print $value->position ; ?></span>
                                </div>
                                <div class="col-md-2">
                                    <span>Posted On :<?php print $value->start_date ; ?></span>
                                </div>
                                <div class="col-md-2">
                                    <a role="button" data-toggle="collapse" style="color: #580D09;font-weight: bold" data-parent="#accordion" href="#collapseOne_<?php echo $key;?>" aria-expanded="true" aria-controls="collapseOne_<?php echo $key;?>">
                                    Read More</a>
                                </div>
                 
                        </div>
                        <div id="collapseOne_<?php echo $key;?>" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne_<?php echo $key;?>">
                               
                                <div class="panel-body font sub_heading color_view">
                                        <div class="col-md-8">
                                              <div><b>Job Title:</b> </span><?php print $value->position ?></div><br>
                                              <span><b>Location:</b> </span><?php print $value->location ?><br>
                                              <span><b>Salary Range:</b> </span><?php print $value->salary_range ?><br>
                                              <span><b>Description:</b> </span><?php print $value->description ?><br>
                                        </div>
                                        <div class="col-md-4"><span>ClosingDate:</span> <?php print $value->close_date ?></div>
<!--                                     <div class="col-md-2"> <a href="#about" class="btn btn-primary page-scroll">Apply Now</a></div>
 -->                             </div>
                                         
                        </div>
                   </div>
                <?php endforeach ?>
              <?php } ?>
       </div>
     </div>
   </div>

</div>
</div>

</section>


