<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ActualizarSedes.aspx.cs" Inherits="ITCR.AsignacionAutomaticaCargas.Interfaz.ActualizarSedes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="container">
        <h1>Sedes</h1>
        <p>Código</p>
        <p>
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox></p>
        <p>Nombre</p>
        <p>
            <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        </p>
        <p> <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnAgregar_Click" /></p>
        
        <br />
    </div>
</asp:Content>
