using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Franja_Horaria
{
    public partial class Agregar_FranjaHoraria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Validate("vgRegistrarFranjaHoraria");

            if (Page.IsValid)
            {
                cFranjaHorariaNegocios FranjaHoraria = new cFranjaHorariaNegocios(1, "A", 2, "B");
                FranjaHoraria.CodigoFranja = Int32.Parse(txtCodigo.Text);
            //    FranjaHoraria.HoraInicio = Convert.ToDateTime(txtHoraInicio.Text);
           //     FranjaHoraria.HoraFinal = Convert.ToDateTime(txtHoraFinal.Text);
                FranjaHoraria.Eliminado = 0;
                FranjaHoraria.Insertar();

                Int16 IdFranjaHoraria = -1;

                DataTable TablaFranjaHoraria = FranjaHoraria.Buscar();

                if (TablaFranjaHoraria.Rows.Count > 0)
                {
                    IdFranjaHoraria = Int16.Parse(TablaFranjaHoraria.Rows[0]["idFranjaHoraria"].ToString());
                }

                if (IdFranjaHoraria != -1)
                {
                    cDiasFranjaNegocios dias;
                    if (cbLunes.Checked)
                    {
                        dias = new cDiasFranjaNegocios(1, "A", 2, "B");
                        dias.Dia = "L";
                        dias.Fk_idFranjaHoraria = IdFranjaHoraria;
                        dias.Insertar();
                    }

                    if (cbMartes.Checked)
                    {
                        dias = new cDiasFranjaNegocios(1, "A", 2, "B");
                        dias.Dia = "K";
                        dias.Fk_idFranjaHoraria = IdFranjaHoraria;
                        dias.Insertar();
                    }
                    if (cbMiercoles.Checked)
                    {
                        dias = new cDiasFranjaNegocios(1, "A", 2, "B");
                        dias.Dia = "M";
                        dias.Fk_idFranjaHoraria = IdFranjaHoraria;
                        dias.Insertar();
                    }
                    if (cbJueves.Checked)
                    {
                        dias = new cDiasFranjaNegocios(1, "A", 2, "B");
                        dias.Dia = "J";
                        dias.Fk_idFranjaHoraria = IdFranjaHoraria;
                        dias.Insertar();
                    }
                    if (cbViernes.Checked)
                    {
                        dias = new cDiasFranjaNegocios(1, "A", 2, "B");
                        dias.Dia = "J";
                        dias.Fk_idFranjaHoraria = IdFranjaHoraria;
                        dias.Insertar();
                    }

               

                }
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "agregar();", true);

               // Response.Redirect("Consultar_FranjaHoraria.aspx");
            }
        }
    }
}