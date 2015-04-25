<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consultar_Curso.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.View.Curso.Consultar_Curso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="multipage">
        <section class="form-width">
            <h3>Consultar cursos</h3>
            <asp:DataGrid ID="dgCursos" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-striped table-hover"
                Width="100%" OnItemCommand="dgCursos_ItemCommand">
                <HeaderStyle Font-Size="Larger" ForeColor="Black" HorizontalAlign="Center" />
                <Columns>
                    <asp:BoundColumn DataField="idCurso" HeaderText="idCurso" Visible="False"></asp:BoundColumn>
                    <asp:BoundColumn DataField="codigoCurso" HeaderText="Código"></asp:BoundColumn>
                    <asp:BoundColumn DataField="nombreCurso" HeaderText="Nombre"></asp:BoundColumn>
                    <asp:BoundColumn DataField="fk_idGradoAcademinico" HeaderText="Grado Académico"></asp:BoundColumn>
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
