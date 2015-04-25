<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Administrador.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Administrador.Consultar_Administrador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Consultar administradores</h3>
            <asp:DataGrid ID="dgAdministrador" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgAdministrador_ItemCommand">
                <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="idUsuario" HeaderText="idAdministrador" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="nombre" HeaderText="Nombre"></asp:BoundColumn>
                    <asp:BoundColumn DataField="primerApellido" HeaderText="Apellidos"></asp:BoundColumn>
                     <asp:BoundColumn DataField="login" HeaderText="Nombre de usuario"></asp:BoundColumn>
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
</asp:Content>
