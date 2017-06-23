using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Omnificence.ConferenceApp.Users;
using Omnificence.ConferenceApp.Data;

public partial class Webcast : System.Web.UI.Page
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
    }
}