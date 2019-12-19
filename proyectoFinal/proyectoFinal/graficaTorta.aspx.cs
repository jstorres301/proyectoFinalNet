using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;
namespace proyectoFinal
{
    public partial class graficaTorta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsGraficos grafico = new ClsGraficos();
            Chart1.DataSource = grafico.llenarGraficoRedondo(int.Parse(ddlCentroMedico.SelectedValue));
            Chart1.Series["Series1"].XValueMember = "Usuario";
            Chart1.Series["Series1"].YValueMembers = "Cantidad";
            Chart1.Visible = true;
        }
    }
}