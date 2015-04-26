using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Sede
{
    public partial class Consultar_Sede : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                cargarTablaSedes();
            }
        }

        private void cargarTablaSedes()
        {
            cSedeNegocios Sede = new cSedeNegocios(1, "A", 2, "B");

            DataTable TablaSedes = Sede.Buscar();

            if (TablaSedes.Rows.Count > 0)
            {
                dgSedes.DataSource = TablaSedes;
                dgSedes.DataBind();
            }
        }

        protected void dgSedes_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdSede = Int16.Parse(e.Item.Cells[0].Text);

                cSedeNegocios Sede = new cSedeNegocios(1, "A", 2, "B");

                Sede.IdSede = IdSede;
                Sede.Eliminar();

                Response.Redirect("Consultar_Sede.aspx");
            }

            if (e.CommandName == "Editar")
            {
                string script = @"<script type='text/javascript'>
                            finalizar();
                            </script>";

                ScriptManager.RegisterStartupScript(this, typeof(Page), "Registro", script, false);
            }
        }
    }
}