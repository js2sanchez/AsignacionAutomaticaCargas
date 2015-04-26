using ITCR.AsignacionAutomaticaCargas.Negocios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Periodo
{
    public partial class Agregar_Periodo : System.Web.UI.Page
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
            cargarModalidad();

        }

        public void cargarModalidad()
        {
            drpModalidad.Items.Clear();

            cModalidadNegocios Modalidad = new cModalidadNegocios(1, "A", 2, "B");

            DataTable TablaModalidad = Modalidad.Buscar();

            ListItem ItemBaseModalidad = new ListItem("Modalidad", "0");
            drpModalidad.Items.Add(ItemBaseModalidad);

            for (int i = 0; i < TablaModalidad.Rows.Count; i++)
            {
                ListItem ItemModalidad = new ListItem(TablaModalidad.Rows[i]["modalidad"].ToString(), TablaModalidad.Rows[i]["idModalidad"].ToString());
                drpModalidad.Items.Add(ItemModalidad);
            }
        }

        


        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Validate("vgRegistrarPeriodo");

            if (Page.IsValid)
            {
                cPeriodoNegocios Periodo = new cPeriodoNegocios(1, "A", 2, "B");
                Periodo.Anyo =  Convert.ToInt32(txtAnno.Text);
                Periodo.NumeroPeriodo =  Convert.ToInt32(txtNumeroPeriodo.Text);
                Periodo.Fk_idModalidad = Int32.Parse(drpModalidad.SelectedValue);
                Periodo.Eliminado = 0;
                Periodo.Insertar();

                Response.Redirect("Consultar_Periodo.aspx");
            }
        }

    }
}