using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Franja_Horaria
{
    public partial class Agregar_FranjaHoraria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Validate("vgRegistrarFranjaHoraria");

            if (Page.IsValid)
            {
               

                Response.Redirect("Consultar_FranjaHoraria.aspx");
            }
        }
    }
}