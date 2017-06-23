<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MHS 2016</title>
    <link href="assets/images/favicon.jpg" rel="icon" type="image/jpg" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <meta name="format-detection" content="telephone=no" />
    <link rel="stylesheet" href="assets/css/bootstrap.css" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/landing.css" />
    <link rel="stylesheet" href="assets/css/common.css" />
    <link rel="stylesheet" href="assets/css/custom-modal.css" />

    <style>
        html {
            background: url(assets/images/bg.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            font-family: 'futura_md_btmedium';
        }

        #home-anim {
            background: rgba(161, 28, 28, 0.1);
        }
    </style>

    <style>
        /* Sticky footer styles
-------------------------------------------------- */
        html {
            position: relative;
            min-height: 100%;
        }

        body {
            /* Margin bottom by footer height */
            margin-bottom: 70px;
        }

        .footer {
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .loader {
            position: absolute;
            width: 100%;
            height: 100%;
            background-color: white;
            z-index: 99999999999;
        }


            .loader img {
                position: absolute;
                top: 0px;
                left: 0;
                bottom: 0;
                right: 0;
                margin: auto;
                max-width: 100%;
            }

        /**/ /**/
    </style>
 <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-76807941-1', 'auto');
        ga('send', 'pageview');

</script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="loader">
            <img src="assets/images/loader.gif" />
        </div>
        <!-- Begin page content -->
        <div class="container">
            <div class="main" style="height: 100%;">

                <div class="page page-home" data-page="home" style="display: block; visibility: inherit; opacity: 1; z-index: 100;">
                    <div id="home-anim">
                        <div class="elem elem-losange"></div>
                        <div class="elem elem-carre"></div>
                        <div class="elem elem-triangle"></div>
                        <div class="elem elem-losange"></div>
                        <div class="elem elem-blue"></div>
                    </div>
                </div>
                <div class="centerImg" id="logoDiv">
                    <img class="" src="assets/images/logo1.png" />
                    <div class="row btn-div">
                        <div class="col-md-7 col-sm-7 col-xs-7">
                            <button type="button" onclick="onClickRegBtn()" class="btn btn-white">REGISTRATION</button>
                        </div>
                        <div class="col-md-5 col-sm-5 col-xs-5">
                            <button type="button" onclick="onClickLoginBtn()" class="btn btn-red">LOGIN</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
   <%-- <div class="modal right fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">



                <div class="modal-body">
                    <div class="modal-header">
                        <button type="button" onclick="$('#logoDiv').fadeIn();" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h3 class="modal-title" id="myModalLabel2">FAQ</h3>
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
                        <li>Kindly check your registered email ID for an account activation email from 'info@cmlinteract.com'
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
                        <li>You can download CML Interact app from windows; android and apple store.

                        </li>
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

                        <li>For all technical assistance, you can write to us via 'Contact us' section. Technical team will get back to you over email within 48 business hours.</li>
                    </ul>
                    <br />
                    <h4>9.	Changes in registered email ID.</h4>
                    <ul>

                        <li>For change in registered email ID, you can write to us via 'Contact us' section. Technical team will get back to you over email within 48 business hours.</li>
                    </ul>
                </div>

            </div>
            <!-- modal-content -->
        </div>
        <!-- modal-dialog -->
    </div>--%>
      <div class="modal right fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">



                <div class="modal-body">
                    <div class="modal-header">
                        <button type="button" onclick="$('#logoDiv').fadeIn();" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h3 class="modal-title" id="myModalLabel2">Frequently Asked Questions</h3>
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



                    <ul>
                        <li>Internet Explorer: Version 10 and above
                        </li>
                        <li>Mozilla Firefox: Version 44 and above</li>
                        <li>Google Chrome: Version 50 and above</li>
                        <li>Safari: Version 8 and above</li>
                    </ul>
                    <br />
                   
                </div>

            </div>
            <!-- modal-content -->
        </div>
        <!-- modal-dialog -->
    </div>
    <!-- modal -->


    <div class="modal right fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">



                <div class="modal-body">

                    <form id="contactForm" onsubmit="return false;">
                        <div class="modal-header">
                            <button type="button" onclick="$('#logoDiv').fadeIn();" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h3 class="modal-title" id="myModalLabel2">CONTACT US</h3>
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
                      
                             <div class="heading_cntctus">Address</div>
                            <p style="font-weight: bolder; ">Novartis Pharma Services</p>
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
                    </form>
                </div>

            </div>
            <!-- modal-content -->
        </div>
        <!-- modal-dialog -->
    </div>

     <div class="modal right fade " id="myModal_PrivacyPolicy" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="modal-header">
                   <button type="button" onclick="$('#logoDiv').fadeIn();" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   
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

            Whenever we process Personal Data, we take reasonable steps to ensure that your Personal Data is kept accurate and up-to date for the purposes for which it was collected. We will provide you with the ability to object to the processing of your Personal Data if such processing is not reasonably required for a legitimate business purpose as described in this policy or our compliance with law. In the case of electronic direct marketing, we will provide you with a method to opt out of receiving further marketing materials or with a method to opt in if required by law.  <br>
            <br>If you wish to contact us regarding our use of your Personal Data or object to the processing of your Personal Data, please email us at corporate.enquiries@group.novartis.com. If you contact us, please note the name of the website where you provided the information, as well as the specific information you would like us to correct, update or delete plus a proper identification of you. Requests to delete personal data will be subject to any applicable legal and ethical reporting or document filing or retention obligations imposed on us.<br>
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

            We may collect and process information about your visit to this website, such as the pages you visit, the website you came from and some of the searches you perform. Such information is used by us to help improve the contents of the site and to compile aggregate statistics about individuals using our site for internal, market research purposes. In doing this, we may install "cookies" that collect the domain name of the user, your internet service provider, your operating system, and the date and time of access. A "cookie" is a small piece of information which is sent to your browser and stored on your computer’s hard drive. Cookies do not damage your computer. You can set your browser to notify you when you receive a "cookie," this will enable you to decide if you want to accept it or not. If you do not want us to install cookies, please email us at corporate.enquiries@group.novartis.com. We would like to inform you, however, that if you do not accept you may not be able to use all functionality of your browser software. We may obtain the services of outside parties to assist us in collecting and processing the information described in this Section. <br><br>

            Occasionally, we may use internet tags (also known as action tags, single-pixel GIFs, clear GIFs, invisible GIFs and 1-by-1 GIFs) and cookies at this site and may deploy these tags/cookies through a third-party advertising partner or a web analytical service partner which may be located and store the respective information (including your IP-address) in a foreign country. These tags/cookies are placed on both online advertisements that bring users to this site and on different pages of this site. We use this technology to measure the visitors' responses to our sites and the effectiveness of our advertising campaigns (including how many times a page is opened and which information is consulted) as well as to evaluate your use of this website. The third-party partner or the web analytical service partner may be able to collect data about visitors to our and other sites because of these internet tags/cookies, may compose reports regarding the website’s activity for us and may provide further services which are related to the use of the website and the internet. They may provide such information to other parties if there is a legal requirement that they do so, or if they hire the other parties to process information on their behalf. If you would like more information about web tags and cookies associated with on-line advertising or to opt-out of third-party collection of this information, please visit the Network Advertising Initiative website http://www.networkadvertising.org.<br><br>

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

    <div class="modal right fade" id="modalReg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="modal-header">
                        <button type="button" onclick="$('#logoDiv').fadeIn();" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                    </div>
                    <div class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2 col-xs-12">
                        <form id="lgform" onsubmit="return false;">
                            <h3 class="modal-title cent bld clr-red" id="myModalLabel2">Login</h3>
                            <h4>Email*</h4>
                            <input type="email" id="txtUName" class="regInput" placeholder="" />
                            <h4>Password*</h4>
                            <input type="password" id="txtLPass" class="regInput" placeholder="" />

                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 20px; padding: 0px;">
                                <div class="col-md-9 col-sm-8 col-xs-12" style="padding-left: 0px;">
                                    <div id="lgMsg">
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-4 col-xs-12" style="padding: 0px;">
                                    <input type="button" onclick="onClickLogin()" class="btn btn-red1 pull-right" value="Login" />

                                </div>
                            </div>
                            <%--<div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 20px; padding: 0px;">
                             <div class="passDiv" style="margin-top:50px;">
                                    <form id="ffrorm" onsubmit="return false;">
                                        <h1>Forgot Password?</h1>
                                        <br />
                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                            <p>Enter your email address below and we will send your password reset instruction.</p>

                                            <input type="text" class="form-control br-0" id="txtFUName">
                                        </div>

                                        <div class="col-md-12 col-sm-12 col-xs-12" style="margin-top:20px;">
                                            <div class="col-md-9 col-sm-8 col-xs-12">
                                                <div id="fpMsg">

                                                </div>
                                            </div>
                                            <div class="col-md-3 col-sm-4 col-xs-12">
                                                <input type="button" id="frbtn" onclick="onClickForgotPass()" class=" btn-custom" value="Submit" />
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div>--%>
                        </form>
                    </div>
                    <div class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2 col-xs-12">
                        <div class="passDiv" style="margin-top: 50px;">
                            <form id="ffrorm" onsubmit="return false;" class="row" style="margin-bottom:100px;">
                                <h3 class="modal-title cent bld clr-red">Forgot Password?</h3>
                                <br />
                                    <p>Enter your email address below and we will send you the password reset instruction.</p>

                                    <input type="text" class="regInput" id="txtFUName"/>

                                <div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 20px; padding:0px;">
                                    <div class="col-md-9 col-sm-8 col-xs-12" style="padding: 0px;">
                                        <div id="fpMsg">
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-12" style="padding: 0px;">
                                         <input type="button" onclick="onClickForgotPass()" class="btn btn-red1 pull-right" value="Submit" />
                                       </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>

            </div>
            <!-- modal-content -->
        </div>
        <!-- modal-dialog -->
    </div>


    <div class="modal right fade" id="modalLogin" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="modal-header">
                        <button type="button" onclick="$('#logoDiv').fadeIn();" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

                    </div>
                    <div class="">
                        <h3 class="modal-title cent bld clr-red" id="myModalLabel2">REGISTRATION</h3>
                        <form id="regForm" class="row" onsubmit="return false;" style="display: none; margin-bottom: 100px;">
                            <div class="col-md-8 col-md-offset-2 col-sm-12 col-xs-12">
                                <div>
                                    <div class="col-md-6 col-sm-6 col-xs-12 p-r-40 styled-select" style="padding: 10px;">

                                       <%-- <select id="ddTitle" class="regInput Reg_Input_Field">
                                            <option value="0">Title</option>
                                            <option value="Dr">Dr</option>
                                            <option value="Mr">Mr</option>
                                            <option value="Mrs">Mrs</option>
                                            <option value="Ms">Ms</option>
                                        </select>--%>
                                        <input type="text" style="text-transform: initial;" id="txtFName" class="regInput Reg_Input_Field" placeholder="First name*" />

                                        <input type="text" style="text-transform: initial;" id="txtLName" class="regInput Reg_Input_Field" placeholder="Last name*" />
                                        <input type="text" style="text-transform: initial;" id="txtSpec" class="regInput Reg_Input_Field" placeholder="Speciality*" />
                                        <select id="ddCountry" class="regInput styled-select">
                                            <option value="0" disabled selected>Country*</option>
                                            <option value="Afganistan">Afghanistan</option>
                                            <option value="Albania">Albania</option>
                                            <option value="Algeria">Algeria</option>
                                            <option value="American Samoa">American Samoa</option>
                                            <option value="Andorra">Andorra</option>
                                            <option value="Angola">Angola</option>
                                            <option value="Anguilla">Anguilla</option>
                                            <option value="Antigua &amp; Barbuda">Antigua &amp; Barbuda</option>
                                            <option value="Argentina">Argentina</option>
                                            <option value="Armenia">Armenia</option>
                                            <option value="Aruba">Aruba</option>
                                            <option value="Australia">Australia</option>
                                            <option value="Austria">Austria</option>
                                            <option value="Azerbaijan">Azerbaijan</option>
                                            <option value="Bahamas">Bahamas</option>
                                            <option value="Bahrain">Bahrain</option>
                                            <option value="Bangladesh">Bangladesh</option>
                                            <option value="Barbados">Barbados</option>
                                            <option value="Belarus">Belarus</option>
                                            <option value="Belgium">Belgium</option>
                                            <option value="Belize">Belize</option>
                                            <option value="Benin">Benin</option>
                                            <option value="Bermuda">Bermuda</option>
                                            <option value="Bhutan">Bhutan</option>
                                            <option value="Bolivia">Bolivia</option>
                                            <option value="Bonaire">Bonaire</option>
                                            <option value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</option>
                                            <option value="Botswana">Botswana</option>
                                            <option value="Brazil">Brazil</option>
                                            <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
                                            <option value="Brunei">Brunei</option>
                                            <option value="Bulgaria">Bulgaria</option>
                                            <option value="Burkina Faso">Burkina Faso</option>
                                            <option value="Burundi">Burundi</option>
                                            <option value="Cambodia">Cambodia</option>
                                            <option value="Cameroon">Cameroon</option>
                                            <option value="Canada">Canada</option>
                                            <option value="Canary Islands">Canary Islands</option>
                                            <option value="Cape Verde">Cape Verde</option>
                                            <option value="Cayman Islands">Cayman Islands</option>
                                            <option value="Central African Republic">Central African Republic</option>
                                            <option value="Chad">Chad</option>
                                            <option value="Channel Islands">Channel Islands</option>
                                            <option value="Chile">Chile</option>
                                            <option value="China">China</option>
                                            <option value="Christmas Island">Christmas Island</option>
                                            <option value="Cocos Island">Cocos Island</option>
                                            <option value="Colombia">Colombia</option>
                                            <option value="Comoros">Comoros</option>
                                            <option value="Congo">Congo</option>
                                            <option value="Cook Islands">Cook Islands</option>
                                            <option value="Costa Rica">Costa Rica</option>
                                            <option value="Cote DIvoire">Cote D'Ivoire</option>
                                            <option value="Croatia">Croatia</option>
                                            <option value="Cuba">Cuba</option>
                                            <option value="Curaco">Curacao</option>
                                            <option value="Cyprus">Cyprus</option>
                                            <option value="Czech Republic">Czech Republic</option>
                                            <option value="Denmark">Denmark</option>
                                            <option value="Djibouti">Djibouti</option>
                                            <option value="Dominica">Dominica</option>
                                            <option value="Dominican Republic">Dominican Republic</option>
                                            <option value="East Timor">East Timor</option>
                                            <option value="Ecuador">Ecuador</option>
                                            <option value="Egypt">Egypt</option>
                                            <option value="El Salvador">El Salvador</option>
                                            <option value="Equatorial Guinea">Equatorial Guinea</option>
                                            <option value="Eritrea">Eritrea</option>
                                            <option value="Estonia">Estonia</option>
                                            <option value="Ethiopia">Ethiopia</option>
                                            <option value="Falkland Islands">Falkland Islands</option>
                                            <option value="Faroe Islands">Faroe Islands</option>
                                            <option value="Fiji">Fiji</option>
                                            <option value="Finland">Finland</option>
                                            <option value="France">France</option>
                                            <option value="French Guiana">French Guiana</option>
                                            <option value="French Polynesia">French Polynesia</option>
                                            <option value="French Southern Ter">French Southern Ter</option>
                                            <option value="Gabon">Gabon</option>
                                            <option value="Gambia">Gambia</option>
                                            <option value="Georgia">Georgia</option>
                                            <option value="Germany">Germany</option>
                                            <option value="Ghana">Ghana</option>
                                            <option value="Gibraltar">Gibraltar</option>
                                            <option value="Great Britain">Great Britain</option>
                                            <option value="Greece">Greece</option>
                                            <option value="Greenland">Greenland</option>
                                            <option value="Grenada">Grenada</option>
                                            <option value="Guadeloupe">Guadeloupe</option>
                                            <option value="Guam">Guam</option>
                                            <option value="Guatemala">Guatemala</option>
                                            <option value="Guinea">Guinea</option>
                                            <option value="Guyana">Guyana</option>
                                            <option value="Haiti">Haiti</option>
                                            <option value="Hawaii">Hawaii</option>
                                            <option value="Honduras">Honduras</option>
                                            <option value="Hong Kong">Hong Kong</option>
                                            <option value="Hungary">Hungary</option>
                                            <option value="Iceland">Iceland</option>
                                            <option value="India">India</option>
                                            <option value="Indonesia">Indonesia</option>
                                            <option value="Iran">Iran</option>
                                            <option value="Iraq">Iraq</option>
                                            <option value="Ireland">Ireland</option>
                                            <option value="Isle of Man">Isle of Man</option>
                                            <option value="Israel">Israel</option>
                                            <option value="Italy">Italy</option>
                                            <option value="Jamaica">Jamaica</option>
                                            <option value="Japan">Japan</option>
                                            <option value="Jordan">Jordan</option>
                                            <option value="Kazakhstan">Kazakhstan</option>
                                            <option value="Kenya">Kenya</option>
                                            <option value="Kiribati">Kiribati</option>
                                            <option value="Korea North">Korea North</option>
                                            <option value="Korea Sout">Korea South</option>
                                            <option value="Kuwait">Kuwait</option>
                                            <option value="Kyrgyzstan">Kyrgyzstan</option>
                                            <option value="Laos">Laos</option>
                                            <option value="Latvia">Latvia</option>
                                            <option value="Lebanon">Lebanon</option>
                                            <option value="Lesotho">Lesotho</option>
                                            <option value="Liberia">Liberia</option>
                                            <option value="Libya">Libya</option>
                                            <option value="Liechtenstein">Liechtenstein</option>
                                            <option value="Lithuania">Lithuania</option>
                                            <option value="Luxembourg">Luxembourg</option>
                                            <option value="Macau">Macau</option>
                                            <option value="Macedonia">Macedonia</option>
                                            <option value="Madagascar">Madagascar</option>
                                            <option value="Malaysia">Malaysia</option>
                                            <option value="Malawi">Malawi</option>
                                            <option value="Maldives">Maldives</option>
                                            <option value="Mali">Mali</option>
                                            <option value="Malta">Malta</option>
                                            <option value="Marshall Islands">Marshall Islands</option>
                                            <option value="Martinique">Martinique</option>
                                            <option value="Mauritania">Mauritania</option>
                                            <option value="Mauritius">Mauritius</option>
                                            <option value="Mayotte">Mayotte</option>
                                            <option value="Mexico">Mexico</option>
                                            <option value="Midway Islands">Midway Islands</option>
                                            <option value="Moldova">Moldova</option>
                                            <option value="Monaco">Monaco</option>
                                            <option value="Mongolia">Mongolia</option>
                                            <option value="Montserrat">Montserrat</option>
                                            <option value="Morocco">Morocco</option>
                                            <option value="Mozambique">Mozambique</option>
                                            <option value="Myanmar">Myanmar</option>
                                            <option value="Nambia">Nambia</option>
                                            <option value="Nauru">Nauru</option>
                                            <option value="Nepal">Nepal</option>
                                            <option value="Netherland Antilles">Netherland Antilles</option>
                                            <option value="Netherlands">Netherlands (Holland, Europe)</option>
                                            <option value="Nevis">Nevis</option>
                                            <option value="New Caledonia">New Caledonia</option>
                                            <option value="New Zealand">New Zealand</option>
                                            <option value="Nicaragua">Nicaragua</option>
                                            <option value="Niger">Niger</option>
                                            <option value="Nigeria">Nigeria</option>
                                            <option value="Niue">Niue</option>
                                            <option value="Norfolk Island">Norfolk Island</option>
                                            <option value="Norway">Norway</option>
                                            <option value="Oman">Oman</option>
                                            <option value="Pakistan">Pakistan</option>
                                            <option value="Palau Island">Palau Island</option>
                                            <option value="Palestine">Palestine</option>
                                            <option value="Panama">Panama</option>
                                            <option value="Papua New Guinea">Papua New Guinea</option>
                                            <option value="Paraguay">Paraguay</option>
                                            <option value="Peru">Peru</option>
                                            <option value="Phillipines">Philippines</option>
                                            <option value="Pitcairn Island">Pitcairn Island</option>
                                            <option value="Poland">Poland</option>
                                            <option value="Portugal">Portugal</option>
                                            <option value="Puerto Rico">Puerto Rico</option>
                                            <option value="Qatar">Qatar</option>
                                            <option value="Republic of Montenegro">Republic of Montenegro</option>
                                            <option value="Republic of Serbia">Republic of Serbia</option>
                                            <option value="Reunion">Reunion</option>
                                            <option value="Romania">Romania</option>
                                            <option value="Russia">Russia</option>
                                            <option value="Rwanda">Rwanda</option>
                                            <option value="St Barthelemy">St Barthelemy</option>
                                            <option value="St Eustatius">St Eustatius</option>
                                            <option value="St Helena">St Helena</option>
                                            <option value="St Kitts-Nevis">St Kitts-Nevis</option>
                                            <option value="St Lucia">St Lucia</option>
                                            <option value="St Maarten">St Maarten</option>
                                            <option value="St Pierre &amp; Miquelon">St Pierre &amp; Miquelon</option>
                                            <option value="St Vincent &amp; Grenadines">St Vincent &amp; Grenadines</option>
                                            <option value="Saipan">Saipan</option>
                                            <option value="Samoa">Samoa</option>
                                            <option value="Samoa American">Samoa American</option>
                                            <option value="San Marino">San Marino</option>
                                            <option value="Sao Tome &amp; Principe">Sao Tome &amp; Principe</option>
                                            <option value="Saudi Arabia">Saudi Arabia</option>
                                            <option value="Senegal">Senegal</option>
                                            <option value="Serbia">Serbia</option>
                                            <option value="Seychelles">Seychelles</option>
                                            <option value="Sierra Leone">Sierra Leone</option>
                                            <option value="Singapore">Singapore</option>
                                            <option value="Slovakia">Slovakia</option>
                                            <option value="Slovenia">Slovenia</option>
                                            <option value="Solomon Islands">Solomon Islands</option>
                                            <option value="Somalia">Somalia</option>
                                            <option value="South Africa">South Africa</option>
                                            <option value="Spain">Spain</option>
                                            <option value="Sri Lanka">Sri Lanka</option>
                                            <option value="Sudan">Sudan</option>
                                            <option value="Suriname">Suriname</option>
                                            <option value="Swaziland">Swaziland</option>
                                            <option value="Sweden">Sweden</option>
                                            <option value="Switzerland">Switzerland</option>
                                            <option value="Syria">Syria</option>
                                            <option value="Tahiti">Tahiti</option>
                                            <option value="Taiwan">Taiwan</option>
                                            <option value="Tajikistan">Tajikistan</option>
                                            <option value="Tanzania">Tanzania</option>
                                            <option value="Thailand">Thailand</option>
                                            <option value="Togo">Togo</option>
                                            <option value="Tokelau">Tokelau</option>
                                            <option value="Tonga">Tonga</option>
                                            <option value="Trinidad &amp; Tobago">Trinidad &amp; Tobago</option>
                                            <option value="Tunisia">Tunisia</option>
                                            <option value="Turkey">Turkey</option>
                                            <option value="Turkmenistan">Turkmenistan</option>
                                            <option value="Turks &amp; Caicos Is">Turks &amp; Caicos Is</option>
                                            <option value="Tuvalu">Tuvalu</option>
                                            <option value="Uganda">Uganda</option>
                                            <option value="Ukraine">Ukraine</option>
                                            <option value="United Arab Erimates">United Arab Emirates</option>
                                            <option value="United Kingdom">United Kingdom</option>
                                            <option value="United States of America">United States of America</option>
                                            <option value="Uraguay">Uruguay</option>
                                            <option value="Uzbekistan">Uzbekistan</option>
                                            <option value="Vanuatu">Vanuatu</option>
                                            <option value="Vatican City State">Vatican City State</option>
                                            <option value="Venezuela">Venezuela</option>
                                            <option value="Vietnam">Vietnam</option>
                                            <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
                                            <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
                                            <option value="Wake Island">Wake Island</option>
                                            <option value="Wallis &amp; Futana Is">Wallis &amp; Futana Is</option>
                                            <option value="Yemen">Yemen</option>
                                            <option value="Zaire">Zaire</option>
                                            <option value="Zambia">Zambia</option>
                                            <option value="Zimbabwe">Zimbabwe</option>
                                        </select>

                                      <%--  <select id="ddGender" class="regInput styled-select Reg_Input_Field" onclick="selgender()">
                                            <option value="0" disabled selected>Gender*</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                        </select>
                                        <input type="number" min="0" id="txtPNo" class="regInput Reg_Input_Field" placeholder="Phone number" />--%>

                                    </div>

                                    <div class="col-md-6 col-sm-6 col-xs-12 p-r-40" style="padding: 10px;">
                                      <%--   <input type="text" style="text-transform: initial;" id="txtFAdd" class="regInput Reg_Input_Field" placeholder="Address: first line" />
                                    <input type="text" style="text-transform: initial;" id="txtLAdd" class="regInput Reg_Input_Field" placeholder="Address: second line" />                                        <input type="text" style="text-transform: initial;" id="txtCity" class="regInput Reg_Input_Field" placeholder="City" />--%>
                                        <%-- <input type="text" style="text-transform: initial;" id="txthospital" class="regInput" placeholder="Hospital affiliation" />--%>
                                        <select id="txthospital" class="regInput styled-select Reg_Input_Field">
                                            <option value="0" disabled selected>Affiliation*</option>
                                            <option value="University/Research/Academic">University/Research/Academic</option>
                                            <option value="Hospital/Clinic">Hospital/Clinic</option>
                                            <option value="Private practice">Private practice</option>
                                            <option value="Other">Other</option>
                                        </select>


                                        <input type="text" style="text-transform: lowercase;" id="txtEmail" class="regInput Reg_Input_Field" placeholder="E-mail ID* (Will be default login id)" />
                                        <input type="password" id="txtPass" class="regInput Reg_Input_Field" placeholder="Password*" />
                                        <input type="password" id="txtCPass" class="regInput Reg_Input_Field" placeholder="Confirm password*" />

                                        <!--<input type="button" onclick="$('#regFile').click()" id="btnCAva" value="Change Avatar" />-->

                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 20px; padding-left: 0px;">
                                    <div class="col-md-12 col-sm-12 col-xs-12" style="padding: 0;">


                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" value="" id="chkTerms">
                                                <span class="cr"><i class="cr-icon glyphicon glyphicon-ok"></i></span>
                                                I agree to the <a style="text-decoration: underline;" onclick="$('#myModal_Termspolicy').modal('show');">Terms of Use</a>
                                            </label>
                                        </div>

                                    </div>


                                    <div class="col-md-12 col-sm-12 col-xs-12" style="padding: 0;">
                                        <div class="col-md-8 col-sm-8 col-xs-12" style="padding: 0;">
                                            <div id="regMsg">
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-4 col-xs-12" style="padding: 0;">
                                            <input type="button" id="regbtn" onclick="onClickRegister()" style="margin-top: 0px;" class="btn btn-red1 pull-right" value="Submit" />

                                        </div>
                                    </div>

                                </div>
                            </div>

                        </form>


                        <form id="confirmForm" onsubmit="return false;">
                            <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12">
                                <div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 20px; margin-bottom: 20px;">
                                    Please enter the <b>access code</b> provided to you by Novartis representatives

                                </div>
                                <div class="col-md-10 col-sm-10 col-xs-12 p-r-40">
                                    <input type="text" id="txtACode" class="regInput" style="padding: 5px;" placeholder="Access code">
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <input type="button" onclick="onClickValidateAC()" class="btn btn-red1 btn-custom visible-xs" style="float: right; margin-top: 30px;" value="Verify">

                                    <input type="button" onclick="onClickValidateAC()" class="btn btn-red1  hidden-xs" style="float: left;" value="Verify">
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div id="accMsg"></div>
                                </div>
                            </div>

                        </form>

                    </div>

                </div>

            </div>
            <!-- modal-content -->
        </div>
        <!-- modal-dialog -->
    </div>


    <div class="modal right fade no-menu-modal" id="myModal_Termspolicy" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="modal-header">
                 <button type="button" onclick="$('#logoDiv').fadeIn();" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </button>
                    <h3 class="modal-title">Terms of Use</h3>
                </div>
             <div>
 <strong> 1. Acceptance</strong> <br><br>

Your access to and use of this Site is subject to the following terms and conditions and all applicable laws. By accessing and browsing this Site, you accept, without limitation or qualification, these Terms and Conditions and acknowledge that any other agreements regarding the use of this Site between you and Novartis Pharma AG are superseded and of no force or effect.<br><br>

<strong>2. Medical information/conditions</strong> <br><br>

Product information on this web site is provided by Novartis Pharma AG and is intended for general information purposes only. Many pharmaceutical and medical device products listed are available upon prescription from a medical doctor or qualified medical professional only, and not all such products may be available in all countries. The product information is not intended to provide complete medical information. SHOULD YOU HAVE A MEDICAL CONDITION, PROMPTLY SEE YOUR OWN MEDICAL DOCTOR OR HEALTH CARE PROVIDER. WE DO NOT OFFER PERSONALIZED MEDICAL DIAGNOSIS OR PATIENT-SPECIFIC TREATMENT ADVICE. You should always obtain complete medical information about your prescription medicines or medical devices (including their beneficial medical uses and possible adverse effects) by discussing the appropriate use of any medicine(s) or medical devices directly with your prescribing physician or, where appropriate, other medical advisor. Medical professionals may obtain complete medical information from the product's information leaflet. Information on these products may vary by country. Patients, physicians and other medical professionals should check with local medical resources and regulatory authorities for information appropriate to their country. In addition, current regulations in many countries limit (or even prohibit in some instances) the ability of Novartis Pharma AG to provide information and/or to respond directly to patient questions regarding its prescription products. Novartis Pharma AG, however, will respond to inquiries from and provide information to your qualified health care professional in accordance with local regulations.<br><br>

<strong>3. Use of information</strong> <br><br>

You may freely browse the Site, but you may only access, download or use information from this Site, including any text, images, audio, and video (the "Information") for your own non-commercial use. You may not distribute, modify, transmit, reuse, repost, or use the Information for commercial purposes, without written permission of Novartis Pharma AG. You must retain and reproduce each and every copyright notice or other proprietary rights notice contained in any Information you download. You should assume that everything you see or read on this Site is copyrighted unless otherwise noted and may not be used except as provided in these Terms and Conditions or in the text on the Site without the written permission of Novartis Pharma AG. Except as otherwise permitted in this paragraph, Novartis Pharma AG neither warrants nor represents that your use of materials displayed on the Site will not infringe rights of third parties not owned by or affiliated with Novartis Pharma AG. With the exception of the foregoing limited authorization, no license to or right in the Information, or any copyright of Novartis Pharma AG or of any other party is granted or conferred to you.<br><br>

<strong>4. Trademarks/proprietary rights</strong> <br><br>

You should assume that all product names appearing on this Site, whether or not appearing in large print, italics or with the trademark symbol are trademarks of Novartis. This Site may also contain or reference patents, proprietary information, technologies, products, processes or other proprietary rights of Novartis Pharma AG and/or other parties. No license to or right in any such trademarks, patents, trade secrets, technologies, products, processes and other proprietary rights of Novartis Pharma AG and/or other parties is granted to or conferred upon you. All product names published in italics on this Site are trademarks owned by or licensed to the Novartis Group.<br><br>

<strong>5. Disclaimer of warranties</strong> <br><br>

While Novartis Pharma AG uses reasonable efforts to ensure that the Information is accurate and up to date, the Information may contain inaccuracies or typographical errors. Novartis Pharma AG reserves the right to make changes, corrections and/or improvements to the Information, and to the products and programs described in such Information, at any time without notice. Novartis Pharma AG makes no warranties or representations as to the accuracy of any of the Information. Novartis Pharma AG assumes no liability or responsibility for any errors or omissions in the content of the Site. ALL INFORMATION IS PROVIDED "AS IS." NOVARTIS PROVIDES NO WARRANTIES ABOUT THE COMPLETENESS OR ACCURACY OF THE INFORMATION ON THIS SITE OR ITS POSSIBLE USES. CONSEQUENTLY, THE INFORMATION SHOULD BE CAREFULLY EVALUATED BY SITE VISITORS. NEITHER NOVARTIS AG, NOR ANY OTHER NOVARTIS GROUP COMPANY, NOR ANY OTHER PARTY INVOLVED IN CREATING, PRODUCING OR DELIVERING THIS SITE TO YOU SHALL BE LIABLE FOR ANY DIRECT, INCIDENTAL, CONSEQUENTIAL, INDIRECT OR PUNITIVE DAMAGES ARISING OUT OF ACCESS TO, USE OF OR INABILITY TO USE THIS SITE, OR ANY ERRORS OR OMISSIONS IN THE CONTENT OF THE SITE. Some jurisdictions do not allow the exclusion of implied warranties, so the above exclusion may not apply to you. Novartis Pharma AG also assumes no responsibility, and shall not be liable for, any damages to, or viruses that may infect, your computer equipment or other property on account of your access to, or use of the Information. Novartis Pharma AG reserves the right to discontinue this Site at any time without notice and without liability.<br><br>


<strong>6. Worldwide products</strong> <br><br>

This Site may contain information on worldwide products and services, not all of which are available in every location. A reference to a product or service on this Site does not imply that such product or service is or will be available in your location. The products referred to on this Site may be subject to different regulatory requirements depending on the country of use. Consequently, visitors may be notified that certain sections of this Site are intended only for certain kinds of expert users or only for audiences in certain countries. You should not construe anything on this Site as a promotion or advertisement for any product or for the use of any product that is not authorized by the laws and regulations of your country of residence.<br><br>

<strong>7. Disclaimer</strong> <br><br>

Nothing on this Site constitutes an invitation or offer to invest or deal in the securities or American Depositary Receipts of Novartis. In particular, actual results and developments may be materially different from any forecast, opinion or expectation expressed on this Site and the past performance of the price of securities must not be relied on as a guide to their future performance.<br><br>

<strong>8. Links to this site</strong> <br><br>

Novartis Pharma AG has not reviewed any or all of the third-party websites which contain links to this Site and is not responsible for the content of any such off-site pages or any other sites linked to the Site. If you wish to link your website to this Site, you may only link to the home page. You may not link to any other pages within this Site without the prior written consent of Novartis Pharma AG. Quotation or use of one or more portions of this Site in the site of any third parties without written consent is likewise prohibited.<br><br>

<strong>9. Links to other sites</strong> <br><br>

Links to third-party sites may be provided for the interest or convenience of visitors to this Site. We will endeavor to inform you when you are leaving this Site that the terms of use and privacy policy of the third-party site may be different. However, Novartis Pharma AG accepts no liability for links from us to others, and in particular we are not responsible for the accuracy or legality of the content thereof. We accept no liability deriving from a breach or omission in the privacy policies of third parties.<br><br>


<strong>10. Consequences</strong> <br><br>

If we become aware that you have violated any of the terms and conditions contained in this Legal Statement, we may immediately take corrective action, including preventing the user from using the services offered by Novartis Pharma AG and removing any information, data and content put on the Site by the user, at any moment and without notice. If we have been injured by your violation we may, in our sole discretion, seek to recover damages from you.<br><br>

<strong>11. Revisions</strong> <br><br>

Novartis Pharma AG may at any time revise these Terms and Conditions by updating this posting. You are bound by any such revisions and should therefore periodically visit this page to review the then current Terms and Conditions to which you are bound.<br><br>

<br><br><br><br>




</div>

            </div>
        </div>
    </div>
</div>


    <footer class="footer">
        <div><span class="footerTag cursor_Pntr" style="cursor:default !important;"><a class="awhite cursor_Pntr" >MENA-HSUMMIT-642016-20</a></span> |<span onclick="$('#myModal_PrivacyPolicy').modal('show');"><a class="awhite" >PRIVACY POLICY</a></span> | <span onclick="$('#myModal_Termspolicy').modal('show');"><a class="awhite">TERMS OF USE</a></span> | <span onclick="$('#myModal1').modal('show');">CONTACT US</span> | <span onclick="$('#myModal2').modal('show');">FAQ</span> </div>
        <img class="pull-right nLogo" src="assets/images/novartis.png" />
    </footer>


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="assets/js/ie10-viewport-bug-workaround.js"></script>



    <script src="assets/js/jquery-1.12.0.min.js" type="text/javascript"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.js" type="text/javascript"></script>
    <script src="assets/service/appData.js"></script>
    <script src="assets/service/interface.js"></script>
    <script src="assets/service/ServiceData.js"></script>

    <script src="assets/js/landing/plugins.js"></script>
    <script src="assets/js/landing/main.js"></script>
    <script src="assets/js/custom/init.js"></script>
    <script src="assets/js/custom/validation.js"></script>
    <script src="assets/js/custom/common.js"></script>
    <script src="assets/js/custom/landing.js"></script>
    <script>
        $('.modal').on('show.bs.modal', function () {

            var curModal;
            curModal = this;
            $(".modal").each(function () {
                if (this !== curModal) {
                    $(this).modal("hide");
                    $("#logoDiv").fadeOut();
                }
            });
        });

        $('.modal').on('shown.bs.modal', function () {
            $("body").addClass("modal-open");
        });
        $('.modal').on('hide.bs.modal', function () {

        });
        $(document).ready(function () {
            window.setTimeout(function () { $(".loader").fadeOut() }, 5000);

        });

    </script>

</body>
</html>
