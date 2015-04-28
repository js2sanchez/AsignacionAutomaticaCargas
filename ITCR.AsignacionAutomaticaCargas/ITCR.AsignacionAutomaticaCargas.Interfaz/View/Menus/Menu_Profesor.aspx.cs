using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.Views.Professor
{
    public partial class Professor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["PaginaActual"] = "~/View/Menus/Menu_Profesor.aspx";

            String NombreUsuario = Session["Login"].ToString();

            cUsuarioNegocios Usuario = new cUsuarioNegocios(1, "A", 2, "B");
            Usuario.Login = NombreUsuario;

            DataTable TablaUsuario = Usuario.Buscar();

            Int16 IdUsuario = 0;
            if (TablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["idUsuario"].ToString());
            }

            Session["IdUsuario"] = IdUsuario;
        }
    }
}