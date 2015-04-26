using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Curso
{
    public partial class Consultar_Curso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                cargarTablaCursos();
            }
        }

        private void cargarTablaCursos()
        {
            cCursoNegocios Curso = new cCursoNegocios(1, "A", 2, "B");
            Curso.Eliminado = 0;
            DataTable TablaCursos = Curso.Buscar();

            if (TablaCursos.Rows.Count > 0)
            {
                dgCursos.DataSource = TablaCursos;
                dgCursos.DataBind();

                foreach (DataGridItem Fila in dgCursos.Items)
                {
                    Fila.Cells[3].Text = obtenerGradoAcademico(Int32.Parse(Fila.Cells[3].Text));
                }
            }
        }

        private string obtenerGradoAcademico(int pId){
            cGradoAcademicoNegocios Grado = new cGradoAcademicoNegocios(1, "A", 2, "B");
            Grado.IdGradoAcademico = pId;
            DataTable TablaGradoAcademico = Grado.Buscar();
            string NombreGradoAcademico = "";

            if (TablaGradoAcademico.Rows.Count > 0) {
                NombreGradoAcademico = TablaGradoAcademico.Rows[0]["gradoAcademico"].ToString();
            }

            return NombreGradoAcademico;
        }

        protected void dgCursos_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdCurso = Int16.Parse(e.Item.Cells[0].Text);

                cCursoNegocios Curso = new cCursoNegocios(1, "A", 2, "B");

                Curso.IdCurso = IdCurso;
                DataTable TablaCurso = Curso.SeleccionarUno();

                if (TablaCurso.Rows.Count > 0)
                {
                    Curso.Eliminado = 1;
                    Curso.Actualizar();
                }                
             

                Response.Redirect("Consultar_Curso.aspx");
            }

            if (e.CommandName == "Editar")
            {
            }
        }

    }
}