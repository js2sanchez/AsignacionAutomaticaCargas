using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ITCR.AsignacionAutomaticaCargas.Negocios;
using System.Data;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Estadisticas
{
    public partial class ConsultarEstadisticasCursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         if (!this.IsPostBack)
            {

                cargarTablaDepartamentEstadistica();
            }
        }



        private void cargarTablaDepartamentEstadistica()
        {
            cEstadisticaNegocios Estadistica = new cEstadisticaNegocios(1, "A", 2, "B");
            cDepartamentoNegocios departamento = new cDepartamentoNegocios(1, "A", 2, "B");
            Int32 periodo = Int32.Parse(Session["periodo"].ToString());
            Estadistica.IdPeriodo = periodo;
            DataTable TablaEstadistica = Estadistica.SeleccionarTodos();


            if (TablaEstadistica.Rows.Count > 0)
            {
                
                dgEstadistica.DataSource = TablaEstadistica;
                dgEstadistica.DataBind();
            }
        }

    }
}