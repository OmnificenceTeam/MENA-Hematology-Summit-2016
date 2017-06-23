<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Webcast.aspx.cs" Inherits="Webcast" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="no-js" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Webcast MENA 2016</title>
     <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
   
    <link href="assets/images/favicon.jpg" rel="icon" type="image/jpg" />
    <link rel="stylesheet" media="all" href="assets/css/bootstrap.css" />
    <link rel="stylesheet" media="all" href="assets/css/application.css" />
    <link rel="stylesheet" media="all" href="assets/css/custom.css" />
    <link rel="stylesheet" media="all" href="assets/css/bootstrap-custom.css" />
    <link rel="stylesheet" media="all" href="assets/css/custom-modal.css" />
    <link rel="stylesheet" media="all" href="assets/css/common.css" />
    <link rel="stylesheet" media="all" href="assets/css/agenda.css" />
    <link href="assets/css/clndr.css" rel="stylesheet" />
    <script src="assets/js/modernizr-2.8.3.min.js"></script>
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
<body class="Bg_trnsprnt">
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
    <div class="hero other-pages">
        <div class="img-wrap app-logo-1">
            <img alt="MENA 2016" src="assets/images/logo_in.png" />
        </div>
    </div>
    <div class="cols">
        <div class="col-12">
            <div class="logo app-logo-2">
                <img alt="MENA 2016" src="assets/images/logo_in.png" />
            </div>
        </div>
    </div>
    <br />
    <br class="extra-br" />
    <div class="social-separator banner-bg" style="background-image: url('assets/images/webcast.jpg')">
        <div class="cols">
            <nav class="home-city-nav">
                <div class="city-nav-wrap" style="padding: 0px;">
                    <ul class="cities" style="padding-top: 0px;">
                        <li class="pull-right">
                            <a class="city" href="#" style="cursor: default;">
                                <img alt="Logistic" src="assets/images/transparent.png" class="banner-title-container" />
                                <div class="name name-letter-space with-sub-text banner-title cursor_Pntr ">
                                    <span>WEBCAST</span><br />
                                </div>
                                <div class="bg" style="opacity: 0;"></div>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <div class="cols">
        <nav class="home-city-nav cursor_Pntr" >
            <a class="choose scroll-to  custom-choose cursor_Pntr" data-offset="45" data-target="#city-nav-wrap" href="#" style="cursor:pointer;" onclick="Onclickviewwebcast();"><span class="uline"> VIEW WEBCAST </span></a>
        </nav>
    </div>
    <br />
    <br />
    <br />
    <div class="cols logCont container">
        <div class="row" style="margin: 0px">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <h4>Introduction</h4>
                <p>View the live proceedings of MENA Hematology Summit 2016. Enter the view webcast
button and provide the details to be directed to webcast page. For any technical queries,
write to us on support@hematologysummit.com</p>
            </div>
        </div>
        <div class="row" style="margin: 0px">
            <div class="col-md-12">
                <h4 >Webcast Date and Timings</h4>
            </div>
        </div>
        <div class="row" style="margin: 0px">

            <div class="col-md-7 col-sm-12 col-xs-12">
                <div class="bg-white">
                    <div class="row">

                        <div class="col-md-12">
                            <table class="w-100">
                            <%--    <tr>
                                    <td class="wdata1 wdata" colspan="2" style="display: none;">
                                        <h4 class="clr-red">Details</h4>
                                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has</p>
                                    </td>
                                    <td class="wdata2 wdata" colspan="2" style="display: none;">
                                        <h4 class="clr-red">Details</h4>
                                        <p>simply dummy text of the printing and typesetting industry. Lorem Ipsum has asdad sa dasd as asd das</p>
                                    </td>

                                </tr>--%>
                            </table>
                        </div>

                        <div class="col-md-12 ">
                            
                            <a href="assets/pdf/MENA_HS_webcast2.pdf" target="_blank" class="btn btn-block bg-red"><span style="color:white;"><img src="assets/images/pdf.png" style="margin-right:5px;width:20px;"/>Click here to download agenda</span></a>
                          

                        </div>

                        <br/>

<div class="col-md-12 col-sm-12 col-xs-12">   <h4 class="clr-red">Timings (equivalent to 05:00 GMT)</h4></div>
                        <div class="col-md-7 col-sm-12 col-xs-12">
                            <table style="width: 100%;">

                                <tr>
                                    <td class="wdata1 wdata">
                                     
                                        <table style="width: 150px; width: 100%;">
                                            <%--<tr>
                                                <td>Saudi Arabia</td>
                                                <td>7:00</td>
                                            </tr>
                                            <tr>
                                                <td>Australia</td>
                                                <td>8:00</td>
                                            </tr>
                                            <tr>
                                                <td>US</td>
                                                <td>14:00</td>
                                            </tr>--%>
                                             <tr><td>Algeria</td><td>06:00</td></tr>
 <tr><td>Bahrain</td><td>08:00</td></tr>
 <tr><td>Egypt</td><td>07:00</td></tr>
 <tr><td>Iran</td><td>09:30</td></tr>
 <tr><td>Iraq</td><td>08:00</td></tr>
 <tr><td>Jordan</td><td>08:00</td></tr>
 <tr><td>Kuwait</td><td>08:00</td></tr>
 <tr><td>Lebanon</td><td>08:00</td></tr>
 <tr><td>Morocco</td><td>06:00</td></tr>
 <tr><td>Oman</td><td>09:00</td></tr>
 <tr><td>Qatar</td><td>08:00</td></tr>
 <tr><td>Saudi Arabia</td><td>08:00</td></tr>
 <tr><td>Tunisia</td><td>06:00</td></tr>
 <tr><td>UAE</td><td>09:00</td></tr>      
                                        </table>
                                    </td>
                                    <td class="wdata2 wdata" style="display: none;">
                                        
                                        <table style="min-width: 150px; width: 100%;">
                                         <tr><td>Algeria</td><td>06:00</td></tr>
 <tr><td>Bahrain</td><td>08:00</td></tr>
 <tr><td>Egypt</td><td>07:00</td></tr>
 <tr><td>Iran</td><td>09:30</td></tr>
 <tr><td>Iraq</td><td>08:00</td></tr>
 <tr><td>Jordan</td><td>08:00</td></tr>
 <tr><td>Kuwait</td><td>08:00</td></tr>
 <tr><td>Lebanon</td><td>08:00</td></tr>
 <tr><td>Morocco</td><td>06:00</td></tr>
 <tr><td>Oman</td><td>09:00</td></tr>
 <tr><td>Qatar</td><td>08:00</td></tr>
 <tr><td>Saudi Arabia</td><td>08:00</td></tr>
 <tr><td>Tunisia</td><td>06:00</td></tr>
 <tr><td>UAE</td><td>09:00</td></tr>      
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </div>

                        <div class="col-md-5 col-sm-12 col-xs-12" style="text-align: center; height: 120px;">
                            <div style="width: 120px; position: relative; margin: 0 auto;">
                                <div class="cdclock"></div>
                                <canvas id="canvasClock" class="cclock" width="100" height="100" style="background-color: transparent;"></canvas>

                            </div>

                        </div>

                        

                    </div>
                </div>

            </div>
            <div class="col-md-5 col-sm-12 col-xs-12">
                <div class="bg-white" style="text-align: center;">

                    <div>
                        <input type="button" class="btn btn-flat btn-block bg-red" onclick="addEventToCalendar();" value="Click here for calendar invite" />
                    </div>
                    <br/>

                    <div id="webcal" class="cal3" style="padding: 0px;    min-height: 273px;">
                        <script type="text/template" id="template-calendar-months">

                            <!--<div class="clndr-today-button">Today</div>-->
                        </script>
                        <!--</div>-->
                    </div>
                    
                </div>
            </div>


        </div>
    </div>
    <div style="height: 40px;">
    </div>
    <MENA:Footer ID="Footer" runat="server" />
    <MENA:Menu ID="Menu" runat="server" />
    <MENA:Modals ID="Modals" runat="server" />

    <script src="ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
    <script src="assets/js/underscore-min.js"></script>
    <script src="assets/js/moment.min.js"></script>
    <script src="assets/js/clndr.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-modal.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-collapse.min.js" type="text/javascript"></script>
    <script src="assets/js/application.js" type="text/javascript"></script>
    <script src="assets/service/appData.js"></script>
    <script src="assets/service/interface.js"></script>
    <script src="assets/service/ServiceData.js"></script>
    <script src="assets/js/custom/validation.js"></script>
    <script src="assets/js/custom/ready.js"></script>
    <script src="assets/js/custom/common.js"></script>
    <script src="assets/js/custom/webcast.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            LoadWebcast();
        });
    </script>
</body>
</html>
