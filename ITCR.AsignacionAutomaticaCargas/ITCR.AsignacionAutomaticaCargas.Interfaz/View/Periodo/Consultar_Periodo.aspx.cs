using ITCR.AsignacionAutomaticaCargas.Negocios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Periodo
{
    public partial class Consultar_Periodo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                cargarTablaPeriodos();
            }
        }

        private void cargarTablaPeriodos()
        {
            cPeriodoNegocios Periodo = new cPeriodoNegocios(1, "A", 2, "B");
            cModalidadNegocios Modalidad = new cModalidadNegocios(1, "A", 2, "B");
            Periodo.Eliminado = 0;
            DataTable TablaCursos = Periodo.Buscar();

            if (TablaCursos.Rows.Count > 0)
            {
                dgPeriodos.DataSource = TablaCursos;
                dgPeriodos.DataBind();

                foreach (DataGridItem Fila in dgPeriodos.Items)
                {
                    Fila.Cells[2].Text = Modalidad.obtenerModalidad(Int32.Parse(Fila.Cells[2].Text));
                }
            }
        }

      
        protected void dgPeriodos_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdPeriodo = Int16.Parse(e.Item.Cells[0].Text);

                cPeriodoNegocios Periodo = new cPeriodoNegocios(1, "A", 2, "B");

                Periodo.IdPeriodo = IdPeriodo;
                DataTable TablaPeriodo = Periodo.SeleccionarUno();

                if (TablaPeriodo.Rows.Count > 0)
                { 
                    Periodo.Eliminado = 1;
                    Periodo.Actualizar();
                       
                }
                

                Response.Redirect("Consultar_Periodo.aspx");
            }

            if (e.CommandName == "Editar")
            {
            }
        }

    }
}