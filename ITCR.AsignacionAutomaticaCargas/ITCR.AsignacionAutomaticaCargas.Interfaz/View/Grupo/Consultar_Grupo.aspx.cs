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
    public partial class Consultar_Grupo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                cargarTablaGrupos();
            }
        }

        private void cargarTablaGrupos()
        {
            cGrupoNegocios Grupo = new cGrupoNegocios(1, "A", 2, "B");
            Grupo.Eliminado = 0;
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

        protected void dgGrupo_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdGrupo = Int16.Parse(e.Item.Cells[0].Text);

                cGrupoNegocios Grupo = new cGrupoNegocios(1, "A", 2, "B");

                Grupo.IdGrupo = IdGrupo;
                DataTable TablaGrupo = Grupo.SeleccionarUno();

                if (TablaGrupo.Rows.Count > 0)
                {
                    Grupo.Eliminado = 1;
                    Grupo.Actualizar();
                }

                Response.Redirect("Consultar_Grupo.aspx");
            }

            if (e.CommandName == "Editar")
            {
            }
        }
    }
}