using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace proyectoFinal
{
    public partial class consultarUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClsUsuario usuarioDao = new ClsUsuario();
                usuarioDao.consultar(ref gdvTablaUsuarios);
            }
        }

        protected void gdvTablaUsuarios_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow filaNueva =(GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = filaNueva.RowIndex;
            if (e.CommandName == "Actualizar")
            {
                
                txtNombres.Text= gdvTablaUsuarios.Rows[rowIndex].Cells[1].Text;
                txtNombreUsuario.Text = gdvTablaUsuarios.Rows[rowIndex].Cells[4].Text;
                txtPrimerApellido.Text = gdvTablaUsuarios.Rows[rowIndex].Cells[2].Text;
                txtSegundoApellido.Text = gdvTablaUsuarios.Rows[rowIndex].Cells[3].Text;
                txtCedula.Text = gdvTablaUsuarios.Rows[rowIndex].Cells[0].Text;
                ddlEps.Text = gdvTablaUsuarios.Rows[rowIndex].Cells[5].Text;
            }
            if (e.CommandName=="Eliminar")
            {
                int cedula = int.Parse(gdvTablaUsuarios.Rows[rowIndex].Cells[0].Text);
                ClsUsuario usuarioDao = new ClsUsuario();
                usuarioDao.eliminarUsuario(cedula);
                usuarioDao.consultar(ref gdvTablaUsuarios);


            }

     
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            ClsUsuario usuarioDao = new ClsUsuario();
            usuario usuarioActualizar = new usuario();
            usuarioActualizar.numero_cedula = int.Parse(txtCedula.Text);
            usuarioActualizar.nombres = txtNombres.Text;
            usuarioActualizar.primer_apellido = txtPrimerApellido.Text;
            usuarioActualizar.segundo_apellido = txtSegundoApellido.Text;
            usuarioActualizar.nombre_usuario = txtNombreUsuario.Text;
            usuarioActualizar.rol = ddlEps.Text;
            usuarioDao.actualizarUsuario(usuarioActualizar);
            usuarioDao.consultar(ref gdvTablaUsuarios);
        }

        protected void txtCedula_TextChanged(object sender, EventArgs e)
        {
            //nuevo
        }

        protected void gdvTablaUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}