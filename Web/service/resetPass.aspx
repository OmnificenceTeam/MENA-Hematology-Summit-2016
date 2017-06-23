<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resetPass.aspx.cs" Inherits="service_resetPass" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title>MENA 2016</title>
     <link href="assets/images/favicon.jpg" rel="icon" type="image/jpg" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="utf-8" />
     <base href="../" />

    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <meta name="format-detection" content="telephone=no" />
    <link rel="stylesheet" href="../assets/css/bootstrap.css" />
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="http://allfont.net/allfont.css?fonts=arial-narrow" rel="stylesheet" type="text/css" />

   <link rel="stylesheet" href="assets/css/main.css" />
 <link rel="stylesheet" href="assets/css/landing.css" />
    <link rel="stylesheet" href="assets/css/common.css" />

    <style>
        body {
            font-family: 'futuraregular';
            letter-spacing: 2px;
        }



        .top-menu a {
            color: black;
        }

        .fn-f18 {
            font-weight: normal;
            font-size: 18px;
        }

        .br-0 {
            border-radius: 0px;
        }

        .btn-custom {
            background: #FF9900;
            border-radius: 0px;
            font-size: 16px;
            padding: 5px 15px;
            border: none;
            float: right;
        }

            .btn-custom:hover {
                box-shadow: 0px 0px 5px 0px black;
            }

        .regInput {
               width: 100%;
    padding: 8px;
    font-size: 16px;
    border: 1px solid #A11C1C;
        }

        .m-20 {
            margin-top: 20px;
        }

        #regForm input {
            margin-top: 20px;
        }

        input:focus {
            outline: none;
        }

        select option {
            color: black;
        }

        #regForm select {
            margin-top: 20px;
        }
    </style>
    <style>
        body {
               background: #a11c1c !important;
            font-family: "futuraregular";
        }

        h3{
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
                 width: 100%; 
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
    <form id="form1" runat="server" onsubmit="return false;">
        <asp:HiddenField ID="hdnRefCode" runat="server" />
        <div id="centerContainer" class="">
            <img src="assets/images/logo1.png" style="width: 80%;" />
            <p id="activated" runat="server" visible="false">
                <div id="resetDiv">
                    <h3>Reset Password</h3>
                    <input type="password" id="txtPass" class="regInput" placeholder="Please enter password*" />
                    <br /><br />
                    <input type="password" id="txtCPass" class="regInput" placeholder="Confirm Password*" />
                    <br /><br />
                    <input type="button" onclick="onClickResetPass()" class="btn btn-red1 pull-right" value="Submit" />
                    <div id="rpMsg">
                    </div>
                </div>
                <div id="successDiv" style="display: none;">
                    Your password has been changed successfully. <a href="default.aspx">Click here</a> to login.
                </div>
            </p>

            <p id="expired" runat="server" visible="false" style="color: red;">
                Link is expired or Invalid.
            </p>
        </div>
    </form>

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
        $("#form1").find("input").keyup(function (e) {
            var code = e.which; // recommended to use e.which, it's normalized across browsers
            if (code == 13) e.preventDefault();
            if (code == 32 || code == 13 || code == 188 || code == 186) {
                onClickResetPass();
            } // missing closing if brace
        });
    </script>
</body>
</html>
