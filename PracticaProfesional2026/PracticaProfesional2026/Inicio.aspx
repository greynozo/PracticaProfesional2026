<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true"
    CodeBehind="Inicio.aspx.cs" Inherits="PracticaProfesional2026.Inicio" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">
            Sidebar #02</h2>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblNombre" Text="Nombre" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"/>
                    <asp:RequiredFieldValidator ID="rfvNombre" ControlToValidate="txtNombre" Text="El nombre es obligatorio." runat="server" 
                    ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblApellido" Text="Apellido" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtApellido" runat="server" />
                    <asp:RequiredFieldValidator ID="rfvApellido" ControlToValidate="txtApellido" Text="El apellido es obligatorio." runat="server" 
                    ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDNI" Text="DNI" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtDNI" runat="server" TextMode="Number" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblUsuario" Text="Usuario" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtUsuario" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" Text="Password" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                </td>
            </tr>
        </table>
        </br>
        <asp:Button ID="btnGuardar" CssClass="btn-success" runat="server" 
            Text="Guardar" onclick="btnGuardar_Click" />
        <asp:Label ID="lblMensaje" Text="" ForeColor="Red" runat="server" />
    </div>
</asp:Content>
