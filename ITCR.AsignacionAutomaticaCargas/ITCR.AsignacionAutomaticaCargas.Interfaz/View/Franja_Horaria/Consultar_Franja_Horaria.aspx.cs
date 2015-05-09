using ITCR.AsignacionAutomaticaCargas.Negocios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Franja_Horaria
{
    public partial class Consultar_Franja_Horaria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                cargarTablaFranjaHoraria();
            }
        }

        private void cargarTablaFranjaHoraria()
        {
            cFranjaHorariaNegocios FranjaHoraria = new cFranjaHorariaNegocios(1, "A", 2, "B");

            FranjaHoraria.Eliminado = 0;
            DataTable TablaFranjaHoraria = FranjaHoraria.Buscar();

            if (TablaFranjaHoraria.Rows.Count > 0)
            {
                dgFranjaHoraria.DataSource = TablaFranjaHoraria;
                dgFranjaHoraria.DataBind();

                foreach (DataGridItem Fila in dgFranjaHoraria.Items)
                {
                    Fila.Cells[4].Text = obtenerDiasFranja(Fila.Cells[0].Text);
                }
            }
        }

        protected void dgFranjaHoraria_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdFranjaHoraria = Int16.Parse(e.Item.Cells[0].Text);

                cFranjaHorariaNegocios FranjaHoraria = new cFranjaHorariaNegocios(1, "A", 2, "B");

                FranjaHoraria.IdFranjaHoraria = IdFranjaHoraria;

                DataTable TablaDepartamento = FranjaHoraria.SeleccionarUno();
                if (TablaDepartamento.Rows.Count > 0)
                {
                    FranjaHoraria.Eliminado = 1;
                    FranjaHoraria.Actualizar();
                }

                Response.Redirect("Consultar_Franja_Horaria.aspx");
            }

            if (e.CommandName == "Editar")
            {
            }
        }

        protected String obtenerDiasFranja(String IdFranjaHoraria)
        {
            cDiasFranjaNegocios dia = new cDiasFranjaNegocios(1, "A", 2, "B");
            dia.Fk_idFranjaHoraria = Int16.Parse(IdFranjaHoraria);
            String diasFranja = "";
            DataTable TablaDias = dia.Buscar();

           foreach (DataRow row in  TablaDias.Rows)
            {
                diasFranja += " " + row[1];
            }



                return diasFranja;

        
        }

    }
}