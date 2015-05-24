using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;
using ITCR.AsignacionAutomaticaCargas.Base;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Preferencia_Curso
{
    public partial class Consultar_Preferencia_Curso : System.Web.UI.Page
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

        public void cargarTablaPreferenciaCursos()
        {
            cPreferenciaCursoNegocios PreferenciaCurso = new cPreferenciaCursoNegocios(1, "A", 2, "B");
            PreferenciaCurso.Eliminado = 0;
            PreferenciaCurso.Fk_idPeriodo = Int16.Parse(drpPeriodo.SelectedValue);
            PreferenciaCurso.Fk_idProfesor = getIdProfesor();
            DataTable TablaPreferenciaCurso = PreferenciaCurso.BuscarDetallado();

            if (TablaPreferenciaCurso.Rows.Count > 0)
            {
                dgPreferenciaCurso.DataSource = TablaPreferenciaCurso;
                dgPreferenciaCurso.DataBind();
            }
        }



        protected void dgPreferenciaCurso_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdPreferenciaCurso = Int16.Parse(e.Item.Cells[0].Text);

                cPreferenciaCursoNegocios Preferencia = new cPreferenciaCursoNegocios(1, "A", 2, "B");

                Preferencia.IdPreferenciaCurso = IdPreferenciaCurso;
                DataTable TablaPreferencia = Preferencia.SeleccionarUno();


                if (TablaPreferencia.Rows.Count > 0)
                {
                    Preferencia.Eliminado = 1;
                    Preferencia.Actualizar();
                }
                
                Response.Redirect("Consultar_Preferencia_Curso.aspx");
            }

            if (e.CommandName == "Editar")
            {
            }
        }

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            Validate("vgConsultarPreferenciaCurso");

            if (Page.IsValid)
            {
                cargarTablaPreferenciaCursos();
            }
        }
    }
}