using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz
{
    public partial class ConsultarSedes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            String Codigo = txtCodigo.Text;
            String Nombre = txtNombre.Text;

            cSedeNegocios Sede = new cSedeNegocios(1, "A", 2, "B");
            Sede.CodigoSede = Codigo;
            Sede.NombreSede = Nombre;
            Sede.Eliminado = 0;

            Sede.Insertar();

            Response.Redirect("ConsultarSedes.aspx");
        }
    }
}