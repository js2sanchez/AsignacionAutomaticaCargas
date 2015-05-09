using ITCR.AsignacionAutomaticaCargas.Negocios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Profesor
{
    public partial class Registrar_Evaluacion_Profesor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarPeriodo();
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
                ListItem ItemPeriodo = new ListItem((TablaPeriodo.Rows[i]["numeroPeriodo"].ToString() + " " + TablaPeriodo.Rows[i]["anyo"].ToString()), TablaPeriodo.Rows[i]["idPeriodo"].ToString());
                drpPeriodo.Items.Add(ItemPeriodo);
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Validate("vgRegistrarEvaluacionProfesor");

            if (Page.IsValid)
            {
                cUsuarioNegocios Usuario = new cUsuarioNegocios(1, "A", 2, "B");
                Usuario.Eliminado = 0;
               Usuario.Fk_tipoUsuario = 2;
                Usuario.CedulaIdentidad = txtCedulaIdentidad.Text;
          //      Usuario.IdUsuario = 5;

                DataTable TablaUsuario = Usuario.Buscar();

                if (TablaUsuario.Rows.Count > 0)
                {

                    DateTime Fecha = DateTime.Today;
   
                    
                       Usuario.IdUsuario = Int32.Parse(TablaUsuario.Rows[0]["idUsuario"].ToString());
                    //Agregar Evaluacion
                    cProfesorNegocios Profesor = new cProfesorNegocios(1, "A", 2, "B");
                    Profesor.Eliminado = 0;
                    Profesor.Fk_idUsuario = Usuario.IdUsuario;

                    DataTable TablaProfesor = Profesor.Buscar();
                    if (TablaProfesor.Rows.Count > 0)
                    {
                        cEvaluacionProfesorNegocios Evaluacion = new cEvaluacionProfesorNegocios(1, "A", 2, "B");
                        // Evaluacion.Fecha = 
                        Evaluacion.Evaluacion = Decimal.Parse(txtCalificacion.Text);
                        Evaluacion.Fk_idPeriodo = Int32.Parse(drpPeriodo.SelectedValue);
                        Evaluacion.Fk_idProfesor = Int32.Parse(TablaProfesor.Rows[0]["idProfesor"].ToString());
                        Evaluacion.Fecha = Fecha;
                        Evaluacion.Eliminado = 0;
                        Evaluacion.Insertar();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "agregar();", true);
                    }
                    else { 
                        //Profesor invalido
                       // ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "profesorInvalido();", true);
                    }
                }
                else { 
                    //Profesor invalido
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "profesorInvalido();", true);
                }
              
            }
        }
    }
}