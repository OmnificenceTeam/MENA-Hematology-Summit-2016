<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="no-js" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Home MHS 2016</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
   
    <link href="assets/images/favicon.jpg" rel="icon" type="image/jpg" />
    <link rel="stylesheet" media="all" href="assets/css/application.css" />
    <link rel="stylesheet" media="all" href="assets/css/custom.css" />
    <link rel="stylesheet" media="all" href="assets/css/cards.css" />
    <link rel="stylesheet" media="all" href="assets/css/bootstrap-custom.css" />
    <link rel="stylesheet" media="all" href="assets/css/custom-modal.css" />
    <link rel="stylesheet" media="all" href="assets/css/common.css" />
    <script src="assets/js/modernizr-2.8.3.min.js"></script>
    <style>
         .loader {
            position: absolute;
            width: 100%;
            height: 100%;
            background-color: white;
            z-index: 99999999999;
            text-align:center;
        }
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
<body id="homeBody" class="home">

  <div id="homepg">    
    <header class="main-header">
        <div class="city-toggle-wrap">
            <div class="cols">
                <div class="col-12">
                    <a class="city-toggle" href="#" id="city-toggle">MENU
                        <span class="menu">
                            <i></i>
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </header>
   
    <div class="hero">

        <div class="logo app-logo">
            <img alt="MENA 2016" src="assets/images/logo1.png" />
        </div>
        <div class="img-wrap">
            <img alt="MENA HS BANNER" class="bg-img banner-gif" style="margin-top: 0px !important" src="assets/images/MENA_HS_banner.gif" />
        </div>
        <%--<a class="what cursor_Pntr" href="#">
            <img src="assets/images/logo_white.png" style="width: 14px;" />
           MENA HEMOTOLOGY SUMMIT
        </a>--%>
    </div>

    <div class="cols" id="home-online-cme">
        <nav class="home-city-nav">
            <a class="choose scroll-to cursor_Pntr custom-choose" data-offset="45" data-target="#city-nav-wrap" href="#">INTRODUCTION</a>
            <div class="city-nav-wrap">
                <div id="welcome_div" class="about" style="padding-bottom: 5px;">
                    <h1 style="margin-bottom: 0px;">WELCOME</h1>
                    <div class="Height_set" id="welcome">
                        <p>
                   Dear Doctor,
                        </p>
                   <p>We are delighted to welcome you to the MENA Hematology Summit, taking place on 06 - 07 May in Dubai, UAE. </p>
                   <p>The MENA Hematology Summit draws together a wide variety of experts in hematology from the greater MENA region and the rest of the world to encourage valuable discourse on the pressing problems associated with chronic myeloid leukemia (CML), myeloproliferative neoplasms (MPN), chronic immune thrombocytopenia (cITP), iron overload (IOL), and severe aplastic anemia (SAA).</p>
<p>The MENA Hematology Summit agenda focuses on the recent advances in treatment, molecular and diagnostic tools, clinical management issues, and promising clinical research in these disease areas.  Delivered via a rich mix of plenary and interactive sessions including clinical case discussions, current news, and oral presentations, this program also encompasses parallel practical sessions and workshops, and a separate pediatric stream. It also provides several opportunities to interact with international experts and established researchers in these fields. </p>
                        <p>We hope you will enjoy and actively participate in this exciting medical event.</p>
                        <p>Yours sincerely,</p>
                        <p>Aamir Faizi, MD<br />
Regional Medical Head Hematology,  Middle East and North Africa, Novartis
</p>
                        <p>Darko Miljkovic, PhD<br />
Medical Director Hematology, Emerging Growth Markets, Novartis

</p>
                    </div>
                    <a class="button readmore_btn" href="#" onclick="$('#welcome').toggleClass('active');$(this).toggleClass('active')">Read more about summit</a>
                </div>
                <ul class="cities" style="padding-top: 0px;">
                    <li>
                        <a class="city" onclick="$('#onlinecme').show();">
                            <div class="card">
                                <div class="card__front" style="background: #000;">
                                    <span class="Card_txt_OnlineCme card__text view-more-card" style="cursor:pointer;">
                                        <span> UPDATES</span>
                                    </span>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="cols" id="home-faculty">
        <nav class="home-city-nav">
            <div class="city-nav-wrap" style="padding-top: 0px;">
                <h1 style="margin-bottom: 0px;">FACULTY</h1>
                <ul class="cities" style="padding-top: 0px;" runat="server" id="speaker_list">
                   
                </ul>
            </div>
        </nav>
    </div>
    <div class="cols" id="home-pre-read">
        <nav class="home-city-nav">
            <div class="city-nav-wrap" style="padding-top: 5px;">
                <div id="survey_div" class="about">
                    <h1 style="margin-bottom: 0px;">SURVEY</h1>
                    <p>Attempt a quick survey which is tailored to get insights related to your current clinical practice and also to understand
your expectations from the MENA Hematology Summit in terms of content and learnings. This survey should only take
2-3 mins to complete. Be assured that all answers will be kept confidential.<br />Please click "NEXT" to begin</p>
                      <a class="button readmore_btn" href="javascript:;" onclick="openSurveyModal();">NEXT</a>  
                </div>
               
                <ul class="cities" style="padding-top: 0px;">
                    <li>
                        <a class="city" href="#" style="cursor: default;">
                            <img id="prereadImg" alt="OnlineCME" src="assets/images/transparent.png" style="background: #a11c1c;" />
                            <div class="name name-letter-space with-sub-text">
                                <span>PRE-READ</span><br />
                                <p class="sub-text" style="letter-spacing:2px;    padding-right: 5px;    text-align: -webkit-auto;">Explore the section to review some of the latest
scientific articles in the field of chronic myeloid
leukemia (CML), myeloproliferative neoplasms (MPN),
chronic immune thrombocytopenia (cITP) and iron
overload (IOL)</p><span class="sub-text" style="cursor:pointer;float:right;margin-right:10px;font-size:large;font-size:20px;" onclick="onclickPreread()"><u>View more</u></span>
                            </div>
                            <div class="bg" style="opacity: 0;"></div>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="social-separator" id="home-location" style="background-image: url('assets/images/location.jpg')">
        <div class="cols">
            <nav class="home-city-nav">
                <div class="city-nav-wrap" style="padding-top: 10px;">
                    <div class="about">
                    </div>
                    <ul class="cities" style="padding-top: 0px;">
                        <li id="move_venue">
                            <a class="city" href="#" style="">
                                <img id="onlncmeImg" alt="OnlineCME" src="assets/images/transparent.png" style="background: #a11c1c;" />
                                <div class="name name-letter-space with-sub-text cursor_Pntr" style="width:91%">
                                    <span>VENUE</span><br />
                                  <p class="sub-text" style="letter-spacing:0;line-height: 1.35em;margin:0;">Crowne Plaza<br />Dubai Festival City<br />Dubai</p>
                                    <p class="sub-text" style="letter-spacing:0;line-height: 1.35em;margin:0;"><span onclick="onclickCromplaz()" style="cursor:pointer;"><u>www.crowneplaza.com</u></span><br />Phone: +971 4 701 2222</p>
                                 <div style="width:100%">
                                      <img onclick="showMap()" id="venue_map"  src="assets/images/map.png" style="width:100%;cursor:pointer;"/>
                                 </div>
                                    <span class="sub-text" style="cursor:pointer;    float: left;" onclick="onclickLogistic()">View logistics details <u>here</u></span>

                                </div>
                                <div class="bg cursor_Pntr" style="opacity: 0;"></div>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <div class="social cols">
        <div class="tumblr">
            <a class="img" href="#">
                <img alt="Agenda" src="assets/images/agenda_day_1.jpg" />
            </a>
        </div>
        <div class="insta" style="padding-top: 0px; text-align: left;">
            <div class="follow-instagram" style="margin: 0px 0px 5px 5px;">
                <span>AGENDA</span><br />
              
            </div>
            <div class="instagram-wrap">
                <div class="instagrams" id="instagrams">
                    <div class="home-agenda" style="padding-top:0;">
                        <img alt="Agenda" src="assets/images/transparent.png" style="width: 494px;" />
                         
                        <div class="home-agenda-text">
                             <span style="font-size: 14px; text-transform: none;">Date: 6-7 May 2016<span id="agenda-dates"></span></span>
                                <br />
                <span style="font-size: 14px; text-transform: none;">Time: 09:00 (GST)<span id="agenda-time"></span></span>
                <br />
                <span style="font-size: 14px; text-transform: none;">Venue: Crowne Plaza, Dubai Festival City<span id="agenda-venue"></span></span>
                            <br />
                      
                        <div class="col-md-12 col-sm-12 col-xs-12" style="text-align:center;">
                            <img src="assets/images/agenda_img.png" style="width:84%;margin-top:2%;" />
                        </div>
                        </div>
                        
                        <div class="home-agenda-text-div">
                            <div class="col-12">
                                <div onclick="window.location.href='agenda.aspx';" class="col-4 home-agenda-div-box">
                                    Agenda-Day 1
                                </div>
                                <div onclick="window.location.href='agenda.aspx?day=day2';" class="col-4 home-agenda-div-box">
                                    Agenda-Day 2
                                </div>
                                <div onclick="window.location.href='agenda.aspx?day=day3';" class="col-4 home-agenda-div-box">
                                    Ped.. Workshop
                                </div>
                            </div>
                             
                        </div>
                           
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br />
    <div class="social-separator" id="home-webcast" style="background-image: url('assets/images/webcast.jpg')">
        <div class="cols">
            <nav class="home-city-nav">
                <div class="city-nav-wrap" style="padding-top: 15px;">
                    <%--<div class="about" style="width: 50%;">
                    </div>--%>
                    <ul class="cities" style="padding-top: 0px;">
                        <li style="width:50%;float:right;" id="webcst">
                            <a class="city webcast cursor_Pntr" href="#">
                                <img alt="WebCast" src="assets/images/transparent.png" />
                                <div class="name name-letter-space with-sub-text">
                                    <span class="webcast-title cursor_Pntr">WEBCAST</span><br />
                                    <br />
                                    <div style="padding-right: 5px;">
                                        <span class="sub-text cursor_Pntr">Can't travel to Dubai? No Problem!<br />The Hematology Summit 2016 proceedings will be available as a live webcast in
this section. The webcast button will be active on the day of the event. You will
receive a reminder on your registered e-mail address a day before the event.
                                        </span>
                                        <br /> <br />
                                        <span class="sub-text cursor_Pntr">The webcast will start at 05:00 GMT on both May 6-7, 2016.
                                        </span><br /><br />
                                        <span class="sub-text cursor_Pntr">Questions regarding the webcast?<br />
Please contact support@hematologysummit.com
                                        </span>
                                    </div>
                                </div>
                                <div class="bg" style="opacity: 0;"></div>
                            </a><a class="button readmore_btn" style="    float: right;margin-right:5px;" href="javascript:;" onclick="onclickWebcast();">View more</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        </div>
    </div>

    <MENA:Footer ID="Footer" runat="server" />
    <MENA:Menu ID="Menu" runat="server" />
    <MENA:Modals ID="Modals" runat="server" />

    <script src="ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-modal.min.js" type="text/javascript"></script>
    <script src="assets/js/application.js" type="text/javascript"></script>
    <script src="assets/js/cards.js" type="text/javascript"></script>
    <script src="assets/service/appData.js"></script>
    <script src="assets/service/interface.js"></script>
    <script src="assets/service/ServiceData.js"></script>
    <script src="assets/js/custom/validation.js"></script>
    <script src="assets/js/custom/ready.js"></script>
    <script src="assets/js/custom/common.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            onloadWebcast();
        });
        var a = $(document).width();
        if (a == 667 || a == 736) {
            $('#welcome_div').css("width", "100%"); 
            $('#survey_div').css("width", "50%");
        }
        if (a == 568) {
            $('#welcome').css("height", "245px");
            $('#onlncmeImg').css("height", "360px");
        }
        if (a == 667) {
            $('#welcome').css("height", "227px");
        }
        if (a == 736) {
            $('#welcome').css("height", "197px");
        }

    </script>

</body>
</html>
