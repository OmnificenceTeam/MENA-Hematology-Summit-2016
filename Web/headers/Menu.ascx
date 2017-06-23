<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu.ascx.cs" Inherits="headers_Menu" %>

<nav class="city-nav overlay" id="menu-btn">
    <div class="cols">
       <%-- <div class="col-12">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
        </div>--%>
        <ul class="cities">
            <li class="col-4">
                <a href="Home.aspx">HOME
                </a>
            </li>
            <li class="col-4">
                <a href="PreRead.aspx">PRE-READ
                </a>
            </li>
            <li class="col-4">
                <a href="Agenda.aspx">AGENDA
                </a>
            </li>
            <li class="col-4">
                <a href="Faculty.aspx">FACULTY
                </a>
            </li>
            <li class="col-4">
                <a href="Webcast.aspx">LIVE WEBCAST
                </a>
            </li>
            <li class="col-4">
                <a href="Logistic.aspx">LOGISTICS
                </a>
            </li>
            <li class="col-4" style="cursor:pointer !important;">
                <a onclick="Onclickonlinecme();"> UPDATES
                </a>
            </li>
            <li class="col-4">
                <a href="#" onclick="openSurveyModal();">SURVEY
                </a>
            </li>
            <li class="col-4">
                <a  onclick="showExitModal();">LOGOUT
                </a>
            </li>
        </ul>
    </div>
</nav>
