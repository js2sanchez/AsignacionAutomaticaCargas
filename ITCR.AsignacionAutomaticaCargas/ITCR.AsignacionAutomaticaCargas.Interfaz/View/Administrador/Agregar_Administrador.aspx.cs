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

                //Datos generales
                Usuario.CedulaIdentidad = txtCedula.Text;
                Usuario.Nombre = txtNombre.Text;
                Usuario.PrimerApellido = txtPrimerApellido.Text;
                Usuario.SegundoApellido = txtSegundoApellido.Text;

                //Datos de autenticacion
                Usuario.Login = txtUsuario.Text;
                Usuario.Contrasena = txtConfirmacionContraseña.Text;

                if (txtFraseContraseña.Text.CompareTo("") != 0)
                {
                    Usuario.FraseContrasena = txtFraseContraseña.Text;
                }

                Usuario.Fk_tipoUsuario = 1;
                Usuario.Eliminado = 0;
                Usuario.Insertar();
            }
        }
    }
}