<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agregar_Sede.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Sede.Agregar_Sede" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="multipage">
        <section class="form-width">
            <h3>Agregar una sede</h3>
             <div class="section-form">
                 <div class="container">
		            <div class="row row-centered">
		              <div class="col-xs-6 col-centered col-min">
                          <asp:TextBox ID="txtCodigo" runat="server" class="form-control" maxlength="40" placeholder="Codigo de la sede" ToolTip="Ejemplo: CA"></asp:TextBox>
		              </div>
                        <div class="col-xs-6 col-centered col-min">
                         <asp:TextBox ID="txtNombre" runat="server" class="form-control" maxlength="40" placeholder="Nombre de la sede" ToolTip="Ejemplo: Cartago"></asp:TextBox>
		              </div>
		            </div>
		            <div class="row row-centered" style="margin-top:20px;">
                        <asp:Button ID="btnAgregar" runat="server" class="btn btn-default" Text="Agregar" OnClick="btnAgregar_Click" />
		            </div>
	              </div>
            </div>
        </section>
    </div>
    <script type="text/javascript">
        function agregar() {
            bootbox.dialog({
                closeButton: true,
                title: " Se agregó exitosamente ",
                message: " ",
                buttons: {
                    success: {
                        label: "Aceptar",
                        className: "btn-default",
                        callback: function () {
                        location.href = "/View/Sede/Consultar_Sede.aspx";
                    }
                    }
                }
            });
            //Limpia los campos del form
            $(".section-form").find('.form-control').val('');
        }
</script>
</asp:Content>
