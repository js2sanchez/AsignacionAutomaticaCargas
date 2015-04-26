using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack){
            
            }
        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            cUsuarioNegocios Usuario = new cUsuarioNegocios(1, "A", 2, "B");
            Usuario.Login = txtUsuario.Text;
            Usuario.Contrasena = txtContrasena.Text;
            string DatosUsuario = Usuario.AutenticarUsuario();

            if (DatosUsuario != "")
            {
                //Usuario Valido
                Session["Login"] = Usuario.Login;
                if (DatosUsuario.Equals("Administrador"))
                {
                    Response.Redirect("/View/Menus/Menu_Administrador.aspx");
                }
                else {
                    Response.Redirect("/View/Menus/Menu_Profesor.aspx");
                }
            }
            else
            {
                //Usuario Invalido
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "usuarioInvalido();", true);
            }   
        }

    }
}