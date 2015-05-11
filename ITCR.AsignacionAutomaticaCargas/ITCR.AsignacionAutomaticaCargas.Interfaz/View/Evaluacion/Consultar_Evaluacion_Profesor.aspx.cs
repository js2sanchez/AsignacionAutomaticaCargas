using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Evaluacion
{
    public partial class Consultar_Evaluacion_Profesor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                rblTodosProfesores.SelectedIndex = 0;
                cargarPeriodo();
                PanelTablaTodosProfesores.Visible = false;
                txtCedula.Visible = false;
                drpPeriodo.Visible = true;
                drpPeriodo.SelectedIndex = 0;
                drpPeriodo.Focus();
            }
        }

        public void cargarPeriodo()
        {
            drpPeriodo.Items.Clear();

            cPeriodoNegocios Periodo = new cPeriodoNegocios(1, "A", 2, "B");

            Periodo.Eliminado = 0;

            DataTable TablaPeriodo = Periodo.Buscar();

            ListItem ItemBasePeriodo = new ListItem("Periodo", "0");

            drpPeriodo.Items.Add(ItemBasePeriodo);

            for (int i = 0; i < TablaPeriodo.Rows.Count; i++)
            {
                Int16 IdModalidad = Int16.Parse(TablaPeriodo.Rows[i]["fk_idModalidad"].ToString());
                cModalidadNegocios Modalidad = new cModalidadNegocios(1, "A", 2, "B");
                Modalidad.IdModalidad = IdModalidad;
                Modalidad.Eliminado = 0;

                DataTable TablaModalidad = Modalidad.Buscar();

                String NombreModalidad = "";

                if (TablaModalidad.Rows.Count > 0)
                {
                    NombreModalidad = TablaModalidad.Rows[0]["modalidad"].ToString();
                }

                ListItem ItemPeriodo = new ListItem((TablaPeriodo.Rows[i]["numeroPeriodo"].ToString() + " " + NombreModalidad + " " + TablaPeriodo.Rows[i]["anyo"].ToString()), TablaPeriodo.Rows[i]["idPeriodo"].ToString());
                drpPeriodo.Items.Add(ItemPeriodo);
            }
        }

        protected void rblTodosProfesores_SelectedIndexChanged(object sender, EventArgs e)
        {
            PanelTablaTodosProfesores.Visible = false;
            if (rblTodosProfesores.SelectedIndex == 0)
            {
                txtCedula.Visible = false;
                drpPeriodo.Visible = true;
                drpPeriodo.SelectedIndex = 0;
                drpPeriodo.Focus();
            }
            else
            {
                txtCedula.Text = "";
                txtCedula.Visible = true;
                drpPeriodo.Visible = false;
                txtCedula.Focus();
            }
        }

        private void cargarEvaluacion()
        {
            PanelTablaTodosProfesores.Visible = false;
            PanelTablaUnProfesor.Visible = false;
            cEvaluacionProfesorNegocios EvaluacionProfesor = new cEvaluacionProfesorNegocios(1, "A", 2, "B");
            EvaluacionProfesor.Eliminado = 0;
            EvaluacionProfesor.Fk_idPeriodo = Int16.Parse(drpPeriodo.SelectedValue);
            DataTable TablaEvaluacion = EvaluacionProfesor.BuscarTodos();


            if (TablaEvaluacion.Rows.Count > 0)
            {
                dgEvaluacionProfesor.DataSource = TablaEvaluacion;
                dgEvaluacionProfesor.DataBind();
                PanelTablaTodosProfesores.Visible = true;
            }
        }

        private void cargarEvaluacionUnProfesor()
        {
            PanelTablaTodosProfesores.Visible = false;
            PanelTablaUnProfesor.Visible = false;
            cEvaluacionProfesorNegocios EvaluacionProfesor = new cEvaluacionProfesorNegocios(1, "A", 2, "B");
            EvaluacionProfesor.Eliminado = 0;
            DataTable TablaEvaluacion = EvaluacionProfesor.BuscarUno(txtCedula.Text);


            if (TablaEvaluacion.Rows.Count > 0)
            {
                dgEvaluacionUnProfesor.DataSource = TablaEvaluacion;
                dgEvaluacionUnProfesor.DataBind();
                PanelTablaUnProfesor.Visible = true;
            }
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            if (rblTodosProfesores.SelectedIndex == 0) //Todos los profesores
            {
                Validate("vgConsultarEvaluacionProfesorTodos");

                if (Page.IsValid)
                {
                    cargarEvaluacion();
                }
            }
            else
            {
                Validate("vgConsultarEvaluacionProfesorUno");

                if (Page.IsValid)
                {
                    cargarEvaluacionUnProfesor();
                }
            }
        }

        protected void dgEvaluacionProfesor_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdEvaluacion = Int16.Parse(e.Item.Cells[0].Text);

                cEvaluacionProfesorNegocios Evaluacion = new cEvaluacionProfesorNegocios(1, "A", 2, "B");
                Evaluacion.IdEvaluacionProfesor = IdEvaluacion;

                DataTable TablaEvaluacion = Evaluacion.SeleccionarUno();
                if (TablaEvaluacion.Rows.Count > 0)
                {
                    Evaluacion.Eliminado = 1;
                    Evaluacion.Actualizar();
                }

                cargarEvaluacion();
            }
        }

        protected void dgEvaluacionUnProfesor_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdEvaluacion = Int16.Parse(e.Item.Cells[0].Text);

                cEvaluacionProfesorNegocios Evaluacion = new cEvaluacionProfesorNegocios(1, "A", 2, "B");
                Evaluacion.IdEvaluacionProfesor = IdEvaluacion;

                DataTable TablaEvaluacion = Evaluacion.SeleccionarUno();
                if (TablaEvaluacion.Rows.Count > 0)
                {
                    Evaluacion.Eliminado = 1;
                    Evaluacion.Actualizar();
                }

                cargarEvaluacionUnProfesor();
            }
        }
    }
}