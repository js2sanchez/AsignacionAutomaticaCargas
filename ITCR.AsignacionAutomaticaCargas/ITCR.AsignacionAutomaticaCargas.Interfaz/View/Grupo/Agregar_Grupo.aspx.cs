using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Grupo
{
    public partial class Agregar_Grupo : System.Web.UI.Page
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
            cargarDepartamento();
            cargarHorario();
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

        public void cargarHorario()
        {
            drpHorario.Items.Clear();

            cFranjaHorariaNegocios Horario = new cFranjaHorariaNegocios(1, "A", 2, "B");

            DataTable TablaHorario = Horario.Buscar();

            ListItem ItemBaseHoario = new ListItem("Horario", "0");

            drpHorario.Items.Add(ItemBaseHoario);

            for (int i = 0; i < TablaHorario.Rows.Count; i++)
            {
                ListItem ItemHorario = new ListItem(TablaHorario.Rows[i]["horaInicio"].ToString() +" - " + TablaHorario.Rows[i]["horaFinal"].ToString(), TablaHorario.Rows[i]["idFranjaHoraria"].ToString());
                drpHorario.Items.Add(ItemHorario);
            }
        }

        public void cargarDepartamento()
        {
            drpDepartamento.Items.Clear();

            cDepartamentoNegocios Departamento = new cDepartamentoNegocios(1, "A", 2, "B");

            DataTable TablaDepartamento = Departamento.Buscar();

            ListItem ItemBaseDepartamento = new ListItem("Departamento", "0");

            drpDepartamento.Items.Add(ItemBaseDepartamento);

            for (int i = 0; i < TablaDepartamento.Rows.Count; i++)
            {
                ListItem ItemDepartamento = new ListItem(TablaDepartamento.Rows[i]["nombreDepartamento"].ToString(), TablaDepartamento.Rows[i]["idDepartamento"].ToString());
                drpDepartamento.Items.Add(ItemDepartamento);
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e) {
            Validate("vgAgregarGrupo");

            if (Page.IsValid)
            {
                cGrupoNegocios Grupo = new cGrupoNegocios(1, "A", 2, "B");

                //Datos generales
                Grupo.NumeroGrupo = Int32.Parse(txtNumeroGrupo.Text);
                Grupo.Eliminado = 0;
                Grupo.Fk_idCurso = Int32.Parse(drpCurso.SelectedValue);
                Grupo.Fk_idDepartamento = Int32.Parse(drpDepartamento.SelectedValue);
                Grupo.Fk_idFranjaHoraria = Int32.Parse(drpHorario.SelectedValue);
                Grupo.Fk_idPeriodo = Int32.Parse(drpPeriodo.SelectedValue);
                Grupo.Fk_idSede = Int32.Parse(drpSede.SelectedValue);
                Grupo.Estado = 0; //Significa que no esta asignado

                //Agregar curso
                Grupo.Insertar();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "agregar();", true);
            }
        }
    }
}