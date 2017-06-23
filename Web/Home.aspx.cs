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


public partial class Home : System.Web.UI.Page
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
            Int64 count = 0;

            dt = CollectionExtensions.OrderRandomly(dt.AsEnumerable()).CopyToDataTable();

            foreach (DataRow dr in dt.Rows)
            {
                if (!dr["SpeakerName"].ToString().ToLower().Equals("all"))
                {
                    if (dr["FacultyType"].ToString() != "")
                    {
                        count += 1;

                        if (count > 7)
                        {
                            break;
                        }

                        if (count < 5)
                        {
                            international += "<li class='hide-speaker'>";
                        }
                        else
                        {
                            international += "<li>";
                        }
                        international += "<a class='city' href='#'>"
                                  + "<div class='card effect__random' data-id='" + dr["SpeakerId"].ToString() + "'>"
                                  + "<div class='card__front cursor_Pntr'>"
                                  + "<img alt='SpeakerImage' class='speakerImg' src='" + dr["SpeakerPhoto"].ToString() + "' />"
                                  + "</div>"
                                  + "<div class='card__back'>"
                                  + "<table style='width: 100%; height: 100%; padding: 0px;'>"
                                  + "<tr>"
                                  + "<td class='speaker-card cursor_Pntr'>"
                                  + "<span style='text-transform: uppercase'>" + dr["SpeakerName"].ToString() + "</span><br />"
                                  + "<span style='text-transform: uppercase; font-size: 11px; letter-spacing: 1px;'>" + dr["SpeakerDetails"].ToString() + "</span>"
                                  + "</td>"
                                  + "</tr>"
                                  + "</table>"
                                  + "</div>"
                                  + "</div>"
                                  + "</a>"
                                  + "</li>";
                    }
                }
            }

            if (international.Length > 0)
            {
                international += "<li>"
                              + "<a class='city' href='Faculty.aspx'>"
                              + "<div class='card'>"
                              + "<div class='card__front' style='background: #a11c1c;'>"
                              + "<span class='Card_txt_viewmore card__text view-more-card'>"
                              + "<span>VIEW MORE FACULTY MEMBERS</span>"
                              + "</span>"
                              + "</div>"
                              + "</div>"
                              + "</a>"
                              + "</li>";
                speaker_list.InnerHtml = "";
                speaker_list.InnerHtml = international;
            }
        }
    }
}

public static class CollectionExtensions
{
    private static Random random = new Random();
    public static IEnumerable<T> OrderRandomly<T>(this IEnumerable<T> collection)
    {
        List<T> randomly = new List<T>(collection);
        while (randomly.Count > 0)
        {
            Int32 index = random.Next(randomly.Count);
            yield return randomly[index];
            randomly.RemoveAt(index);
        }
    }
}