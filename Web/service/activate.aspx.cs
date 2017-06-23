using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Omnificence.ConferenceApp.DataAccessControl;
using System.Collections.Generic;
using Omnificence.ConferenceApp.Data;
using System.Data;

public partial class service_activate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataManager _dMgr = new DataManager();
        if (Request.QueryString["ref"] != null && Request.QueryString["ref"].ToString() != "")
        {
            DataTable dt = _dMgr.ActivateAccount(Request.QueryString["ref"].ToString());
           
            if (dt.Rows.Count > 0)
            {
                activated.Visible = true;
            }
            else
            {
                expired.Visible = true;
            }
        }
        else
        {
            expired.Visible = true;
        }
    }
}