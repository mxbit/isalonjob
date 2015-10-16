   
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

<!--  start staff requirement form Here   -->
<section class="ibg-primary">
    <div style="width:100%;">
        
    
        <form style="margin-left:20%"  name="job_form" id="job_form" class="job_form" method="post" action="#" >
        <h2 class="section-heading">Need a Salon Job ?</h2>
        <fieldset>
        <div class="form-group">
           <p><label class="field">Name*</label>
           <input type="text" name="name" id="name" class="form-control" placeholder=""></p>
       </div>

        <div class="form-group">
            <p><label class="field">Mobile*</label>
            <input type="text" name="mobile" id="mobile" class="form-control" placeholder=""></p>
        </div>
        <div class="form-group">
            <p><label class="field">Email Address*</label>
            <input type="text" name="email" id="email" class="form-control" placeholder=""></p>
        </div>
        <div class="form-group">
           <p><label class="field">Position Desired*</label><br>
            <select name="position" id="position" class="form-control">
                <option value="Beautician">Beautician</option>
                <option value="Hair Stylist">Hair Stylist</option>
                <option value="Spa Therapist">Spa Therapist</option>
                <option value="Salon Manager">Salon Manager</option>
                <option value="Receptionist">Receptionist</option>
                <option value="Trainer">Trainer</option>
                <option value="Other">Other</option>
            </select></p>
        </div>
        <div class="form-group">
           <p><label class="field">Locality where you stay*</label>
            <input type="text" name="Locality" id="Locality" class="form-control" placeholder=""></p>
        </div>
              <div class="form-group"> 
           <p><label class="field">Preferred type of Salon*</label>
                <select name="salon_type" id="salon_type" class="form-control">
                <option value="1">Ladies Only</option>
                <option value="2">Gents Only</option>
                <option value="3">Unisex WITHOUT Cross Gender Services</option>
                <option value="4">Unisex WITH Cross Gender Services</option>
              </select></p>
          </div>
    <div class="form-group">
           <p><label class="field">Current Salary*</label>
            <input type="text" name="salary" id="salary" class="form-control" placeholder=""></p>
    </div>
            
            <div class="form-group pull-right" >
            <div class="col-lg-12 ">
                <button type="submit" class="job_submit btn btn-primary btn-xl">Submit</button>
            </div>
            </div>        
            
        </fieldset>

    </form>                   
               
  </div>   
</section>

<!-- End Staff Requirement form here -->
