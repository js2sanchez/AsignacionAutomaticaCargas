<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Profesores.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Profesor.Consultar_Profesores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Consultar profesores</h3>
            <asp:DataGrid ID="dgProfesores" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgProfesores_ItemCommand">
                <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="idUsuario" HeaderText="idUsuario" Visible="False"></asp:BoundColumn>
<asp:BoundColumn DataField="idProfesor" HeaderText="idProfesor" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="cedulaIdentidad" HeaderText="Cédula"></asp:BoundColumn>
                    <asp:BoundColumn DataField="nombre" HeaderText="Nombre"></asp:BoundColumn>
                    <asp:BoundColumn DataField="primerApellido" HeaderText="Primer apellido"></asp:BoundColumn>
                    <asp:BoundColumn DataField="segundoApellido" HeaderText="Segundo apellido"></asp:BoundColumn>
                    <asp:BoundColumn DataField="nombreDepartamento" HeaderText="Departamento"></asp:BoundColumn>
                    <asp:BoundColumn DataField="tipoJornadaLaboral" HeaderText="Jornada"></asp:BoundColumn>
                    <asp:BoundColumn DataField="tipoProfesor" HeaderText="Tipo"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="Ver detalle">
                        <ItemTemplate>
                            <asp:ImageButton ID="ibtnVerDetalle" runat="server" CommandName="VerDetalle" Height="20px" ImageUrl="~/Content/images/consultar.png" Width="20px" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
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
