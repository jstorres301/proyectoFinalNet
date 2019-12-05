using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace proyectoFinal
{
    public partial class menuAdministrador : System.Web.UI.Page
    {
        string url ="#";
        protected void Page_Load(object sender, EventArgs e)
        {
            //lblNombre.Text = Session["nombreLogin"].ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            url = "index.aspx";
            Response.Redirect("index.aspx");
        }
    }
}