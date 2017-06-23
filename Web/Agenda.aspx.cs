using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using Omnificence.ConferenceApp.Users;
using Omnificence.ConferenceApp.Data;

public partial class Agenda : System.Web.UI.Page
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

        DataTable dt = _dataMgr.GetTopicByConference(2);

        DataRow[] day1 = dt.Select("DayId = 1");
        DataRow[] day2 = dt.Select("DayId = 2");
        DataRow[] day3 = dt.Select("DayId = 3");

        String agenda1 = String.Empty;
        foreach (DataRow dr in day1)
        {
            agenda1 += "<div class='row no-margin'>" +
                            "<div class='col-md-12' style='padding: 0px;'>" +
                                "<p class='Atitl'>SESSION</p>" +
                                "<p class='Acont'>" + dr["SessionName"].ToString() + "</p>" +
                            "</div>" +
                            "<div class='col-md-6'>" +
                                 "<p class='Atitl'>TOPIC</p>" +
                                  "<p class='Acont'>" + dr["TopicName"].ToString() + "</p>" +
                                 "</div>" +
                                 " <div class='col-md-6'>" +
                                 "<p class='Atitl'>TIME</p>" +
                                 "<p class='Acont'>" + dr["StartTime"].ToString() + " to " + dr["EndTime"].ToString() + "</p>" +
                            "</div>";


            DataTable Spedt = _dataMgr.GetSpeakerByTopic(Convert.ToUInt64(dr["TopicId"].ToString()));
            agenda1 += "<div class='col-md-12'>";
            foreach (DataRow sdr in Spedt.Rows)
            {

                if (!String.IsNullOrEmpty(sdr["SpeakerName"].ToString()))
                {

                    agenda1 += "<div class='btn sname'>" +
                                               sdr["SpeakerName"].ToString() +
                                           "</div>";

                }

            }
            agenda1 += "</div>";

            agenda1 += "<hr class='styled' />" +
                       " </div>";
        }

        Agenda1.InnerHtml = agenda1;


        String agenda2 = String.Empty;
        foreach (DataRow dr in day2)
        {
            agenda2 += "<div class='row no-margin'>" +
                            "<div class='col-md-12' style='padding: 0px;'>" +
                                "<p class='Atitl'>SESSION</p>" +
                                "<p class='Acont'>" + dr["SessionName"].ToString() + "</p>" +
                            "</div>" +
                            "<div class='col-md-6'>" +
                                 "<p class='Atitl'>TOPIC</p>" +
                                  "<p class='Acont'>" + dr["TopicName"].ToString() + "</p>" +
                                 "</div>" +
                                 " <div class='col-md-6'>" +
                                 "<p class='Atitl'>TIME</p>" +
                                 "<p class='Acont'>" + dr["StartTime"].ToString() + " to " + dr["EndTime"].ToString() + "</p>" +
                            "</div>";

            DataTable Spedt = _dataMgr.GetSpeakerByTopic(Convert.ToUInt64(dr["TopicId"].ToString()));
            agenda2 += "<div class='col-md-12'>";
            foreach (DataRow sdr in Spedt.Rows)
            {
                
                if (!String.IsNullOrEmpty(sdr["SpeakerName"].ToString()))
                {

                    agenda2 += "<div class='btn sname'>" +
                                               sdr["SpeakerName"].ToString() +
                                           "</div>";

                }
                
            }
            agenda2 += "</div>";
            agenda2 += "<hr class='styled' />" +
                       " </div>";
        }


        Agenda2.InnerHtml = agenda2;


        String agenda3 = String.Empty;
        foreach (DataRow dr in day3)
        {
            agenda3 += "<div class='row no-margin'>" +
                            "<div class='col-md-12' style='padding: 0px;'>" +
                                "<p class='Atitl'>SESSION</p>" +
                                "<p class='Acont'>" + dr["SessionName"].ToString() + "</p>" +
                            "</div>" +
                            "<div class='col-md-6'>" +
                                 "<p class='Atitl'>TOPIC</p>" +
                                  "<p class='Acont'>" + dr["TopicName"].ToString() + "</p>" +
                                 "</div>" +
                                 " <div class='col-md-6'>" +
                                 "<p class='Atitl'>TIME</p>" +
                                 "<p class='Acont'>" + dr["StartTime"].ToString() + " to " + dr["EndTime"].ToString() + "</p>" +
                            "</div>";

            DataTable Spedt = _dataMgr.GetSpeakerByTopic(Convert.ToUInt64(dr["TopicId"].ToString()));
            agenda3 += "<div class='col-md-12'>";
            foreach (DataRow sdr in Spedt.Rows)
            {

                if (!String.IsNullOrEmpty(sdr["SpeakerName"].ToString()))
                {

                    agenda3 += "<div class='btn sname'>" +
                                               sdr["SpeakerName"].ToString() +
                                           "</div>";

                }

            }
            agenda3 += "</div>";
            agenda3 += "<hr class='styled' />" +
                       " </div>";
        }


        Agenda3.InnerHtml = agenda3;

    }
}