using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Preferencia_Horaria
{
    public partial class Agregar_Preferencia_Horaria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarDatos();
            }
        }

        public void cargarDatos()
        {
            cargarHorario();
            cargarPeriodo();
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

        public void cargarHorario()
        {
            drpHorario.Items.Clear();

            cFranjaHorariaNegocios Horario = new cFranjaHorariaNegocios(1, "A", 2, "B");

            DataTable TablaHorario = Horario.Buscar();

            ListItem ItemBaseHoario = new ListItem("Horario", "0");

            drpHorario.Items.Add(ItemBaseHoario);

            for (int i = 0; i < TablaHorario.Rows.Count; i++)
            {
                Int16 IdFranjaHoraria = Int16.Parse(TablaHorario.Rows[i]["idFranjaHoraria"].ToString());

                cDiasFranjaNegocios DiasFranja = new cDiasFranjaNegocios(1, "A", 2, "B");
                DiasFranja.Fk_idFranjaHoraria = IdFranjaHoraria;
                DataTable TablaDiasFranja = DiasFranja.Buscar();

                String Dias = "";

                if (TablaDiasFranja.Rows.Count > 0)
                {
                    Dias = TablaDiasFranja.Rows[0]["dia"].ToString();
                }

                for (int j = 1; j < TablaDiasFranja.Rows.Count; j++)
                {
                    Dias = Dias + "," + TablaDiasFranja.Rows[j]["dia"].ToString();
                }

                ListItem ItemHorario = new ListItem(Dias + " " + TablaHorario.Rows[i]["horaInicio"].ToString() + " - " + TablaHorario.Rows[i]["horaFinal"].ToString(), TablaHorario.Rows[i]["idFranjaHoraria"].ToString());
                drpHorario.Items.Add(ItemHorario);
            }
        }

        public Int16 getIdProfesor()
        {
            cUsuarioNegocios Usuario = new cUsuarioNegocios(1, "A", 2, "B");
            Usuario.Login = Session["Login"].ToString();

            DataTable TablaUsuario = Usuario.Buscar();

            Int16 IdUsuario = 0;

            if (TablaUsuario.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["idUsuario"].ToString());
            }

            cProfesorNegocios Profesor = new cProfesorNegocios(1, "A", 2, "B");
            Profesor.Fk_idUsuario = IdUsuario;

            DataTable TablaProfesor = Profesor.Buscar();

            Int16 IdProfesor = 0;
            if (TablaProfesor.Rows.Count > 0)
            {
                IdProfesor = Int16.Parse(TablaProfesor.Rows[0]["idProfesor"].ToString());
            }

            return IdProfesor;
        } 

        protected void btnAgregar_Click(object sender, EventArgs e) {
            Validate("vgAgregarPreferenciaHorario");

            if (Page.IsValid)
            {
                cPreferenciaHorariosNegocios Horario = new cPreferenciaHorariosNegocios(1, "A", 2, "B");

                //Datos generales
                Horario.Eliminado = 0;
                Horario.Fk_idFranjaHoraria = Int32.Parse(drpHorario.SelectedValue);
                Horario.Fk_idPeriodo = Int32.Parse(drpPeriodo.SelectedValue);
                Horario.Fk_idProfesor = getIdProfesor();

                //Agregar curso
                Horario.Insertar();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "agregar();", true);
            }
        }
    }
}