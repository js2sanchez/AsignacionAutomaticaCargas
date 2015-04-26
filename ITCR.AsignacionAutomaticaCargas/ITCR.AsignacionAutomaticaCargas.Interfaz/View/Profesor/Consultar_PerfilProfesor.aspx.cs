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
    public partial class Consultar_Profesor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["Login"] = "js2sanchez";
                cargarDatosProfesor();
            }
        }

        public void cargarDatosProfesor()
        {

            //Usuario
            cUsuarioNegocios Usuario = new cUsuarioNegocios(1, "A", 2, "B");
            Usuario.Login = Session["Login"].ToString();

            DataTable TablaUsuario = Usuario.Buscar();

            Int16 IdUsuario = 0;

            if (TablaUsuario.Rows.Count > 0)
            {
                String Nombre = TablaUsuario.Rows[0]["nombre"].ToString();
                String Apellido1 = TablaUsuario.Rows[0]["primerApellido"].ToString();
                String Apellido2 = TablaUsuario.Rows[0]["segundoApellido"].ToString();

                lblCedula.Text = TablaUsuario.Rows[0]["cedulaIdentidad"].ToString();
                lblNombreCompleto.Text = Nombre + " " + Apellido1 + " " + Apellido2;

                IdUsuario = Int16.Parse(TablaUsuario.Rows[0]["idUsuario"].ToString());
            }

            //Contactos

            lblTelefono.Text = obtenerTelefono(IdUsuario);
            lblCorreoElectronico.Text = obtenerCorreoElectronico(IdUsuario);
            lblDireccion.Text = obtenerDireccion(IdUsuario);

            //Profesor
            cProfesorNegocios Profesor = new cProfesorNegocios(1, "A", 2, "B");
            Profesor.Fk_idUsuario = IdUsuario;

            DataTable TablaProfesor = Profesor.Buscar();

            Int16 IdProfesor = 0;

            if (TablaProfesor.Rows.Count > 0)
            {
                IdProfesor = Int16.Parse(TablaProfesor.Rows[0]["idProfesor"].ToString());
                lblDepartamento.Text = obtenerDepartamento(Int16.Parse(TablaProfesor.Rows[0]["fk_idDepartamento"].ToString()));
                lblTipoJornada.Text = obtenerTipoJornada(Int16.Parse(TablaProfesor.Rows[0]["fk_idDepartamento"].ToString()));
                lblTipoProfesor.Text = obtenerTipoProfesor(Int16.Parse(TablaProfesor.Rows[0]["fk_idDepartamento"].ToString()));
                lblNotasAdicionales.Text = TablaProfesor.Rows[0]["Notas"].ToString();
            }
        }

        #region Contactos

        public String obtenerTelefono(Int32 pIdUsuario)
        {
            cContactoNegocios Contacto = new cContactoNegocios(1, "A", 2, "B");
            Contacto.Fk_idUsuario = pIdUsuario;
            Contacto.Fk_idtipoContacto = 1;

            DataTable TablaContacto = Contacto.Buscar();

            String Telefono = "";
            if (TablaContacto.Rows.Count > 0)
            {
                Telefono = TablaContacto.Rows[0]["contacto"].ToString();
            }

            return Telefono;
        }

        public String obtenerCorreoElectronico(Int32 pIdUsuario)
        {
            cContactoNegocios Contacto = new cContactoNegocios(1, "A", 2, "B");
            Contacto.Fk_idUsuario = pIdUsuario;
            Contacto.Fk_idtipoContacto = 2;

            DataTable TablaContacto = Contacto.Buscar();

            String CorreoElectronico = "";
            if (TablaContacto.Rows.Count > 0)
            {
                CorreoElectronico = TablaContacto.Rows[0]["contacto"].ToString();
            }

            return CorreoElectronico;
        }

        public String obtenerDireccion(Int32 pIdUsuario)
        {
            cContactoNegocios Contacto = new cContactoNegocios(1, "A", 2, "B");
            Contacto.Fk_idUsuario = pIdUsuario;
            Contacto.Fk_idtipoContacto = 3;

            DataTable TablaContacto = Contacto.Buscar();

            String Direccion = "";
            if (TablaContacto.Rows.Count > 0)
            {
                Direccion = TablaContacto.Rows[0]["contacto"].ToString();
            }

            return Direccion;
        }

        #endregion

        #region Datos laborales
        
        public String obtenerDepartamento(Int16 pIdDepartamento)
        {
            cDepartamentoNegocios Departamento = new cDepartamentoNegocios(1, "A", 2, "B");
            Departamento.IdDepartamento = pIdDepartamento;

            DataTable TablaDepartamento = Departamento.Buscar();

            String NombreDepartamento = "";
            if (TablaDepartamento.Rows.Count > 0)
            {
                NombreDepartamento = TablaDepartamento.Rows[0]["nombreDepartamento"].ToString();
            }

            return NombreDepartamento;
        }

        public String obtenerTipoJornada(Int16 pIdTipoJornada)
        {
            cJornadaLaboralNegocios TipoJornada = new cJornadaLaboralNegocios(1, "A", 2, "B");
            TipoJornada.IdJornada = pIdTipoJornada;

            DataTable TablaTipoJornada = TipoJornada.Buscar();

            String NombreTipoJornada = "";
            if (TablaTipoJornada.Rows.Count > 0)
            {
                NombreTipoJornada = TablaTipoJornada.Rows[0]["tipoJornadaLaboral"].ToString();
            }

            return NombreTipoJornada;
        }

        public String obtenerTipoProfesor(Int16 pIdTipoProfesor)
        {
            cTipoProfesorNegocios TipoProfesor = new cTipoProfesorNegocios(1, "A", 2, "B");
            TipoProfesor.IdTipoProfesor = pIdTipoProfesor;

            DataTable TablaTipoProfesor = TipoProfesor.Buscar();

            String NombreTipoProfesor = "";
            if (TablaTipoProfesor.Rows.Count > 0)
            {
                NombreTipoProfesor = TablaTipoProfesor.Rows[0]["tipoProfesor"].ToString();
            }

            return NombreTipoProfesor;
        }

        #endregion

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            cUsuarioNegocios Usuario1 = new cUsuarioNegocios(1, "A", 2, "B");
            Usuario1.Login = Session["Login"].ToString();

            DataTable TablaUsuario1 = Usuario1.Buscar();

            Int16 IdUsuario = 0;
            if (TablaUsuario1.Rows.Count > 0)
            {
                IdUsuario = Int16.Parse(TablaUsuario1.Rows[0]["idUsuario"].ToString());
            }

            cProfesorNegocios Profesor1 = new cProfesorNegocios(1, "A", 2, "B");
            Profesor1.Fk_idUsuario = IdUsuario;

            DataTable TablaProfesor1 = Profesor1.Buscar();

            Int16 IdProfesor = 0;
            if (TablaProfesor1.Rows.Count > 0)
            {
                IdProfesor = Int16.Parse(TablaProfesor1.Rows[0]["idProfesor"].ToString());
            }

            //Usuario

            cUsuarioNegocios Usuario = new cUsuarioNegocios(1, "A", 2, "B");
            Usuario.IdUsuario = IdUsuario;

            DataTable TablaUsuario = Usuario.SeleccionarUno();

            if (TablaUsuario.Rows.Count > 0)
            {
                Usuario.Eliminado = 1;
                Usuario.Actualizar();
            }

            //Profesor

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

            Response.Redirect("~/Default.aspx");
        }
    }
}