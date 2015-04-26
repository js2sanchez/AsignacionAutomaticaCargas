using ITCR.AsignacionAutomaticaCargas.Negocios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Departamento
{
    public partial class Agregar_Departamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Codigo
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Validate("vgRegistrarDepartamento");

            if (Page.IsValid)
            {
            cDepartamentoNegocios Departamento = new cDepartamentoNegocios(1, "A", 2, "B");
            Departamento.CodigoDepartamento = txtCodigo.Text;
            Departamento.NombreDepartamento = txtNombre.Text;
            Departamento.Eliminado = 0;

            Departamento.Insertar();

            Response.Redirect("Consultar_Departamento.aspx");
        }
        }






    }
}