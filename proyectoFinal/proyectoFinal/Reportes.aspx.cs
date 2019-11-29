using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace proyectoFinal
{
    public partial class Reportes : System.Web.UI.Page
    {
        OrmHospitalesDataContext db = new OrmHospitalesDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsGraficos grafico = new ClsGraficos();
            chtGrafico.DataSource = grafico.llenarGrafico(Calendar1.SelectedDate,Calendar2.SelectedDate);
            chtGrafico.Series["Series1"].XValueMember = "Mes";
            chtGrafico.Series["Series1"].YValueMembers = "Cantidad";
            chtGrafico.Visible = true;
        }
    }
}