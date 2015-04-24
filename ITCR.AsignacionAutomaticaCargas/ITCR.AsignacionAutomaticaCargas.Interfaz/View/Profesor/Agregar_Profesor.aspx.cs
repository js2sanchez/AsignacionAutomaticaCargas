using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Profesor
{
    public partial class Profesor_Agregar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                cargarDatos();
            }
        }

        public void cargarDatos()
        {
            cargarDepartamentos();
            cargarTipoJornada();
            cargarTiposProfesor();
        }

        public void cargarDepartamentos()
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

        public void cargarTipoJornada()
        {
            drpTipoJornada.Items.Clear();

            cJornadaLaboralNegocios TipoJornada = new cJornadaLaboralNegocios(1, "A", 2, "B");

            DataTable TablaTipoJornada = TipoJornada.Buscar();

            ListItem ItemBaseTipoJornada = new ListItem("Tipo jornada", "0");
            drpTipoJornada.Items.Add(ItemBaseTipoJornada);

            for (int i = 0; i < TablaTipoJornada.Rows.Count; i++)
            {
                ListItem ItemTipoJornada = new ListItem(TablaTipoJornada.Rows[i]["tipoJornadaLaboral"].ToString(), TablaTipoJornada.Rows[i]["idJornada"].ToString());
                drpTipoJornada.Items.Add(ItemTipoJornada);
            }
        }

        public void cargarTiposProfesor()
        {
            drpTipoProfesor.Items.Clear();

            cTipoProfesorNegocios TipoProfesor = new cTipoProfesorNegocios(1, "A", 2, "B");

            DataTable TablaTipoProfesor = TipoProfesor.Buscar();

            ListItem ItemBaseTipoProfesor = new ListItem("Tipo profesor", "0");
            drpTipoProfesor.Items.Add(ItemBaseTipoProfesor);

            for (int i = 0; i < TablaTipoProfesor.Rows.Count; i++)
            {
                ListItem ItemTipoProfesor = new ListItem(TablaTipoProfesor.Rows[i]["tipoProfesor"].ToString(), TablaTipoProfesor.Rows[i]["idTipoProfesor"].ToString());
                drpTipoProfesor.Items.Add(ItemTipoProfesor);
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Validate("vgRegistrarProfesor");

            if (Page.IsValid)
            {
            }
        }
    }
}