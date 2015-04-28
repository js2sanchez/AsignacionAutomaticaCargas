<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_DetalleProfesor.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Profesor.Consultar_DetalleProfesor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="multipage">
        <section class="form-width">
            <p class="title1">Consultar profesor</p>
            <br />
            <p class="title2">1. Datos generales </p>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:Label ID="lblCedula" runat="server" CssClass="lblForm" Text=""></asp:Label>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:Label ID="lblNombreCompleto" runat="server" CssClass="lblForm" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <p class="title2">2. Datos de contacto </p>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:Label ID="lblTelefono" runat="server" CssClass="lblForm" Text=""></asp:Label>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:Label ID="lblCorreoElectronico" runat="server" CssClass="lblForm" Text=""></asp:Label>
                        </div>
                    </div>
                    <div class="row row-centered">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered col-min">
                            <asp:Label ID="lblDireccion" runat="server" CssClass="lblForm" Text=""></asp:Label>
                        </div>

                    </div>
                </div>
            </div>
            <p class="title2">3. Datos laborales </p>
            <div class="section-form">
                <div class="container">
                    <div class="row row-centered">
                        <div class="col-xs-6 col-centered col-min">
                            <asp:Label ID="lblDepartamento" runat="server" CssClass="lblForm" Text=""></asp:Label>
                        </div>
                        <div class="col-xs-6 col-centered col-min">
                            <asp:Label ID="lblTipoJornada" runat="server" CssClass="lblForm" Text=""></asp:Label>
                        </div>
                    </div>
                    <div class="row row-centered">
                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered col-min">
                            <asp:Label ID="lblTipoProfesor" runat="server" CssClass="lblForm" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
            <p class="title2">5. Notas adicionales </p>
            <div class="section-form">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered col-min">
                    <asp:Label ID="lblNotasAdicionales" runat="server" CssClass="lblForm" Text=""></asp:Label>
                </div>
            </div>
        </section>
    </div>
</asp:Content>
