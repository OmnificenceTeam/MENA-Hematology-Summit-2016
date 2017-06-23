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
public partial class service_resetPass : System.Web.UI.Page
{

    DataManager _dMgr = new DataManager();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["ref"] != null && Request.QueryString["ref"].ToString() != "")
        {
            hdnRefCode.Value = Request.QueryString["ref"].ToString();
            DataTable dt = _dMgr.IsReferenceCodeValid(hdnRefCode.Value);
            if (dt.Rows.Count >0)
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