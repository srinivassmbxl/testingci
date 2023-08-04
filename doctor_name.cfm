<fieldset>
    <div class="single_question doctor_name_field">
        <div class="single_ques_top">
            <h3 class="fs-title">Please Enter Doctor's Name.</h3>
        </div>
        <div class="question_area">
            <div class="form-group">
                <input type="text" class="form-control" name="name" id="doctor_fields" placeholder="Doctor Name" onblur="getdoctorname(this.value)" /><span>.PersonaPro.com</span>
                <br />
                <span id="doctor_name_valid"></span>
            </div>
        </div>
    </div>
    
    <!---<button type="button" name="previous" class="previous action-button btn_fixed">Back</button>--->
    <button type="button" name="next" id="doctor_name_next" style="padding: 8px;" class="action-button nxt"><span>Submit</span></button>
</fieldset>
<script>
function getdoctorname(val){

  var hostpath = window.location.hostname;
  var hostproto = window.location.protocol;
  var path_location = hostproto+'//'+hostpath;

  if (val != ''){
      $.ajax({
        method: 'get',
        url: 'getDoctorDeatils.cfc?method=GetDoctorName',
        dataType: 'json',
          data: {
            DoctorName: val
          },
          success: 
          function(resdata){
            var str = resdata.result;
            // alert(str);
            if(str == true){
              //$(".action-button").addClass("next");
              $("#doctor_name_valid").text("");
			  //alert(path_location);
			  window.location.replace("https://"+ val +'.personapro.com/advisor/');
              //window.location = 'https://test.personapro.com/advisor/';
            }else{
              $("#doctor_name_valid").text("Please enter exact doctor name.!");
              //$(".action-button").removeClass("next");
              $("#doctor_name_valid").css("color","#d50057");
            }
          }
      });
  }
}
</script>