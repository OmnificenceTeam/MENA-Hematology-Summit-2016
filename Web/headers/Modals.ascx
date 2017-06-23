<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Modals.ascx.cs" Inherits="headers_Modals" %>

<!-- FAQ and Contact us -->
<div class="modal right fade no-menu-modal" id="modal-faq" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="opacity: 1;">
                        <span aria-hidden="true" class="colorX">&times;</span>
                    </button>
                    <h3 class="modal-title">Frequently Asked Questions</h3>
                </div>

                <h4>1.	Unable to register</h4>
                <ul>

                    <li>Ensure to enter the unique access code provided by the Novartis representative</li>
                    <li>Ensure to enter all mandatory fields (marked with asterisk * )</li>
                    <li>Password must be 8 characters/digits long</li>
                    <li>It is mandatory to agree to the terms of use and provide consent. Kindly check the box after going through the details and before clicking/tapping on submit icon.</li>
                </ul>
                <br />
                <h4>2.	Do not have Access code. How to register?</h4>
                <ul>
                    <li>Approach the Novartis representative
                    </li>
                    <li>Alternatively please write to us from the ‘Contact us’ section</li>
                </ul>
                <br />
                <h4>3.	Successfully registered but unable to Login</h4>
                <ul>
                    <li>Kindly check your registered email ID for an account activation email from 'info@hematologysummit.com'
                    </li>
                    <li>Post activation of your account you will be able to Login with the registered credentials.</li>
                </ul>
                <br />
                <h4>4.	Forgot password/Reset password</h4>
                <ul>
                    <li>On the landing page click on ‘Forgot Password’, enter the registered email ID and submit. User will receive an automated email on their registered email ID, with a link to reset password. User can then login using the new password
                    </li>
                </ul>
                <br />
                <h4>5.	Accessibility on Mobile/Tablet </h4>
                <ul>
                    <li>Once registered on either laptop/desktop or mobile app, you can directly login on any device.</li>
                </ul>
                <br />
                <h4>6.	The minimum system requirements.</h4>

                <table class="table table-bordered border-white" style="margin-left: 25px;">
                    <tr>
                        <td>CPU</td>
                        <td>A modern computer manufactured in the last 5 years</td>
                    </tr>
                    <tr>
                        <td>RAM	</td>
                        <td>512MB required, 1GB or more recommended</td>
                    </tr>
                    <tr>
                        <td>Operating System		</td>
                        <td>Windows XP, Vista, Windows 7, Mac OS X 10.4.x or later</td>
                    </tr>
                    <tr>
                        <td>Internet	</td>
                        <td>Cable Modem, DSL, LAN (min 512Kbps, 1Mbps or greater recommended)	</td>
                    </tr>
                    <tr>
                        <td>Sound Card	</td>
                        <td>Sound card and speakers, headset with microphone (optional)	</td>
                    </tr>
                    <tr>
                        <td>Monitor and Video Card		</td>
                        <td>1024 x 768 or higher screen resolution</td>
                    </tr>
                </table>
                <br />
                <h4>7.	Browser settings </h4>
                <p>Please check if your browser is updated with the laquizversion. Below are the compatible browsers:</p>


                <ul>
                    <li>Internet Explorer: Version 10 and above
                    </li>
                    <li>Mozilla Firefox: Version 44 and above</li>
                    <li>Google Chrome: Version 50 and above</li>
                    <li>Safari: Version 8 and above</li>
                </ul>
                <br />
                <h4>8.	Technical assistance</h4>

                <ul>
                    <li>For all technical assistance, you can write to us via ‘Contact us’ section. Technical team will get back to you over email within 48 business hours.</li>
                </ul>
                <br />
                <h4>9.	Changes in registered email ID.</h4>
                <ul>
                    <li>For change in registered email ID, you can write to us via ‘Contact us’ section. Technical team will get back to you over email within 48 business hours.</li>
                </ul>
                <br><br><br><br>
            </div>

        </div>
        <!-- modal-content -->
    </div>
    <!-- modal-dialog -->
</div>
<!-- modal -->


<div class="modal right fade no-menu-modal" id="modal-contact" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="modal-header">
                    <button type="button" id="btncnt" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true" class="colorX">&times;</span>
                    </button>
                    <h3 class="modal-title">CONTACT US</h3>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 p-r-40">

                    <h4>Feedback type*</h4>
                    <select id="ddftype" class="regInput cs-style bg-white">
                        <option value="Technical Support">Technical Support</option>
                        <option value="Feedback">Feedback</option>
                        <option value="Request for change of registration">Request for change of registration</option>
                    </select>
                    <h4>Email*</h4>
                    <input type="email" id="cemail" class="regInput cs-style bg-white" placeholder="" />
                    <h4>Description*</h4>
                    <textarea rows="4" class="regInput cs-style bg-white" style="resize: none;" id="cdesc" placeholder=""></textarea>
                    <br />

                    <div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 20px; padding: 0px;">
                        <div class="col-md-9 col-sm-8 col-xs-12" style="padding: 0;">
                            <div id="cuMsg">
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-4 col-xs-12" style="padding: 0px;">
                            <input type="button" onclick="onClickContactus()" class="btn btn-red1 pull-right" value="Submit" />
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12 p-r-40">
                    <div>
                        <br />
                        <div class="heading_cntctus">Address</div>
                        <p style="font-weight: bolder;">Novartis Pharma Services</p>
                        <p class="addresstext">Jumeirah Village Triangle, Al Khail Road,</p>
                        <p class="addresstext">Limitless Building, Level 2,</p>
                        <p class="addresstext">Dubai, UAE</p>
                        <p class="addresstext">Phone: +971-55 123 52 70</p>
                        <p class="addresstext">Fax: +971-4-4357703</p>
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal right fade no-menu-modal" id="myModal_PrivacyPolicy1" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="opacity: 1;">
                        <span aria-hidden="true" class="colorX">&times;</span>
                    </button>
                    <h3 class="modal-title">Privacy Policy</h3>
                </div>
                <div>
                    <p>
                        This Privacy Statement describes the ways in which we, Novartis Pharma AG, collect, hold and use information about individual persons who visit this website. BY USING THIS WEBSITE, YOU CONSENT TO THE COLLECTION AND USE OF INFORMATION AS SET FORTH IN THIS PRIVACY POLICY. YOU ALSO ACKNOWLEDGE THAT NOVARTIS AG MAY PERIODICALLY CHANGE, MODIFY, ADD OR REMOVE OR OTHERWISE UPDATE THIS PRIVACY POLICY AT ITS DISCRETION, WITHOUT PRIOR NOTIFICATION. However, we will always handle your Personal Information in accordance with the Privacy Policy that was in effect at the time of collection. It is our intention to post changes to our privacy policy on this page so that you are fully informed concerning the types of information we are gathering, how we use it, and under what circumstances it may be disclosed. Our Privacy Policy is located on our homepage and is also available on any page where Personal Data are requested. At such data collection points, further explanation may be provided, where appropriate, as to the purposes for which the data will be used.
            <br>
                        <br>

                        <strong>1. Pledge on privacy </strong>
                        <br>
                        <br>
                        The term "Personal Data" as used in this Privacy Policy refers to information such as your name, birth date, e-mail address, mailing address, or telephone number that can be used to identify you. Generally, we will only process your Personal Data as described in this Privacy Policy. However, we reserve the right, to conduct additional processing to the extent permitted or required by law, or in support of any legal or criminal investigation.<br>
                        The next sections explain how and when we collect Personal Data from you.<br>
                        <br>

                        <strong>2. Intended use of Personal Data</strong>
                        <br>
                        <br>
                        Most of our services do not require any form of registration, allowing you to visit our site without telling us who you are. However, on certain occasions, such as when you sign up for a notification service,  register for a web course, elect to receive a continuing education credit, we need more specific information about you such as: your first name, last name, title or degree, affiliated institutions and e-mail address. On occasions when you request technical support, we may need further information such as: type of computer you are using, your operating system and the speed of your Internet connection. Whenever we request for identifying information from our visitors, we will clearly indicate the purpose for our request. We use this information to process your requests, register you for programmes that may be of your interest, or to contact you regarding site changes. We will not send you any e-mail that you have not agreed to receive. The hematologysummit.com will not disclose any personal information about your visits to our sites, except in cases where such information is necessary for you to receive educational programme details on hematologysummit.com. Any disclosure to third parties will only be made with your prior consent.
            <br>
                        <br>
                        <strong>3. Non-disclosure of Personal Data</strong>
                        <br>
                        <br>
                        We will not sell, share, or otherwise distribute your Personal Data to third parties except as provided in this Privacy Policy. We may disclose your Personal Data to other Novartis affiliates worldwide that agree to treat it in accordance with this Privacy Policy. Personal Data may also be transferred to third parties who act for or on our behalf, for further processing in accordance with the purpose(s) for which the data were originally collected or may otherwise be lawfully processed, such as services delivery, evaluating the usefulness of this website, marketing, data management or technical support. These third parties have contracted with us to only use Personal Data for the agreed upon purpose, and not to sell your Personal Information to third parties, and not to disclose it to third parties except as may be required by law, as permitted by us or as stated in this Privacy Policy.<br>
                        <br>
                        Personal Data collected from you may also be transferred to a third party in the event that the business of this site or a part of it and the customer data connected with it is sold, assigned or transferred, in which case we would require the buyer, assignee or transferee to treat Personal Data in accordance with this Privacy Policy. Also, Personal Data may be disclosed to a third party if we are required to do so because of an applicable law, court order or governmental regulation, or if such disclosure is otherwise necessary in support of any criminal or other legal investigation or proceeding here or abroad.<br>
                        <br>

                        <strong>4. Right of access, correction and objection</strong>
                        <br>
                        <br>
                        Whenever we process Personal Data, we take reasonable steps to ensure that your Personal Data is kept accurate and up-to date for the purposes for which it was collected. We will provide you with the ability to object to the processing of your Personal Data if such processing is not reasonably required for a legitimate business purpose as described in this policy or our compliance with law. In the case of electronic direct marketing, we will provide you with a method to opt out of receiving further marketing materials or with a method to opt in if required by law. 
                        <br>
                        <br>
                        If you wish to contact us regarding our use of your Personal Data or object to the processing of your Personal Data, please email us at corporate.enquiries@group.novartis.com. If you contact us, please note the name of the website where you provided the information, as well as the specific information you would like us to correct, update or delete plus a proper identification of you. Requests to delete personal data will be subject to any applicable legal and ethical reporting or document filing or retention obligations imposed on us.<br>
                        <br>

                        <strong>5. Security and confidentiality</strong>
                        <br>
                        <br>
                        To ensure the security and confidentiality of Personal Data that we collect online, we use data networks protected, inter alia, by industry standard firewall and password protection. In the course of handling your Personal Data, we take measures reasonably designed to protect that information from loss, misuse, unauthorized access, disclosure, alteration or destruction.<br>
                        <br>

                        <strong>6. Data transfer abroad</strong>
                        <br>
                        <br>
                        We are part of the Novartis Group which is a global group of companies and has databases in different countries, some of which are operated by the local Novartis Group Company, and some of which are operated by third parties on behalf of the local Novartis Group Company. We may transfer your data to one of the Group's databases outside your country of domicile, potentially including countries which may not require an adequate level of protection for your Personal Data compared with that provided in your country.<br>
                        <br>

                        <strong>7. "Cookies" and internet tags</strong>
                        <br>
                        <br>
                        We may collect and process information about your visit to this website, such as the pages you visit, the website you came from and some of the searches you perform. Such information is used by us to help improve the contents of the site and to compile aggregate statistics about individuals using our site for internal, market research purposes. In doing this, we may install "cookies" that collect the domain name of the user, your internet service provider, your operating system, and the date and time of access. A "cookie" is a small piece of information which is sent to your browser and stored on your computer’s hard drive. Cookies do not damage your computer. You can set your browser to notify you when you receive a "cookie," this will enable you to decide if you want to accept it or not. If you do not want us to install cookies, please email us at corporate.enquiries@group.novartis.com. We would like to inform you, however, that if you do not accept you may not be able to use all functionality of your browser software. We may obtain the services of outside parties to assist us in collecting and processing the information described in this Section.
                        <br>
                        <br>
                        Occasionally, we may use internet tags (also known as action tags, single-pixel GIFs, clear GIFs, invisible GIFs and 1-by-1 GIFs) and cookies at this site and may deploy these tags/cookies through a third-party advertising partner or a web analytical service partner which may be located and store the respective information (including your IP-address) in a foreign country. These tags/cookies are placed on both online advertisements that bring users to this site and on different pages of this site. We use this technology to measure the visitors' responses to our sites and the effectiveness of our advertising campaigns (including how many times a page is opened and which information is consulted) as well as to evaluate your use of this website. The third-party partner or the web analytical service partner may be able to collect data about visitors to our and other sites because of these internet tags/cookies, may compose reports regarding the website’s activity for us and may provide further services which are related to the use of the website and the internet. They may provide such information to other parties if there is a legal requirement that they do so, or if they hire the other parties to process information on their behalf. If you would like more information about web tags and cookies associated with on-line advertising or to opt-out of third-party collection of this information, please visit the Network Advertising Initiative website http://www.networkadvertising.org.<br>
                        <br>

                        <strong>8. Personal information and children</strong>
                        <br>
                        <br>
                        Most of the services available on this site are intended for persons 18 years of age and older. Any individual who requests information about a medicine indicated for use in children must be 18 or over. We will not knowingly collect, use or disclose Personal Data from a minor under the age of 18, without obtaining prior consent from a person with parental responsibility (e.g., a parent or guardian) through direct off-line contact. We will provide the parent with (i) notice of the specific types of personal data being collected from the minor, and (ii) the opportunity to object to any further collection, use, or storage of such information. We abide by laws designed to protect children.<br>
                        <br>

                        <strong>9. Links to other sites</strong>
                        <br>
                        <br>
                        This Privacy Policy applies only to this website, and not to websites owned by third parties. We may provide links to other websites which we believe may be of interest to our visitors. We aim to ensure that such websites are of the highest standard. However, due to the nature of the internet, we cannot guarantee the privacy standards of websites to which we link or be responsible for the contents of sites other than this one, and this Privacy Policy is not intended to be applicable to any linked, non-Novartis site.<br>
                        <br>

                        <strong>10. Contact us</strong>
                        <br>
                        <br>
                        If you have any queries or complaints about our compliance with this Privacy Policy, or if you would like to make any recommendations or comments to improve the quality of our Privacy Policy, please email us at corporate.enquiries@group.novartis.com.<br>
                        <br>
                    </p>
                    <br><br><br><br>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="modal-survey" class="modal left fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" style="padding: 4px 20px !important;">&times;</button>
                <h4 class="modal-title">SURVEY</h4>
            </div>
            <div class="modal-body" style="width: 340px;">
                <p>1. Approximately how many CML patients do you see per month? (total, not de novo)*</p>
                <div style="">
                    <input type="radio" id="radio01" questionid="1" value="1" name="surveyQuestion1" onclick="onClickSurveyOption(this);" />
                    <label for="radio01"><span></span>0</label>
                </div>
                <div>
                    <input type="radio" id="radio02" questionid="1" value="2" name="surveyQuestion1" onclick="onClickSurveyOption(this);" />
                    <label for="radio02"><span></span>1-5</label>
                </div>
                <div>
                    <input type="radio" id="radio03" questionid="1" value="3" name="surveyQuestion1" onclick="onClickSurveyOption(this);" />
                    <label for="radio03"><span></span>6-10</label>
                </div>
                <div>
                    <input type="radio" id="radio04" questionid="1" value="4" name="surveyQuestion1" onclick="onClickSurveyOption(this);" />
                    <label for="radio04"><span></span>11-15</label>
                </div>
                <div>
                    <input type="radio" id="radio04a" questionid="1" value="5" name="surveyQuestion1" onclick="onClickSurveyOption(this);" />
                    <label for="radio04a"><span></span>16-20</label>
                </div>
                <div>
                    <input type="radio" id="radio04b" questionid="1" value="6" name="surveyQuestion1" onclick="onClickSurveyOption(this);" />
                    <label for="radio04b"><span></span>>20</label>
                </div>
                <br />
                <p>2. Approximately how many MPN (Ph negative) patients do you see per month? (total, not de novo)*</p>
                <div>
                    <input type="radio" id="radio05" questionid="2" value="1" name="surveyQuestion2" onclick="onClickSurveyOption(this);" />
                    <label for="radio05"><span></span>0</label>
                </div>
                <div>
                    <input type="radio" id="radio06" questionid="2" value="2" name="surveyQuestion2" onclick="onClickSurveyOption(this);" />
                    <label for="radio06"><span></span>1-5</label>
                </div>
                <div>
                    <input type="radio" id="radio07" questionid="2" value="3" name="surveyQuestion2" onclick="onClickSurveyOption(this);" />
                    <label for="radio07"><span></span>6-10</label>
                </div>
                <div>
                    <input type="radio" id="radio08" questionid="2" value="4" name="surveyQuestion2" onclick="onClickSurveyOption(this);" />
                    <label for="radio08"><span></span>11-15</label>
                </div>
                <div>
                    <input type="radio" id="radio09" questionid="2" value="5" name="surveyQuestion2" onclick="onClickSurveyOption(this);" />
                    <label for="radio09"><span></span>16-20</label>
                </div>
                <div>
                    <input type="radio" id="radio10" questionid="2" value="6" name="surveyQuestion2" onclick="onClickSurveyOption(this);" />
                    <label for="radio10"><span></span>>20</label>
                </div>
                <br />
                <p>3. Approximately how many chronic immune thrombocytopenia   (cITP) patients do you see per month? (total, not de novo)*</p>
                <div>
                    <input type="radio" id="radio11" questionid="3" value="1" name="surveyQuestion3" onclick="onClickSurveyOption(this);" />
                    <label for="radio11"><span></span>0</label>
                </div>
                <div>
                    <input type="radio" id="radio12" questionid="3" value="2" name="surveyQuestion3" onclick="onClickSurveyOption(this);" />
                    <label for="radio12"><span></span>1-5</label>
                </div>
                <div>
                    <input type="radio" id="radio13" questionid="3" value="3" name="surveyQuestion3" onclick="onClickSurveyOption(this);" />
                    <label for="radio13"><span></span>6-10</label>
                </div>
                <div>
                    <input type="radio" id="radio14" questionid="3" value="4" name="surveyQuestion3" onclick="onClickSurveyOption(this);" />
                    <label for="radio14"><span></span>11-15</label>
                </div>
                <div>
                    <input type="radio" id="radio15" questionid="3" value="5" name="surveyQuestion3" onclick="onClickSurveyOption(this);" />
                    <label for="radio15"><span></span>16-20</label>
                </div>
                <div>
                    <input type="radio" id="radio16" questionid="3" value="6" name="surveyQuestion3" onclick="onClickSurveyOption(this);" />
                    <label for="radio16"><span></span>>20</label>
                </div>
                <br />
                <p>4. Approximately how many severe aplastic anemia patients do you see per month? (total, not de novo)*</p>
                <div>
                    <input type="radio" id="radio17" questionid="4" value="1" name="surveyQuestion4" onclick="onClickSurveyOption(this);" />
                    <label for="radio17"><span></span>0</label>
                </div>
                <div>
                    <input type="radio" id="radio18" questionid="4" value="2" name="surveyQuestion4" onclick="onClickSurveyOption(this);" />
                    <label for="radio18"><span></span>1-2</label>
                </div>
                <div>
                    <input type="radio" id="radio19" questionid="4" value="3" name="surveyQuestion4" onclick="onClickSurveyOption(this);" />
                    <label for="radio19"><span></span>3-5</label>
                </div>
                <div>
                    <input type="radio" id="radio20" questionid="4" value="4" name="surveyQuestion4" onclick="onClickSurveyOption(this);" />
                    <label for="radio20"><span></span>>5</label>
                </div>

                <br />
                <p>5. Approximately how many iron overload patients do you see per month? (total, not de novo)*</p>
                <div>
                    <input type="radio" id="radio23" questionid="5" value="1" name="surveyQuestion5" onclick="onClickSurveyOption(this);" />
                    <label for="radio23"><span></span>0</label>
                </div>
                <div>
                    <input type="radio" id="radio24" questionid="5" value="2" name="surveyQuestion5" onclick="onClickSurveyOption(this);" />
                    <label for="radio24"><span></span>1-5</label>
                </div>
                <div>
                    <input type="radio" id="radio25" questionid="5" value="3" name="surveyQuestion5" onclick="onClickSurveyOption(this);" />
                    <label for="radio25"><span></span>6-10</label>
                </div>
                <div>
                    <input type="radio" id="radio26" questionid="5" value="4" name="surveyQuestion5" onclick="onClickSurveyOption(this);" />
                    <label for="radio26"><span></span>11-15</label>
                </div>
                <div>
                    <input type="radio" id="radio27" questionid="5" value="5" name="surveyQuestion5" onclick="onClickSurveyOption(this);" />
                    <label for="radio27"><span></span>16-20</label>
                </div>
                <div>
                    <input type="radio" id="radio28" questionid="5" value="6" name="surveyQuestion5" onclick="onClickSurveyOption(this);" />
                    <label for="radio28"><span></span>>20</label>
                </div>
                <br />
         
                <p>6. What are your expectations regarding the MENA Hematology Summit in terms of content and learnings? *</p>
                <div>
                    <textarea id="textbox1" questionid="6" style="width: 100%;"></textarea>
                </div>
                <br />

            </div>
            <div class="modal-footer">
                <div class="surveryErr" id="sErrMsg"></div>
                <button type="button" class="" onclick="submitFeedback();">SUBMIT</button>
            </div>
        </div>

    </div>
</div>


<div class="modal fade" id="exitPromptModal" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="myModalLabel" aria-hidden="true" disabled="true">
    <div class="modal-dialog">
        <div class="modal-content" style="">
            <div class="modal-header">
                Logout
            </div>
            <div class="modal-body">
                <span>Are you sure you would like to Logout?</span>
            </div>
            <div class="modal-footer">
                <button type="button" class="Exit_Btn btn btn-danger" data-dismiss="modal" onclick="onclickLogout();">Yes</button>
                <button type="button" class="Exit_Btn btn btn-default" data-dismiss="modal" onclick="hideExitModal();">No</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="onlinecme" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="myModalLabel" aria-hidden="true" disabled="true">
    <div class="modal-dialog">
        <div class="modal-content" style="">
            <div class="modal-header">
                Alert
            </div>
            <div class="modal-body">
                <span><b>Coming Soon !</b><br />
                    </span>
            </div>
            <div class="modal-footer">

                <button type="button" class="Exit_Btn btn btn-default" data-dismiss="modal" onclick="$('#onlinecme').hide();">Ok</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="modalConf" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="myModalLabel" aria-hidden="true" disabled="true">
    <div class="modal-dialog">
        <div class="modal-content" style="margin-top:35%;">
            <div class="modal-header">
                Alert
            </div>
            <div class="modal-body">
                By following this link, you are now leaving the Hematology summit website. The site you are entering is not controlled by Novartis and Novartis is not responsible for its content or your use of it.
            </div>
            <div class="modal-footer">

                <button type="button" class="Exit_Btn btn btn-default" data-dismiss="modal" onclick="$('#onlinecme').hide();">Cancel</button>
                <a target="_blank" style="" onclick="$('#modalConf').modal('hide');" class="Exit_Btn btn btn-default">Confirm</a>
            </div>
        </div>
    </div>
</div>


<div class="modal right fade no-menu-modal" id="myModal_Termspolicy1" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="opacity: 1;">
                        <span aria-hidden="true" class="colorX">&times;</span>
                    </button>
                    <h3 class="modal-title">Terms of Use</h3>
                </div>
                <div>
                    <strong>1. Acceptance</strong>
                    <br>
                    <br>
                    Your access to and use of this Site is subject to the following terms and conditions and all applicable laws. By accessing and browsing this Site, you accept, without limitation or qualification, these Terms and Conditions and acknowledge that any other agreements regarding the use of this Site between you and Novartis Pharma AG are superseded and of no force or effect.<br>
                    <br>

                    <strong>2. Medical information/conditions</strong>
                    <br>
                    <br>
                    Product information on this web site is provided by Novartis Pharma AG and is intended for general information purposes only. Many pharmaceutical and medical device products listed are available upon prescription from a medical doctor or qualified medical professional only, and not all such products may be available in all countries. The product information is not intended to provide complete medical information. SHOULD YOU HAVE A MEDICAL CONDITION, PROMPTLY SEE YOUR OWN MEDICAL DOCTOR OR HEALTH CARE PROVIDER. WE DO NOT OFFER PERSONALIZED MEDICAL DIAGNOSIS OR PATIENT-SPECIFIC TREATMENT ADVICE. You should always obtain complete medical information about your prescription medicines or medical devices (including their beneficial medical uses and possible adverse effects) by discussing the appropriate use of any medicine(s) or medical devices directly with your prescribing physician or, where appropriate, other medical advisor. Medical professionals may obtain complete medical information from the product's information leaflet. Information on these products may vary by country. Patients, physicians and other medical professionals should check with local medical resources and regulatory authorities for information appropriate to their country. In addition, current regulations in many countries limit (or even prohibit in some instances) the ability of Novartis Pharma AG to provide information and/or to respond directly to patient questions regarding its prescription products. Novartis Pharma AG, however, will respond to inquiries from and provide information to your qualified health care professional in accordance with local regulations.<br>
                    <br>

                    <strong>3. Use of information</strong>
                    <br>
                    <br>
                    You may freely browse the Site, but you may only access, download or use information from this Site, including any text, images, audio, and video (the "Information") for your own non-commercial use. You may not distribute, modify, transmit, reuse, repost, or use the Information for commercial purposes, without written permission of Novartis Pharma AG. You must retain and reproduce each and every copyright notice or other proprietary rights notice contained in any Information you download. You should assume that everything you see or read on this Site is copyrighted unless otherwise noted and may not be used except as provided in these Terms and Conditions or in the text on the Site without the written permission of Novartis Pharma AG. Except as otherwise permitted in this paragraph, Novartis Pharma AG neither warrants nor represents that your use of materials displayed on the Site will not infringe rights of third parties not owned by or affiliated with Novartis Pharma AG. With the exception of the foregoing limited authorization, no license to or right in the Information, or any copyright of Novartis Pharma AG or of any other party is granted or conferred to you.<br>
                    <br>

                    <strong>4. Trademarks/proprietary rights</strong>
                    <br>
                    <br>
                    You should assume that all product names appearing on this Site, whether or not appearing in large print, italics or with the trademark symbol are trademarks of Novartis. This Site may also contain or reference patents, proprietary information, technologies, products, processes or other proprietary rights of Novartis Pharma AG and/or other parties. No license to or right in any such trademarks, patents, trade secrets, technologies, products, processes and other proprietary rights of Novartis Pharma AG and/or other parties is granted to or conferred upon you. All product names published in italics on this Site are trademarks owned by or licensed to the Novartis Group.<br>
                    <br>

                    <strong>5. Disclaimer of warranties</strong>
                    <br>
                    <br>
                    While Novartis Pharma AG uses reasonable efforts to ensure that the Information is accurate and up to date, the Information may contain inaccuracies or typographical errors. Novartis Pharma AG reserves the right to make changes, corrections and/or improvements to the Information, and to the products and programs described in such Information, at any time without notice. Novartis Pharma AG makes no warranties or representations as to the accuracy of any of the Information. Novartis Pharma AG assumes no liability or responsibility for any errors or omissions in the content of the Site. ALL INFORMATION IS PROVIDED "AS IS." NOVARTIS PROVIDES NO WARRANTIES ABOUT THE COMPLETENESS OR ACCURACY OF THE INFORMATION ON THIS SITE OR ITS POSSIBLE USES. CONSEQUENTLY, THE INFORMATION SHOULD BE CAREFULLY EVALUATED BY SITE VISITORS. NEITHER NOVARTIS AG, NOR ANY OTHER NOVARTIS GROUP COMPANY, NOR ANY OTHER PARTY INVOLVED IN CREATING, PRODUCING OR DELIVERING THIS SITE TO YOU SHALL BE LIABLE FOR ANY DIRECT, INCIDENTAL, CONSEQUENTIAL, INDIRECT OR PUNITIVE DAMAGES ARISING OUT OF ACCESS TO, USE OF OR INABILITY TO USE THIS SITE, OR ANY ERRORS OR OMISSIONS IN THE CONTENT OF THE SITE. Some jurisdictions do not allow the exclusion of implied warranties, so the above exclusion may not apply to you. Novartis Pharma AG also assumes no responsibility, and shall not be liable for, any damages to, or viruses that may infect, your computer equipment or other property on account of your access to, or use of the Information. Novartis Pharma AG reserves the right to discontinue this Site at any time without notice and without liability.<br>
                    <br>


                    <strong>6. Worldwide products</strong>
                    <br>
                    <br>
                    This Site may contain information on worldwide products and services, not all of which are available in every location. A reference to a product or service on this Site does not imply that such product or service is or will be available in your location. The products referred to on this Site may be subject to different regulatory requirements depending on the country of use. Consequently, visitors may be notified that certain sections of this Site are intended only for certain kinds of expert users or only for audiences in certain countries. You should not construe anything on this Site as a promotion or advertisement for any product or for the use of any product that is not authorized by the laws and regulations of your country of residence.<br>
                    <br>

                    <strong>7. Disclaimer</strong>
                    <br>
                    <br>
                    Nothing on this Site constitutes an invitation or offer to invest or deal in the securities or American Depositary Receipts of Novartis. In particular, actual results and developments may be materially different from any forecast, opinion or expectation expressed on this Site and the past performance of the price of securities must not be relied on as a guide to their future performance.<br>
                    <br>

                    <strong>8. Links to this site</strong>
                    <br>
                    <br>
                    Novartis Pharma AG has not reviewed any or all of the third-party websites which contain links to this Site and is not responsible for the content of any such off-site pages or any other sites linked to the Site. If you wish to link your website to this Site, you may only link to the home page. You may not link to any other pages within this Site without the prior written consent of Novartis Pharma AG. Quotation or use of one or more portions of this Site in the site of any third parties without written consent is likewise prohibited.<br>
                    <br>

                    <strong>9. Links to other sites</strong>
                    <br>
                    <br>
                    Links to third-party sites may be provided for the interest or convenience of visitors to this Site. We will endeavor to inform you when you are leaving this Site that the terms of use and privacy policy of the third-party site may be different. However, Novartis Pharma AG accepts no liability for links from us to others, and in particular we are not responsible for the accuracy or legality of the content thereof. We accept no liability deriving from a breach or omission in the privacy policies of third parties.<br>
                    <br>


                    <strong>10. Consequences</strong>
                    <br>
                    <br>
                    If we become aware that you have violated any of the terms and conditions contained in this Legal Statement, we may immediately take corrective action, including preventing the user from using the services offered by Novartis Pharma AG and removing any information, data and content put on the Site by the user, at any moment and without notice. If we have been injured by your violation we may, in our sole discretion, seek to recover damages from you.<br>
                    <br>

                    <strong>11. Revisions</strong>
                    <br>
                    <br>
                    Novartis Pharma AG may at any time revise these Terms and Conditions by updating this posting. You are bound by any such revisions and should therefore periodically visit this page to review the then current Terms and Conditions to which you are bound.<br>
                    <br>
                </div>
                <br><br><br><br>

            </div>
        </div>
    </div>
</div>

<!-- FAQ and Contact us -->
<div class="modal fade no-menu-modal" id="modal-banner" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content" style="margin-top:16%;">
            <div class="modal-body">
                <div style="width: 100%">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
                    <div style="float: left; width: 50%">
                        <img src="../assets/images/logo1.png" style="width: 100%;" />
                    </div>
                    <div style="float: left; width: 50%">
                        <img src="../assets/images/novartis_banner.png" style="width: 100%;" />
                    </div>
                    <br style="clear: left" />
                </div>
                <div style="padding: 15px;">
                    Novartis Oncology is delighted to announce the <span style="color: #a11c1c">launch</span> of <span style="color: #a11c1c">MENA Hematology Summit 2016</span> smartphone application.
                </div>
                <div style="width: 100%;">
                    <div class="left-content">
                        <div class="download-btn">
                            <a href="http://www.mx2.us/mhs" target="_blank" style="color:#fff;">Download Today!</a>
                        </div>
                        <div class="direct-link-btn">
                            <span style="font-weight: normal">Search Keyword:</span><br />
                          <span style="padding-top: 5px;cursor:pointer;color:#fff;">HEMATOLOGY SUMMIT</span>
                            <hr />
                            <span style="font-weight: normal">Direct link:</span><br />
                            <span><a href="http://www.mx2.us/mhs" target="_blank" style="color:#fff;">www.mx2.us/mhs</a></span>
                        </div>
                        <div class="cols" style="text-align: center;">
                            <div class="col-4 store-img-col">
                                <a href="http://www.mx2.us/mhs" target="_blank" style="color:#fff;"><img src="../assets/images/apple.png" class="store-img" /></a>
                            </div>
                            <div class="col-4 store-img-col">
                                 <a href="http://www.mx2.us/mhs" target="_blank" style="color:#fff;"><img src="../assets/images/google.png" class="store-img" /></a>
                            </div>
                            <div class="col-4 store-img-col">
                                 <a href="http://www.mx2.us/mhs" target="_blank" style="color:#fff;"><img src="../assets/images/windows.png" class="store-img" /></a>
                            </div>
                        </div>
                        <br />
                    </div>
                    <div class="right-content">
                        <div class="banner-list-container">
                            <ul>
                                <li>
                                    <span>Anytime access to the program agenda</span>
                                </li>
                                <li>
                                    <span>Post a question to the speaker during summit</span>
                                </li>
                                <li>
                                    <span>Send your feedback at any moment</span>
                                </li>
                                <li>
                                    <span>Provide your opinion during polling</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <br style="clear: left" />
                </div>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="mail-send-modal" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="myModalLabel" aria-hidden="true" disabled="true">
    <div class="modal-dialog">
        <div class="modal-content" style="margin-top:35%;">
            <div class="modal-header">
                Info
            </div>
            <div class="modal-body" id="mailAlert">
                
            </div>
            <div class="modal-footer">
                <button type="button" class="Exit_Btn btn btn-default" data-dismiss="modal">Ok</button>
            </div>
        </div>
    </div>
</div>


<!-- View Webcast-->
<div class="modal fade" id="viewwebcast" tabindex="-1" role="dialog" data-backdrop="static" aria-labelledby="myModalLabel" aria-hidden="true" disabled="true" >
    <div class="modal-dialog">
        <div class="modal-content" style="">
            <div class="modal-header">
                Alert
            </div>
            <div class="modal-body">
                <span><b>Webcast is closed.</b><br>
                    </span>
            </div>
            <div class="modal-footer">

                <button type="button" class="Exit_Btn btn btn-default" data-dismiss="modal" onclick="$('#viewwebcast').hide();">Ok</button>
            </div>
        </div>
    </div>
</div>