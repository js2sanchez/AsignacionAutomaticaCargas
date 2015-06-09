using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;
using ITCR.AsignacionAutomaticaCargas.Base;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Procesar
{
    public partial class Agregar_Procesar : System.Web.UI.Page
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
    }
}