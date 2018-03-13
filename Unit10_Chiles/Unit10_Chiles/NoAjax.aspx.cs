using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Unit10_Chiles
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnNoAjax_Click(object sender, EventArgs e)
        {
            lblNoAjaxMessage.Text = "Hello, world - this is a fresh message from the server! The time right now is: " + DateTime.Now.ToString("h:mm:ss tt");
        }
    }
}