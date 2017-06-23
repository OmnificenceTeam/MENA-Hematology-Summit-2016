<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Highlights.aspx.cs" Inherits="Highlights" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="no-js" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Highlights MHS 2016</title>
    <meta content="width=device-width" name="viewport" />
    <link href="assets/images/favicon.jpg" rel="icon" type="image/jpg" />
    <link rel="stylesheet" media="all" href="assets/css/application.css" />
    <link rel="stylesheet" media="all" href="assets/css/custom.css" />
     <link rel="stylesheet" media="all" href="assets/css/cards.css" />
    <link rel="stylesheet" media="all" href="assets/css/bootstrap-custom.css" />
    <link rel="stylesheet" media="all" href="assets/css/custom-modal.css" />
    <link rel="stylesheet" media="all" href="assets/css/common.css" />
    <script src="assets/js/modernizr-2.8.3.min.js"></script>
    <style type="text/css">
        .home-city-nav .city-nav-wrap {
            padding-top: 10px;
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
    <div class="social-separator banner-bg" style="background-image: url('assets/images/online_cme.jpg')">
        <div class="cols">
            <nav class="home-city-nav">
                <div class="city-nav-wrap" style="padding: 0px;">
                    <ul class="cities" style="padding-top: 0px;">
                        <li class="pull-right">
                            <a class="city" href="#" style="cursor: default;">
                                <img alt="OnlineCME" src="assets/images/transparent.png" class="banner-title-container" />
                                <div class="name name-letter-space with-sub-text banner-title">
                                    <span>ONLINE CME</span><br />
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
        <nav class="home-city-nav">
            <a class="choose scroll-to custom-choose" data-offset="45" data-target="#city-nav-wrap" href="#">HIGHLIGHTS</a>
        </nav>
    </div>
    <br />
    <br />
    <br />
    <div class="cols">
        <nav class="home-city-nav">
            <div class="city-nav-wrap">
                <p><strong><u>Title of the Video 1</u></strong></p>
                <ul class="cities" style="padding-top: 0px;">
                    <li class="video-sample-container">
                        <a class="city" href="#" onclick="showVideo('Title of the Video 1', 1)">
                            <div class="card">
                                <div class="card__front" style="background: #000;">
                                    <span class="card__text view-more-card">
                                        <span><img src="assets/images/play.png" /></span>
                                    </span>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="about video-sample-container">
                    <div class="video-sample">
                        <div class="video-sample-text">
                            <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                    </p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
                    </p>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>

    <div class="cols">
        <nav class="home-city-nav">
            <div class="city-nav-wrap">
                <p><strong><u>Title of the Video 2</u></strong></p>
                <ul class="cities" style="padding-top: 0px;">
                    <li class="video-sample-container">
                        <a class="city" href="#" onclick="showVideo('Title of the Video 2', 2)">
                            <div class="card">
                                <div class="card__front" style="background: #000;">
                                    <span class="card__text view-more-card">
                                        <span><img src="assets/images/play.png" /></span>
                                    </span>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="about video-sample-container">
                    <div class="video-sample">
                        <div class="video-sample-text">
                            <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                    </p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
                    </p>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>

    <div class="cols">
        <nav class="home-city-nav">
            <div class="city-nav-wrap">
                <p><strong><u>Title of the Video 3</u></strong></p>
                <ul class="cities" style="padding-top: 0px;">
                    <li class="video-sample-container">
                        <a class="city" href="#" onclick="showVideo('Title of the Video 3', 3)">
                            <div class="card">
                                <div class="card__front" style="background: #000;">
                                    <span class="card__text view-more-card">
                                        <span><img src="assets/images/play.png" /></span>
                                    </span>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="about video-sample-container">
                    <div class="video-sample">
                        <div class="video-sample-text">
                            <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                    </p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
                    </p>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>

    <div class="cols">
        <nav class="home-city-nav">
            <div class="city-nav-wrap">
                <p><strong><u>Title of the Video 4</u></strong></p>
                <ul class="cities" style="padding-top: 0px;">
                    <li class="video-sample-container">
                        <a class="city" href="#" onclick="showVideo('Title of the Video 4', 4)">
                            <div class="card">
                                <div class="card__front" style="background: #000;">
                                    <span class="card__text view-more-card">
                                        <span><img src="assets/images/play.png" /></span>
                                    </span>
                                </div>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="about video-sample-container">
                    <div class="video-sample">
                        <div class="video-sample-text">
                            <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                    </p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum
                    </p>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>

    <br />
    <br />
    <br />   

    <MENA:Footer ID="Footer" runat="server" />
    <MENA:Menu ID="Menu" runat="server" />
    <MENA:Modals ID="Modals" runat="server" />

    <div id="modal-highlights" class="modal fade" role="dialog" style="top: 20%;" data-backdrop="static" data-keyboard="false">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" onclick="removeVideo()">&times;</button>
                    <h4 class="modal-title" id="video-title"></h4>
                </div>
                <div class="modal-body">
                    
                </div>
            </div>

        </div>
    </div>

    <script src="ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-modal.min.js" type="text/javascript"></script>
    <script src="assets/js/application.js" type="text/javascript"></script>
    <script src="assets/service/appData.js"></script>
    <script src="assets/service/interface.js"></script>
    <script src="assets/service/ServiceData.js"></script>
    <script src="assets/js/custom/validation.js"></script>
    <script src="assets/js/custom/ready.js"></script>
    <script src="assets/js/custom/common.js"></script>
</body>
</html>