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
    public partial class Agregar_Curso : System.Web.UI.Page
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
            cargarGradoAcademico();
        }

        public void cargarGradoAcademico()
        {
            drpGradoAcademico.Items.Clear();

            cGradoAcademicoNegocios GradoAcademico = new cGradoAcademicoNegocios(1, "A", 2, "B");

            DataTable TablaGradoAcademico = GradoAcademico.Buscar();

            ListItem ItemBaseGradoAcademico = new ListItem("Grado Academico", "0");

            drpGradoAcademico.Items.Add(ItemBaseGradoAcademico);

            for (int i = 0; i < TablaGradoAcademico.Rows.Count; i++)
            {
                ListItem ItemDepartamento = new ListItem(TablaGradoAcademico.Rows[i]["gradoAcademico"].ToString(), TablaGradoAcademico.Rows[i]["idGradoAcademico"].ToString());
                drpGradoAcademico.Items.Add(ItemDepartamento);
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Validate("vgAgregarCurso");

            if (Page.IsValid)
            {
                cCursoNegocios Curso = new cCursoNegocios(1, "A", 2, "B");

                //Datos generales
                Curso.CodigoCurso = txtCodigo.Text;
                Curso.NombreCurso = txtNombre.Text;
                Curso.Eliminado = 0;
                Curso.Fk_idGradoAcademinico = Int32.Parse(drpGradoAcademico.SelectedValue);

                //Agregar curso
                Curso.Insertar();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "agregar();", true);
            }
        }

    }
}