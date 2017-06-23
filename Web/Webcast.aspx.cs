using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Omnificence.ConferenceApp.Users;
using Omnificence.ConferenceApp.Data;
using System.Data;

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

        // Webcast link //

        DataTable dt = _dataMgr.GetWebUserDetails(us.UserId);
        //wbLink.HRef = "http://medtrix.wstream.net/mhs2016/webcast.asp?email=" + dt.Rows[0]["email"].ToString() + "&name=" + dt.Rows[0]["firstname"].ToString() + " " + dt.Rows[0]["lastname"].ToString();
    }
}