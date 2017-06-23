using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Omnificence.ConferenceApp.Services;
using Omnificence.ConferenceApp.WebServices;


public partial class service_UserService : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String reqPacket = System.Text.Encoding.UTF8.GetString(Request.BinaryRead(Request.ContentLength));
        String resPacket = ServiceFactory.GetService(ServiceType.UserService).DoService(reqPacket, this);
        Response.Write(resPacket);
    }
}