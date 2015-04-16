using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Sede
{
    public partial class Consultar_Sede : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5] { new DataColumn("idSede"), new DataColumn("codigo_sede"), new DataColumn("nombre_sede"), new DataColumn("editar"), new DataColumn("eliminar") });
                dt.Rows.Add("1","S001", "Sede Central", "", "");
                dt.Rows.Add("2","S002", "Sede Regional", "", "");
                dt.Rows.Add("3", "S003", "Centro Academico", "", "");
                dt.Rows.Add("3", "S003", "Centro Academico", "", "");
                dt.Rows.Add("3", "S003", "Centro Academico", "", "");
                dt.Rows.Add("3", "S003", "Centro Academico", "", "");
                dt.Rows.Add("3", "S003", "Centro Academico", "", "");
                dt.Rows.Add("3", "S003", "Centro Academico", "", "");
                dt.Rows.Add("3", "S003", "Centro Academico", "", "");
                dt.Rows.Add("3", "S003", "Centro Academico", "", "");
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}