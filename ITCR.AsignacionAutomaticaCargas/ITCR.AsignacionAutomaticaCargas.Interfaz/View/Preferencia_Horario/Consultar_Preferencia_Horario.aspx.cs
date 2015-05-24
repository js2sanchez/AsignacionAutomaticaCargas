using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Preferencia_Horario
{
    public partial class Consultar_Preferencia_Horario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarTablaGrupos();
            }
        }

        public void cargarTablaGrupos()
        {
            cPreferenciaHorariosNegocios Horario = new cPreferenciaHorariosNegocios(1, "A", 2, "B");
            Horario.Eliminado = 0;
            DataTable TablaHorario = Horario.Buscar();

            if (TablaHorario.Rows.Count > 0)
            {
                dgPreferenciaHorario.DataSource = TablaHorario;
                dgPreferenciaHorario.DataBind();

                foreach (DataGridItem Fila in dgPreferenciaHorario.Items)
                {
                    Fila.Cells[1].Text = obtenerPeriodo(Int32.Parse(Fila.Cells[1].Text));
                    Fila.Cells[2].Text = obtenerHorario(Int32.Parse(Fila.Cells[2].Text));
                }
            }
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

        protected void dgPreferenciaHorario_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                Int16 IdPreferenciaHorario = Int16.Parse(e.Item.Cells[0].Text);

                cPreferenciaHorariosNegocios Horario = new cPreferenciaHorariosNegocios(1, "A", 2, "B");

                Horario.IdPreferenciaHorarios = IdPreferenciaHorario;
                DataTable Tabla = Horario.SeleccionarUno();

                if (Tabla.Rows.Count > 0)
                {
                    Horario.Eliminado = 1;
                    Horario.Actualizar();
                }

                Response.Redirect("Consultar_Preferencia_Horario.aspx");
            }

            if (e.CommandName == "Editar")
            {
            }
        }
    }
}