﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logica;

namespace proyectoFinal
{
    public partial class RCcentroMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClsCentroMedico centroMedicoDao = new ClsCentroMedico();
                centroMedicoDao.consultar(ref glvCentrosMedicos);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (archivo.HasFile)
            {
                string nombre = archivo.FileName;
                string ruta = "~/img/" + nombre;
                archivo.SaveAs(Server.MapPath(ruta));

                ClsCentroMedico centroMedicoDAO = new ClsCentroMedico();
                centro_medico registrarCentroMedicoDTO = new centro_medico();
                registrarCentroMedicoDTO.id_centro_medico = 1;
                registrarCentroMedicoDTO.nombre_centro_medico = txtNombreCentro.Text;
                registrarCentroMedicoDTO.nivel_atencion = ddlNivel.Text;
                registrarCentroMedicoDTO.horarios = ddlHorarios.Text;
                registrarCentroMedicoDTO.direccion = txtDireccion.Text;
                registrarCentroMedicoDTO.foto = ruta;
                lblMensaje.Text = centroMedicoDAO.registrarCentroMedico(registrarCentroMedicoDTO);
                centroMedicoDAO.consultar(ref glvCentrosMedicos);
            }
        }

        protected void glvCentrosMedicos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            ClsEpsHasCentroMedico dao = new ClsEpsHasCentroMedico();
            GridViewRow filaNueva = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            eps_has_centromedico epc = new eps_has_centromedico();
            int rowIndex = filaNueva.RowIndex;
            epc.id_centro_medico = int.Parse(glvCentrosMedicos.Rows[rowIndex].Cells[0].Text);
            epc.nit_eps = (string)Session["eps"];

            bool hacer = dao.consulta(epc);
            if (hacer == true)
            {
                lblMensaje.Text = dao.afiliar(epc);
            }
            else
            {
                Response.Write("<script language=javascript>alert('Ya te encuentras afiliado');</script>");
            }
        }
    }
}