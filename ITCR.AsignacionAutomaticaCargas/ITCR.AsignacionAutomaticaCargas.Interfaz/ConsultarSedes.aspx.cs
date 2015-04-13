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
    public partial class ConsultarSede : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
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
                dgdSedes.DataSource = TablaSedes;
                dgdSedes.DataBind();
            }
        }

        protected void dgdSedes_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdSede = Int16.Parse(e.Item.Cells[0].Text);

                cSedeNegocios Sede = new cSedeNegocios(1, "A", 2, "B");

                Sede.IdSede = IdSede;
                Sede.Eliminar();

                Response.Redirect("ConsultarSedes.aspx");
            }

            if (e.CommandName == "Editar")
            {
                Session["IdSede"] = e.Item.Cells[0].Text;
                Response.Redirect("ActualizarSedes.aspx");
            }
        }
    }
}