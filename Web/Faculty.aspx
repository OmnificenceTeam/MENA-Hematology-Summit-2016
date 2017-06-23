<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="Faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="no-js" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Faculty MHS 2016</title>
    <meta content="width=device-width" name="viewport" />
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
    <div class="loader">
            <img src="assets/images/loader.gif" />
        </div>
    <div id="faculty_Div" style="display:none;">
    <header class="main-header">
        <div class="city-toggle-wrap">
            <div class="cols" >
                <div class="col-12">
                    <a class="city-toggle" href="#" id="city-toggle" onclick="hideDescription();">MENU
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
    
    <div class="cols" id="international-faculty" style="margin-top:20px;">
        <nav class="home-city-nav">
            <div class="city-nav-wrap" style="padding-top: 0px;">
                <a class="button" href="#">INTERNATIONAL FACULTY</a>
                <ul class="cities" style="padding-top: 0px;" runat="server" id="int_list">
                   
                </ul>
            </div>
        </nav>
    </div>

    <br /><br />

    <div class="cols" id="regional-faculty">
        <nav class="home-city-nav">
            <div class="city-nav-wrap" style="padding-top: 0px;">
                <a class="button" href="#">&nbsp;&nbsp;&nbsp;REGIONAL FACULTY&nbsp;&nbsp;</a>
                <ul class="cities" style="padding-top: 0px;" runat="server" id="reg_list">
                    
                </ul>
            </div>
        </nav>
    </div>
</div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
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
    <script>
        $(document).ready(function () {
            window.setTimeout(function () { $(".loader").fadeOut() }, 5000);

        });
        $(document).ready(function () {
            window.setTimeout(function () { $("#faculty_Div").css("display", "block") }, 5000);

        });
    </script>
</body>
</html>