using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using Omnificence.ConferenceApp.Users;
using Omnificence.ConferenceApp.Data;
using Omnificence.ConferenceApp.Objects;

public partial class Faculty : System.Web.UI.Page
{
    DataManager _dataMgr = new DataManager();
    protected static UserType currentUser = UserType.User;

    protected void Page_Load(object sender, EventArgs e)
    {
        UserSession us = Session["User"] as UserSession;

        try
        {
            UserSession.IsAuthorized(currentUser, Session["User"] as UserSession);
        }
        catch (UnauthorizedAccessException)
        {
            Response.Redirect("Default.aspx");
            return;
        }

        Speaker speaker = new Speaker();
        DataTable dt = _dataMgr.GetSpeakers(speaker);

        if (dt.Rows.Count > 0)
        {
            String international = String.Empty;
            String region = String.Empty;
            foreach (DataRow dr in dt.Rows)
            {
                if (!dr["SpeakerName"].ToString().ToLower().Equals("all"))
                {
                    if (dr["FacultyType"].ToString() != "")
                    {
                       if (Convert.ToInt64(dr["FacultyType"].ToString()) == 1)
                        {
                            international += "<li>"
                                      + "<a class='city' href='#' onclick='showDescription(&#39;SP_" + dr["SpeakerId"].ToString() + "&#39;)'>"
                                      + "<div class='card effect__random' data-id='" + dr["SpeakerId"].ToString() + "'>"
                                      + "<div class='card__front'>"
                                      + "<img alt='SpeakerImage' class='speakerImg' src='" + dr["SpeakerPhoto"].ToString() + "' />"
                                      + "</div>"
                                      + "<div class='card__back'>"
                                      + "<table style='width: 100%; height: 100%; padding: 0px;'>"
                                      + "<tr>"
                                      + "<td class='speaker-card'>"
                                      + "<span style='text-transform: uppercase'>" + dr["SpeakerName"].ToString() + "</span><br />"
                                      + "<span style='text-transform: uppercase; font-size: 11px; letter-spacing: 1px;'>" + dr["SpeakerDetails"].ToString() + "</span>"
                                      + "</td>"
                                      + "</tr>"
                                      + "</table>"
                                      + "</div>"
                                      + "<div id='SP_" + dr["SpeakerId"].ToString() + "_img' class='desc-div-img'>"
                                      + "<img class='desc-down-img' src='assets/images/desc_down.png' />"
                                      + "</div>"
                                      + "</div>"
                                      + "</a>"
                                      + "<div id='SP_" + dr["SpeakerId"].ToString() + "' class='desc-div' >"
                                      + "<div><p class='Speaker_Name_Head'>" + dr["SpeakerName"].ToString() + "</p><sapn class='Hide' onclick='hideDescription();'>✖</span> "
                                      + "</div>"
                                      + dr["SpeakerDescription"].ToString()
                                      + "</div>"
                                      + "</li>";
                        }
                        else if (Convert.ToInt64(dr["FacultyType"].ToString()) == 2)
                        {
                            region += "<li>"
                                      + "<a class='city' href='#' onclick='showDescription(&#39;SP_" + dr["SpeakerId"].ToString() + "&#39;)'>"
                                      + "<div class='card effect__random' data-id='" + dr["SpeakerId"].ToString() + "'>"
                                      + "<div class='card__front'>"
                                      + "<img alt='SpeakerImage' class='speakerImg' src='" + dr["SpeakerPhoto"].ToString() + "' />"
                                      + "</div>"
                                      + "<div class='card__back'>"
                                      + "<table style='width: 100%; height: 100%; padding: 0px;'>"
                                      + "<tr>"
                                      + "<td class='speaker-card'>"
                                      + "<span style='text-transform: uppercase'>" + dr["SpeakerName"].ToString() + "</span><br />"
                                      + "<span style='text-transform: uppercase; font-size: 11px; letter-spacing: 1px;'>" + dr["SpeakerDetails"].ToString() + "</span>"
                                      + "</td>"
                                      + "</tr>"
                                      + "</table>"
                                      + "</div>"
                                      + "<div id='SP_" + dr["SpeakerId"].ToString() + "_img' class='desc-div-img'>"
                                      + "<img class='desc-down-img' src='assets/images/desc_down.png' />"
                                      + "</div>"
                                      + "</div>"
                                      + "</a>"
                                      + "<div id='SP_" + dr["SpeakerId"].ToString() + "' style='display: none' class='desc-div'>"
                                       + "<div><p class='Speaker_Name_Head'>" + dr["SpeakerName"].ToString() + "</p><sapn class='Hide' onclick='hideDescription();'>✖</span> "
                                      + "</div>"
                                      + dr["SpeakerDescription"].ToString()
                                      + "</div>"
                                      + "</li>";
                        }
                    }
                }
            }

            if (international.Length > 0)
            {
                int_list.InnerHtml = "";
                int_list.InnerHtml = international;
            }

            if (region.Length > 0)
            {
                reg_list.InnerHtml = "";
                reg_list.InnerHtml = region;
            }
        }
    }
}