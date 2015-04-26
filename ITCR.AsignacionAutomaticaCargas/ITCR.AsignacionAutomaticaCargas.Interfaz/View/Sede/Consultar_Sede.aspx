<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Sede.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Sede.Consultar_Sede" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Consultar sedes</h3>
            <asp:DataGrid ID="dgSedes" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgSedes_ItemCommand">
                <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="idSede" HeaderText="idSede" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="codigoSede" HeaderText="Código"></asp:BoundColumn>
                    <asp:BoundColumn DataField="nombreSede" HeaderText="Nombre"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="Editar">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgEditar" runat="server" Height="20px" ImageUrl="~/Content/images/editar.png" Width="20px" CommandName="Editar" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="Eliminar">
                        <ItemTemplate>
                            <asp:ImageButton ID="ibtnEliminar" runat="server" class="glyphicon" ImageUrl="~/Content/images/eliminar.png" CommandName="Eliminar" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
            </asp:DataGrid>
        </section>
    </div>
    <script type="text/javascript" >
        function eliminar(index) {
            bootbox.dialog({
                closeButton: true,
                title: "¿Está seguro que desea eliminarlo del sistema?",
                message: " ",
                buttons: {
                    success: {
                        label: "Cancelar",
                        className: "btn-default"
                    },
                    main: {
                        label: "Eliminar",
                        className: "btn-cancel",
                        callback: function () {
                            PageMethods.eliminarConfirmacion(index,OnSuccess, OnError);
                        }
                    }
                }
            });
        }

        function endConfirmation() {
            bootbox.dialog({
                closeButton: false,
                title: "Cancelar el proceso de registro",
                message: "¿Está seguro que desea salir sin guardar?",
                buttons: {
                    success: {
                        label: "No, deseo continuar en el formulario",
                        className: "btn-primary"
                    },
                    main: {
                        label: "Sí, estoy seguro",
                        className: "btn-primary",
                        callback: function () {
                            location.href = "/Default.aspx";
                        }
                    }                    
                }
            });

        function OnSuccess(response) {
            console.log("El proceso de eliminación se llevó a cabo correctamente.");
        }
        function OnError(error) {
            console.log("error");
        }
    </script>
</asp:Content>


