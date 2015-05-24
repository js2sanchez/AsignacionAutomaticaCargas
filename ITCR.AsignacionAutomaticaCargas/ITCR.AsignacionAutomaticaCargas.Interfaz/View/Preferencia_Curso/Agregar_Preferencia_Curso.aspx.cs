using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Preferencia_Curso
{
    public partial class Agregar_Preferencia_Curso : System.Web.UI.Page
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
            cargarPrioridad();
            cargarCurso();
            cargarSede();
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

        public void cargarPrioridad()
        {
            drpPrioridad.Items.Clear();

            cTipoPrioridadNegocios Prioridad = new cTipoPrioridadNegocios(1, "A", 2, "B");

            DataTable TablaPrioridad = Prioridad.Buscar();

            ListItem ItemBasePrioridad = new ListItem("Prioridad", "0");

            drpPrioridad.Items.Add(ItemBasePrioridad);

            for (int i = 0; i < TablaPrioridad.Rows.Count; i++)
            {
                ListItem ItemPrioridad = new ListItem(TablaPrioridad.Rows[i]["tipoPrioridad"].ToString(), TablaPrioridad.Rows[i]["idTipoPrioridad"].ToString());
                drpPrioridad.Items.Add(ItemPrioridad);
            }
        }

        public void cargarSede()
        {
            drpSede.Items.Clear();

            cSedeNegocios Sede = new cSedeNegocios(1, "A", 2, "B");

            DataTable TablaSede = Sede.Buscar();

            ListItem ItemBaseSede = new ListItem("Sede", "0");

            drpSede.Items.Add(ItemBaseSede);

            for (int i = 0; i < TablaSede.Rows.Count; i++)
            {
                ListItem ItemSede = new ListItem(TablaSede.Rows[i]["nombreSede"].ToString(), TablaSede.Rows[i]["idSede"].ToString());
                drpSede.Items.Add(ItemSede);
            }
        }

        public void cargarCurso()
        {
            drpCurso.Items.Clear();

            cCursoNegocios Curso = new cCursoNegocios(1, "A", 2, "B");

            DataTable TablaCurso = Curso.Buscar();

            ListItem ItemBaseCurso = new ListItem("Curso", "0");

            drpCurso.Items.Add(ItemBaseCurso);

            for (int i = 0; i < TablaCurso.Rows.Count; i++)
            {
                ListItem ItemCurso = new ListItem(TablaCurso.Rows[i]["nombreCurso"].ToString(), TablaCurso.Rows[i]["idCurso"].ToString());
                drpCurso.Items.Add(ItemCurso);
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

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Validate("vgAgregarPreferenciaCurso");

            if (Page.IsValid)
            {
                cPreferenciaCursoNegocios PreferenciaCurso = new cPreferenciaCursoNegocios(1, "A", 2, "B");
                PreferenciaCurso.Fk_idCurso = Int16.Parse(drpCurso.SelectedValue);
                PreferenciaCurso.Fk_idSede = Int16.Parse(drpSede.SelectedValue);
                PreferenciaCurso.Fk_idProfesor = getIdProfesor();
                PreferenciaCurso.Fk_idTipoPrioridad = Int16.Parse(drpPrioridad.SelectedValue);
                PreferenciaCurso.Fk_idPeriodo = Int16.Parse(drpPeriodo.SelectedValue);
                PreferenciaCurso.Eliminado = 0;

                PreferenciaCurso.Insertar();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "agregar();", true);
            }
        }
    }
}