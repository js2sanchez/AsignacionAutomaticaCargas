using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ITCR.AsignacionAutomaticaCargas.Negocios;

namespace ITCR.AsignacionAutomaticaCargas.Interfaz.View.Sede
{
    public partial class Agregar_Sede : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Codigo
            }
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            cSedeNegocios Sede = new cSedeNegocios(1, "A", 2, "B");
            Sede.CodigoSede = txtCodigo.Text;
            Sede.NombreSede = txtNombre.Text;
            Sede.Eliminado = 0;
            Sede.Insertar();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "agregar();", true);
        }
    }
}