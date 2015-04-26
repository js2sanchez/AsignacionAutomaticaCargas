using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;
using System.Web.Services;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Sede
{
    public partial class Consultar_Sede : System.Web.UI.Page
    {
        static Int16 IdSede = -1;

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
                //IdSede = Int16.Parse(e.Item.Cells[0].Text);
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "eliminar();", true);

                string code = @"<script type='text/javascript'>eliminar(" + e.Item.ItemIndex + ");</script>";
                ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", code, false);


            }

            if (e.CommandName == "Editar")
            {
            }
        }

        [WebMethod] 
        public static void eliminarConfirmacion(int index) {
           // if (IdSede != -1) {
                cSedeNegocios Sede = new cSedeNegocios(1, "A", 2, "B");
                Sede.IdSede = index;
                Sede.Eliminar();
                //Response.Redirect("Consultar_Sede.aspx");
            //s} 
        }
    }
}