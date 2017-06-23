<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Footer.ascx.cs" Inherits="headers_Footer" %>

<div class="cols" style="max-width: 100%;">
    <footer class="footer">
        <div>
            <span class="footerTag" style="cursor:default !important;"><a class="awhite cursor_Pntr" >MENA-HSUMMIT-642016-20</a></span> |
            <span onclick="$('#myModal_PrivacyPolicy1').modal('show');">
                <a class="awhite" >PRIVACY POLICY</a>
            </span >| <span onclick="$('#myModal_Termspolicy1').modal('show');"><a class="awhite" >TERMS OF USE</a></span> | <span onclick="OnclickContact();">CONTACT US</span> | <span onclick="OnclickFaq();">FAQ
            </span>
        </div>
        <img class="pull-right nLogo" src="assets/images/novartis.png" />
    </footer>
</div>
