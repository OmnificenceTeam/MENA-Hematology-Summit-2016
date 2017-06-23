<%@ Page Language="C#" AutoEventWireup="true" CodeFile="activate.aspx.cs" Inherits="service_activate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>MENA 2016</title>
     <link href="assets/images/favicon.jpg" rel="icon" type="image/jpg" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <meta name="format-detection" content="telephone=no" />
    <link rel="stylesheet" href="../assets/css/bootstrap.css" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="http://allfont.net/allfont.css?fonts=arial-narrow" rel="stylesheet" type="text/css" />

   <link rel="stylesheet" href="../assets/css/main.css" />
 <link rel="stylesheet" href="../assets/css/landing.css" />
    <link rel="stylesheet" href="../assets/css/common.css" />

    <style>
        html {

            font-family: 'futuraregular';
        }

        #home-anim
        {
    background: rgba(161, 28, 28, 0.1);
        }
    </style>


    <style>
        body {
            background: #a11c1c !important ;
            font-family: "futuraregular";
        }

        #centerContainer {
            max-width: 440px;
            width: 100%;
            background: rgba(255, 255, 255, 0.87);
            font-size: 20px;
            padding: 40px;
            position: absolute;
            left: 50%;
            top: 50%;
            margin-top: -190px;
            margin-left: -220px;
            text-align: center;
            box-shadow: 0px 0px 21px 0px black;
        }

        a {
            text-decoration: underline;
            color: black;
        }

        @media screen and (max-device-width: 320px) {
            #centerContainer {
                max-width: 300px;
                 width: 70%; 
                 min-width:225px;
                background: rgba(255, 255, 255, 0.87);
                font-size: 20px;
                padding: 40px;
                position: absolute;
                left: 50%;
                top: 50%;
                margin-top: -190px;
                margin-left: -150px;
                text-align: center;
                box-shadow: 0px 0px 21px 0px black;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="centerContainer" class="">
            <img src="../assets/images/logo1.png" style="width: 80%;" />
            <p id="activated" runat="server" visible="false">
                Your account has been activated. Please <a href="../default.aspx">click here</a> to login.
            </p>

            <p id="expired" runat="server" visible="false" style="color: red;">
                Link is expired or Invalid.
            </p>
        </div>
    </form>
</body>
</html>
