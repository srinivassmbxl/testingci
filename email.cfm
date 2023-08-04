<fieldset class="9st_ques">
    <div class="single_question email_fields">
        <div class="single_ques_top">
            <div class="fs-title">What&rsquo;s your email address? <button type="button" class="modal_info_btn" data-bs-toggle="modal" data-bs-target="#modal_info_email">Why We Ask</button></div>
            <p class="paragraph">We use this to create your account and deliver your personalized recommendations. By creating an account, you agree to our <br class="hidden-xs" /><a class="pink_text" href="#" data-bs-toggle="modal" data-bs-target="#privacyPolicy">Privacy Policy</a> and <a class="pink_text" href="#" data-bs-toggle="modal" data-bs-target="#termsCondition">Terms &amp; Conditions</a>.</p>
        </div>
        <div class="question_area">
            <div class="form-group">
                <input id="email" class="form-control" name="email" type="email" placeholder="email@address.com" aria-label="Email">
            </div>
        </div>
    </div>
    <div class="agree_checked">
        <div class="form-group checkbox_btn">
            <input type="checkbox" name="agree_persona" id="agree_persona">
            <label id="email_gdpr" for="agree_persona"><span class="gdpr_label_text">I agree to have Persona keep me informed by sending me personalized news, offers, and products by email.</span></label>
        </div>
    </div>
    <button type="button" name="previous" id="email_back" class="previous action-button secondary_cta btn_fixed">Back</button>
    <button type="button" name="email_submit" id="email_submit" class="email_next action-button primary_cta btn_fixed">Next</button>

<!---
    <button  type="button" class="primary_cta" data-toggle="modal" data-target="#modal_mail">Click Here</button>--->
    <!-- Pill Info Modal -->
    <div id="modal_mail" class="modal fade default_modal modal_info" role="dialog" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" >
                <div class="modal-body text-center">
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    <div class="main_modalmail_content">
                        <div class="modalmail_content">
                            <img class="modalemail-icon" src="./assets/images/Email-icon.png">
                            <h3 class="sent_med">Please verify your email</h3>
                            <p class="paragraph emailmodal-para">This email address already exists. In order to continue with your assessment, please confirm your email address by clicking the link we&rsquo;ve sent to <b id="Email_id">satish@vptest.com </b></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!---
    <button  type="button" class="primary_cta" data-toggle="modal" data-target="#modal_mailThankyou">Click Here</button>--->
    <!-- Pill Info Modal -->
    <div id="modal_mailThankyou" class="modal fade default_modal modal_info" role="dialog" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content" >
                <div class="modal-body text-center">
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    <div class="main_modalmail_content" >
                        <div class="modalmail_content">
                            <img class="modalemail-icon" src="./assets/images/Email-icon.png">
                            <h3 class="sent_med">Thank You!</h3>
                            <p class="paragraph emailmodal-para">Your email address has been verified.</p>
                            <button id="cntassessment" class="continue_ass primary_cta">continue assesment</button>
                        </div>
                    </div>
                </div> 
            </div>
        </div>
    </div>

   <!--- <button  type="button" class="primary_cta" data-toggle="modal" data-target="#modal_mailThankyou">Click Here</button>--->
    <!-- Pill Info Modal -->
    <!---
    <div id="modal_mailThankyou" class="modal fade default_modal horizon_center modal_info" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content" >
                <div class="modal-body text-center">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <div class="main_modalmail_content" >
                        <div class="modalmail_content">
                    <img class="modalemail-icon" src="./assets/images/Email-icon.png">
                    <h3 class="sent_med">Thank You!</h3>
                    <p class="paragraph emailmodal-para">Your email address has been verified.</p>
                    <button  class="continue_ass primary_cta">continue assesment</button>
                    </div>
                </div>
            </div>
                
            </div>
        </div>
    </div>
--->
    <!-- Pill Info Modal -->
    <div id="modal_info_email" class="modal fade default_modal modal_info" role="dialog" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body text-center">
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    <h3 class="sent_med">Why We Ask</h3>
                    <p class="paragraph">Your email saves your recommendation so you can view it later. We never share your info with anyone. Ever.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="gotit_close" data-bs-dismiss="modal">Got it!</button>
                </div>
            </div>
        </div>
    </div>     
    
    <!--- Google verification email popup 28-11-2022 --->
    <div id="google_emailverif" class="modal fade default_modal modal_info" tabindex="-1" role="dialog">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body text-center">
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                    <p >Please &apos;cancel&apos; to update your email to google email, &apos;continue&apos; to proceed further with regular discount</p>
                    <div class="cta-section">
                        <button type="button" class="cta_pink default_btn primary_cta" data-bs-dismiss="modal">cancel</button>
                        <button type="button" class="cta_pink default_btn primary_cta" id="ctnuRegister">continue</button>
                    </div>
                </div>
            </div>
        </div>
    </div> 
</fieldset>



