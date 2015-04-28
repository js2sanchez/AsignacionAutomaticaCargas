using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Acerca_de
{
    public partial class Acerca_De : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            /*
            String NombreUsuario = Session["Login"].ToString();

            cUsuarioNegocios Usuario = new cUsuarioNegocios(1, "A", 2, "B");
            Usuario.Login = NombreUsuario;

            DataTable TablaUsuario = Usuario.Buscar();

            Int16 TipoUsuario = 0;
            if (TablaUsuario.Rows.Count > 0)
            {
                TipoUsuario = Int16.Parse(TablaUsuario.Rows[0]["fk_tipoUsuario"].ToString());
            }

            if (TipoUsuario == 1)
            {
                Session["PaginaActual"] = "~/View/Menus/Menu_Administrador.aspx";
            }
            else
            {
                Session["PaginaActual"] = "~/View/Menus/Menu_Profesor.aspx";
            }*/
        }
    }
}