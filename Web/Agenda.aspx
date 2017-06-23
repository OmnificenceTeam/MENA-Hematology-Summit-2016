<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Agenda.aspx.cs" Inherits="Agenda" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="no-js" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Agenda MHS 2016</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
    <link href="assets/images/favicon.jpg" rel="icon" type="image/jpg" />

    <link rel="stylesheet" media="all" href="assets/css/bootstrap.css" />
    <link rel="stylesheet" media="all" href="assets/css/application.css" />
    <link rel="stylesheet" media="all" href="assets/css/custom.css" />
    <link rel="stylesheet" media="all" href="assets/css/cards.css" />
    <link rel="stylesheet" media="all" href="assets/css/bootstrap-custom.css" />
    <link rel="stylesheet" media="all" href="assets/css/custom-modal.css" />
    <link rel="stylesheet" media="all" href="assets/css/common.css" />

    <link rel="stylesheet" media="all" href="assets/css/agenda.css" />
    <script src="assets/js/modernizr-2.8.3.min.js"></script>
    <style>
        html {
            position: relative;
            min-height: 100%;
        }

        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
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
<body class="home Bg_trnsprnt">
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


    <div class="cols" style="margin-top: 60px; margin-bottom: 60px;">
        <div class="container">
            <div class="row no-gutter">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div style="overflow: hidden; position: relative;">
                        <div>
                            <div id="adayd1" class="Adet" style="">
                                <h2 style="margin:0">Agenda Day 1</h2>
                                <p>Date : 6 May 2016</p>
                                <p>Venue : Crowne Plaza, Dubai</p>
                            </div>
                            <div id="adayd2" class="Adet" style="display: none;">
                                <h2 style="margin:0">Agenda Day 2</h2>
                                <p>Date : 7 May 2016</p>
                                <p>Venue : Crowne Plaza, Dubai</p>
                            </div>
                            <img id="aday2" class="aimg active" style="width: 100%;" src="assets/images/agenda_day_2.jpg" />
                            <img id="aday1" class="aimg inactive" style="width: 100%;" src="assets/images/agenda_day_1.jpg" />
                        </div>
                    </div>

                </div>
                <div class="col-md-6 col-sm-6 col-xs-12" style="margin-top: 50px;">
                     
                    <div>
                       
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li id="atabday1" onclick="onShowAgenda1()" role="presentation" style="padding-left: 0;" class="active"><a href="#agendaDay1" aria-controls="agendaDay1" role="tab" data-toggle="tab">Agenda-Day 1</a></li>
                            <li id="atabday2" onclick="onShowAgenda2()" role="presentation"><a href="#agendaDay2" aria-controls="agendaDay2" role="tab" data-toggle="tab">Agenda-Day 2</a></li>
                            <li id="atabday3" onclick="onShowAgenda3()" role="presentation"><a href="#agendaDay3" aria-controls="agendaDay3" role="tab" data-toggle="tab">Ped.. Workshop</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="agendatab tab-content">
                            <div role="tabpanel" class="tab-pane active" id="agendaDay1">
                                <div style="height: 50px;">
                                    <a class="btn btn-download pull-right" href="assets/pdf/MENA_HS_agenda3.pdf" target="_blank">DOWNLOAD
                                        <img src="assets/images/pdf.png" />
                                    </a>
                                </div>
                                <div runat="server" id="Agenda1">
                                </div>


                            </div>
                            <div role="tabpanel" class="tab-pane" id="agendaDay2">
                                <div style="height: 50px;">
                                    <a class="btn btn-download pull-right"  href="assets/pdf/MENA_HS_agenda2.pdf" target="_blank">DOWNLOAD
                                        <img src="assets/images/pdf.png" />
                                    </a>
                                </div>
                                <div runat="server" id="Agenda2">
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="agendaDay3">
                                <div style="height: 50px;">
                                    <a class="btn btn-download pull-right"  href="assets/pdf/MENA_HS_agenda2.pdf" target="_blank">DOWNLOAD
                                        <img src="assets/images/pdf.png" />
                                    </a>
                                </div>
                                <div runat="server" id="Agenda3">
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <br />
    <br />
    <br />

    <MENA:Footer ID="Footer" runat="server" />
    <MENA:Menu ID="Menu" runat="server" />
    <MENA:Modals ID="Modals" runat="server" />

    <script src="ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.js" type="text/javascript"></script>

    <script src="assets/js/custom/init.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-modal.min.js" type="text/javascript"></script>
    <script src="assets/js/application.js" type="text/javascript"></script>
    <script src="assets/js/cards.js" type="text/javascript"></script>
    <script src="assets/service/appData.js"></script>
    <script src="assets/service/interface.js"></script>
    <script src="assets/service/ServiceData.js"></script>
    <script src="assets/js/custom/validation.js"></script>
    <script src="assets/js/custom/common.js"></script>
    <script src="assets/js/custom/agenda.js"></script>
    <script>
        $('.modal').on('show.bs.modal', function () {
            $('#city-toggle').hide();
            $('html').css('overflow-y', 'hidden');
        });

        $('.modal').on('hide.bs.modal', function () {
            $('#city-toggle').show();
            $('html').css('overflow-y', 'auto');
        });

        $(document).ready(function () {

            var t = getQueryParams(document.location.search);
            if (t.day != undefined) {
                if (t.day == 'day2') {
                    $("#atabday2").click();
                    $("#atabday2 a").click();
                }
                else if (t.day == 'day3') {
                    $("#atabday2").click();
                    $("#atabday3 a").click();
                }
            }

        });
    </script>

</body>
</html>
