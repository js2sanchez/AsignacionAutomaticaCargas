using ITCR.AsignacionAutomaticaCargas.Negocios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Administrador
{
    public partial class Agregar_Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Validate("vgRegistrarAdministrador");

            if (Page.IsValid)
            {
                cUsuarioNegocios Usuario = new cUsuarioNegocios(1, "A", 2, "B");
                   //Validacion 
                Usuario.Login = txtUsuario.Text;
                DataTable TablaUsuario = Usuario.Buscar();
                Int16 IdUsuario = -1;
                if (TablaUsuario.Rows.Count > 0)
                {
                    IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["idUsuario"].ToString());
                }

                if (IdUsuario == -1)
                {

                    //Datos generales
                    Usuario.CedulaIdentidad = txtCedula.Text;
                    Usuario.Nombre = txtNombre.Text;
                    Usuario.PrimerApellido = txtPrimerApellido.Text;
                    Usuario.SegundoApellido = txtSegundoApellido.Text;

                    //Datos de autenticacion
                    Usuario.Contrasena = txtConfirmacionContraseña.Text;

                    if (txtFraseContraseña.Text.CompareTo("") != 0)
                    {
                        Usuario.FraseContrasena = txtFraseContraseña.Text;
                    }

                    Usuario.Fk_tipoUsuario = 1;
                    Usuario.Eliminado = 0;
                    Usuario.Insertar();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "agregar();", true);
                }
                else {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "usuarioRegistradoAnteriormente();", true);
                }
            }
        }
    }
}