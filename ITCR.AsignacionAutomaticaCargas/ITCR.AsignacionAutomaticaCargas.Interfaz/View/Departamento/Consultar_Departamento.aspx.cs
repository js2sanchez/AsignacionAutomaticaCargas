using ITCR.AsignacionAutomaticaCargas.Negocios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Departamento
{
    public partial class Consultar_Departamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                cargarTablaDepartamento();
            }
        }



        private void cargarTablaDepartamento()
        {
            cDepartamentoNegocios Departamento = new cDepartamentoNegocios(1, "A", 2, "B");

            Departamento.Eliminado = 0;
            DataTable TablaDepartamento = Departamento.Buscar();
            

            if (TablaDepartamento.Rows.Count > 0)
            {
                dgDepartamento.DataSource = TablaDepartamento;
                dgDepartamento.DataBind();
            }
        }

        protected void dgDepartamento_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdDepartamento = Int16.Parse(e.Item.Cells[0].Text);

                cDepartamentoNegocios Departamento = new cDepartamentoNegocios(1, "A", 2, "B");

                Departamento.IdDepartamento = IdDepartamento;

               DataTable TablaDepartamento = Departamento.SeleccionarUno();
               if (TablaDepartamento.Rows.Count > 0)
               {
                   Departamento.Eliminado = 1;
                   Departamento.Actualizar();
               }
                

                Response.Redirect("Consultar_Departamento.aspx");
            }

            if (e.CommandName == "Editar")
            {
            }
        }
    }
}