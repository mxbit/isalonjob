<!--  start staff requirement form Here   -->
<section class="ibg-primary" id="staff_form">
    <div class="container">
        <div class="row">
        <div class="col-lg-10 col-lg-offset-2 text-center">
        <h2 class="section-heading">Staff Requirement Form</h2>
    <form name="staff_form" id="staff_form" method="post" action="" class="staff_form form-horizontal" >
           <div style="margin-right: 430px;width:25%;margin-left: 145px;font-size: 22px;">
            Client Information</div>

        <fieldset>
                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2">Contact Details*</label>
                    <div class="col-lg-10">
                       <textarea name="cn_details"class="form-control" rows="5" id="cn_details"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Name of the Salon*</label>
                    <div class="col-lg-10">
                        <input type="text" class="form-control" name="salon_name" id="salon_name" placeholder="">
                    </div>
                </div>
               
                 <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Complete Address*</label>
                    <div class="col-lg-10">
                        <h5 style="margin-right: 45%">Enter the address where the candidate will be called for interview</h5>
                       <textarea name="address" class="form-control" rows="5" id="address"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 panel-heading">Type of business*</label>
                    <div class="col-lg-10"style="text-align:left;font-size:15px;">
                    <ul>
                        <li class="list-style"><input type="radio" name="business_type" id="business_type" value="Ladies & Kids Only">Ladies & Kids Only</li>
                        <li class="list-style"><input type="radio" name="business_type" id="business_type" value="Gents Only">Gents Only</li>
                        <li class="list-style"><input type="radio" name="business_type" id="business_type" value="Unisex - WITHOUT Cross Gender Services">Unisex - WITHOUT Cross Gender Services</li>
                        <li class="list-style"><input type="radio" name="business_type" id="business_type" value="Unisex - WITH Cross Gender Services">Unisex - WITH Cross Gender Services</li>
                    </ul>
                    </div>
                </div>

               <div style="margin-right: 430px;margin-left: 145px;font-size: 22px;">
                Staffing Requirement Details</div>
               <div class="form-group">
                    <label for="inputEmail" class="col-lg-2 control-label">Position Description*</label>
                    <div class="col-lg-10">
                       <textarea name="p_description" class="form-control" id="p_description" rows="5" id="address"></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail" class="col-lg-2">By when do you need to fill the above position?</label>
                    <div class="col-lg-10">
                      <input type="text" name="date" class="form-control" id="date" placeholder="click to show datepicker">
                    </div>
                </div>

                 <div class="form-group">
                    <label for="inputEmail" class="col-lg-2">Any additional details, remarks, etc.?</label>
                    <div class="col-lg-10">
                       <textarea name="additional_detail" class="form-control" id="additional_detail" rows="5" id="contact_details"></textarea>
                    </div>
                </div>    
                                   
            <div class="form-group pull-right" >
                <div class="col-lg-12 ">
                
                <button name="submit" type="submit" class="btnSend btn btn-primary btn-xl ">Submit</button>
                </div>
            </div>        

        </fieldset>
    </form>

         </div>
        </div>
    </div>
</section>
