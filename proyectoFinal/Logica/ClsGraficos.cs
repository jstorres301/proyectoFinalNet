using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace Logica
{
    public class ClsGraficos
    {
        OrmHospitalesDataContext db = new OrmHospitalesDataContext();

        public DataSet llenarGrafico(DateTime fechaInicio,DateTime fechaFinal)
        {
            DataSet ds = new DataSet();
            ds.Tables.Add("grafica");
            ds.Tables["grafica"].Columns.Add("Mes");
            ds.Tables["grafica"].Columns.Add("Cantidad");
            var consulta = db.sp_consultar_cuantos_usuarios_consulta(fechaInicio,fechaFinal);
            foreach (var item in consulta)
            {
                DataRow fila = ds.Tables["grafica"].NewRow();
                fila[0] = item.mes;
                fila[1] = item.cantidad;
                ds.Tables["grafica"].Rows.Add(fila);
            }
            return ds;
        }

    }
}
