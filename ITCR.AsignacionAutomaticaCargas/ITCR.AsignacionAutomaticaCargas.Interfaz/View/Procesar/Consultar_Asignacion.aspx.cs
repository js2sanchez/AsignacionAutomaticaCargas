using ITCR.AsignacionAutomaticaCargas.Negocios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Asignacion
{
    public partial class Consultar_Asignacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["procesar"] != null)
                {
                    Boolean aprobacion = Boolean.Parse(Session["procesar"].ToString());
                    if (aprobacion)
                    {
                        PanelTablaAsignacion.Visible = true;
                        drpPeriodo.Visible = false;
                        drpPeriodo.SelectedIndex = 0;
                        drpPeriodo.Focus();
                        btnConsultar.Visible = false;
                        if (Session["periodo"] != null)
                        {
                            cargarGrupos(Int32.Parse(Session["periodo"].ToString()));
                         }
                    }
                    else
                    {

                        // Estadistica.IdPeriodo = periodo;
                        cargarPeriodo();
                        PanelTablaAsignacion.Visible = false;
                        drpPeriodo.Visible = true;
                        drpPeriodo.SelectedIndex = 0;
                        drpPeriodo.Focus();
                    }
                }
                else { 
                
               // Estadistica.IdPeriodo = periodo;
                cargarPeriodo();
                PanelTablaAsignacion.Visible = false;
                drpPeriodo.Visible = true;
                drpPeriodo.SelectedIndex = 0;
                drpPeriodo.Focus();
            }
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


        private void cargarAsignacion()
        {
            cargarGrupos(Int32.Parse(drpPeriodo.SelectedValue));
        }

        private void cargarGrupos(Int32 idGrupo)
        {
            cGrupoNegocios Grupo = new cGrupoNegocios(1, "A", 2, "B");
            Grupo.Eliminado = 0;
            Grupo.Fk_idPeriodo = idGrupo;

            DataTable TablaGrupo = Grupo.Buscar();

            if (TablaGrupo.Rows.Count > 0)
            {
                dgGrupos.DataSource = TablaGrupo;
                dgGrupos.DataBind();

                foreach (DataGridItem Fila in dgGrupos.Items)
                {
                    Fila.Cells[2].Text = obtenerDepartamento(Int32.Parse(Fila.Cells[2].Text));
                    Fila.Cells[3].Text = obtenerHorario(Int32.Parse(Fila.Cells[3].Text));
                    Fila.Cells[4].Text = obtenerCurso(Int32.Parse(Fila.Cells[4].Text));
                    Fila.Cells[5].Text = obtenerPeriodo(Int32.Parse(Fila.Cells[5].Text));
                    Fila.Cells[6].Text = obtenerSede(Int32.Parse(Fila.Cells[6].Text));
                    try
                    {
                        Fila.Cells[7].Text = obtenerProfesor(Int32.Parse(Fila.Cells[7].Text));
                    }
                    catch { }

                }
            }
        }

        private string obtenerDepartamento(int pId)
        {
            cDepartamentoNegocios Departamento = new cDepartamentoNegocios(1, "A", 2, "B");
            Departamento.IdDepartamento = pId;
            DataTable Tabla = Departamento.Buscar();
            string Nombre = "";

            if (Tabla.Rows.Count > 0)
            {
                Nombre = Tabla.Rows[0]["nombreDepartamento"].ToString();
            }

            return Nombre;
        }

        private string obtenerHorario(int pId)
        {
            cFranjaHorariaNegocios Horario = new cFranjaHorariaNegocios(1, "A", 2, "B");
            Horario.IdFranjaHoraria = pId;
            DataTable Tabla = Horario.Buscar();
            string Nombre = "";

            Int16 IdFranjaHoraria = Int16.Parse(pId.ToString());

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

            if (Tabla.Rows.Count > 0)
            {
                Nombre = Dias + " " + Tabla.Rows[0]["horaInicio"].ToString() + "-" + Tabla.Rows[0]["horaFinal"].ToString();
            }

            return Nombre;
        }

        private string obtenerCurso(int pId)
        {
            cCursoNegocios Curso = new cCursoNegocios(1, "A", 2, "B");
            Curso.IdCurso = pId;
            DataTable Tabla = Curso.Buscar();
            string Nombre = "";

            if (Tabla.Rows.Count > 0)
            {
                Nombre = Tabla.Rows[0]["nombreCurso"].ToString();
            }

            return Nombre;
        }

        private string obtenerPeriodo(int pId)
        {
            cPeriodoNegocios Periodo = new cPeriodoNegocios(1, "A", 2, "B");
            Periodo.IdPeriodo = pId;
            DataTable Tabla = Periodo.Buscar();
            string Nombre = "";

            if (Tabla.Rows.Count > 0)
            {
                cModalidadNegocios Modalidad = new cModalidadNegocios(1, "A", 2, "B");
                Int16 IdModalidad = Int16.Parse(Tabla.Rows[0]["fk_idModalidad"].ToString());
                Modalidad.IdModalidad = IdModalidad;
                DataTable TablaModalidad = Modalidad.Buscar();
                String NombreModalidad = "";

                if (TablaModalidad.Rows.Count > 0)
                {
                    NombreModalidad = TablaModalidad.Rows[0]["modalidad"].ToString();
                }

                Nombre = Tabla.Rows[0]["numeroPeriodo"].ToString() + " " + NombreModalidad + " " + Tabla.Rows[0]["anyo"].ToString();
            }

            return Nombre;
        }

        private string obtenerSede(int pId)
        {
            cSedeNegocios Sede = new cSedeNegocios(1, "A", 2, "B");
            Sede.IdSede = pId;
            DataTable Tabla = Sede.Buscar();
            string Nombre = "";

            if (Tabla.Rows.Count > 0)
            {
                Nombre = Tabla.Rows[0]["nombreSede"].ToString();
            }

            return Nombre;
        }

        private string obtenerProfesor(int pId)
        {
            cProfesorNegocios Profesor = new cProfesorNegocios(1, "A", 2, "B");
            cUsuarioNegocios Usuario = new cUsuarioNegocios(1, "A", 2, "B");
            Profesor.IdProfesor = pId;
            DataTable TablaProfesor = Profesor.Buscar();
            int idUsuario;
            string Nombre = "";

            if (TablaProfesor.Rows.Count > 0)
            {
                idUsuario = Int16.Parse(TablaProfesor.Rows[0]["fk_idUsuario"].ToString());
                Usuario.IdUsuario = idUsuario;
                DataTable TablaUsuario = Usuario.Buscar();
                if (TablaUsuario.Rows.Count > 0)
                {
                    Nombre = TablaUsuario.Rows[0]["nombre"].ToString() + " " + TablaUsuario.Rows[0]["primerApellido"].ToString();
                } 
                
            }

            return Nombre;
        }
       

        protected void btnConsultar_Click(object sender, EventArgs e)
        {
            PanelTablaAsignacion.Visible = true;
            cargarAsignacion();
        }
        

        protected void dgGrupo_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
               

            }
        }
    }
}