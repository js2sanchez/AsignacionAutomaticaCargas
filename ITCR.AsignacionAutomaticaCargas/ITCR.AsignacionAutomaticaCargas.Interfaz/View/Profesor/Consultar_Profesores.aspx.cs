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
    public partial class Consultar_Profesores : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                cargarTablaProfesores();
            }
        }

        private void cargarTablaProfesores()
        {
            cProfesorNegocios Profesor = new cProfesorNegocios(1, "A", 2, "B");
            Profesor.Eliminado = 0;
            DataTable TablaProfesores = Profesor.BuscarTodos();

            if (TablaProfesores.Rows.Count > 0)
            {
                dgProfesores.DataSource = TablaProfesores;
                dgProfesores.DataBind();
            }
        }

        protected void dgProfesores_ItemCommand(object source, DataGridCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                //Usuario
                Int16 IdUsuario = Int16.Parse(e.Item.Cells[0].Text);

                cUsuarioNegocios Usuario = new cUsuarioNegocios(1, "A", 2, "B");
                Usuario.IdUsuario = IdUsuario;

                DataTable TablaUsuario = Usuario.SeleccionarUno();

                if (TablaUsuario.Rows.Count > 0)
                {
                    Usuario.Eliminado = 1;
                    Usuario.Actualizar();
                }

                //Profesor
                Int16 IdProfesor = Int16.Parse(e.Item.Cells[1].Text);

                cProfesorNegocios Profesor = new cProfesorNegocios(1, "A", 2, "B");
                Profesor.IdProfesor = IdProfesor;

                DataTable TablaProfesor = Profesor.SeleccionarUno();

                if (TablaProfesor.Rows.Count > 0)
                {
                    Profesor.Eliminado = 1;
                    Profesor.Actualizar();
                }

                //Contactos
                cContactoNegocios Telefono = new cContactoNegocios(1, "A", 2, "B");
                Telefono.Fk_idUsuario = IdUsuario;
                Telefono.Fk_idtipoContacto = 1;

                DataTable TablaTelefono = Telefono.Buscar();

                if (TablaTelefono.Rows.Count > 0)
                {
                    Telefono.IdContacto = Int16.Parse(TablaTelefono.Rows[0]["idContacto"].ToString());
                    Telefono.SeleccionarUno();
                    Telefono.Eliminado = 1;
                    Telefono.Actualizar();
                }


                cContactoNegocios CorreoElectronico = new cContactoNegocios(1, "A", 2, "B");
                CorreoElectronico.Fk_idtipoContacto = 2;

                DataTable TablaCorreoElectronico = CorreoElectronico.Buscar();

                if (TablaCorreoElectronico.Rows.Count > 0)
                {
                    CorreoElectronico.IdContacto = Int16.Parse(TablaCorreoElectronico.Rows[0]["idContacto"].ToString());
                    CorreoElectronico.SeleccionarUno();
                    CorreoElectronico.Eliminado = 1;
                    CorreoElectronico.Actualizar();
                }

                cContactoNegocios Direccion = new cContactoNegocios(1, "A", 2, "B");
                Direccion.Fk_idtipoContacto = 3;

                DataTable TablaDireccion = Direccion.Buscar();

                if (TablaDireccion.Rows.Count > 0)
                {
                    Direccion.IdContacto = Int16.Parse(TablaDireccion.Rows[0]["idContacto"].ToString());
                    Direccion.SeleccionarUno();
                    Direccion.Eliminado = 1;
                    Direccion.Actualizar();
                }

                Response.Redirect("Consultar_Profesores.aspx");
            }
            else if (e.CommandName == "VerDetalle")
            {
                Session["IdUsuario"] = e.Item.Cells[0].Text;
                Response.Redirect("Consultar_DetalleProfesor.aspx");
            }
        }
    }
}