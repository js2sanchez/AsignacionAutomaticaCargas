<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultarSedes.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.ConsultarSede" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /> <br /><br />
    <asp:Panel ID="Panel1" runat="server">
    <asp:DataGrid ID="dgdSedes" runat="server" AutoGenerateColumns="False" BackColor="WhiteSmoke" BorderStyle="Solid" CssClass="GridMantenimiento" Font-Names="Century Gothic" Font-Size="Small" ForeColor="Black" Height="19px" Width="99%" OnItemCommand="dgdSedes_ItemCommand">
        <AlternatingItemStyle BackColor="Gainsboro" />
        <HeaderStyle BackColor="Navy" Font-Bold="True" Font-Names="Century Gothic" Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
        <Columns>
            <asp:BoundColumn DataField="idSede" HeaderText="idSede" Visible="False"></asp:BoundColumn>
            <asp:BoundColumn DataField="codigoSede" HeaderText="Código"></asp:BoundColumn>
            <asp:BoundColumn DataField="nombreSede" HeaderText="Nombre"></asp:BoundColumn>
            <asp:TemplateColumn HeaderText="Editar">
                <ItemTemplate>
                    <asp:ImageButton ID="ibtnEditar" runat="server" CommandName="Editar" Height="30px" ImageUrl="~/Multimedia/icono-editar.jpg" style="display:block; margin:0 auto" Width="30px" />
                </ItemTemplate>
            </asp:TemplateColumn>
            <asp:TemplateColumn HeaderText="Eliminar">
                <ItemTemplate>
                    <asp:ImageButton ID="ibtnEliminar" runat="server" CommandName="Eliminar" Height="30px" ImageUrl="~/Multimedia/icono-eliminar.jpg" style="display:block; margin:0 auto" Width="30px" />
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
    </asp:DataGrid>
</asp:Panel>
</asp:Content>
