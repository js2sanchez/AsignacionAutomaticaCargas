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
    public partial class Consultar_Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                cargarTablaAdministrador();
            }
        }



        private void cargarTablaAdministrador()
        {
            cUsuarioNegocios Administrador= new cUsuarioNegocios(1, "A", 2, "B");

            Administrador.Eliminado = 0;
            DataTable TablaAdministrador = Administrador.Buscar();
            

            if (TablaAdministrador.Rows.Count > 0)
            {
                dgAdministrador.DataSource = TablaAdministrador;
                dgAdministrador.DataBind();
            }
        }

        protected void dgAdministrador_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdAdministrador = Int16.Parse(e.Item.Cells[0].Text);

                cUsuarioNegocios Usuario = new cUsuarioNegocios(1, "A", 2, "B");

                Usuario.IdUsuario = IdAdministrador;

                DataTable TablaUsuario = Usuario.SeleccionarUno();

                if (TablaUsuario.Rows.Count > 0)
                {
                    Usuario.Eliminado = 1;
                    Usuario.Actualizar();
                }

                Response.Redirect("Consultar_Administrador.aspx");
            }

            if (e.CommandName == "Editar")
            {
            }
        }
    }
}