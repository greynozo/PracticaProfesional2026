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
                    <asp:RequiredFieldValidator ID="rfvNombre" ControlToValidate="txtNombre" Text="*" runat="server" 
                    ErrorMessage="El nombre es obligatorio."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblApellido" Text="Apellido" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtApellido" runat="server" />
                    <asp:RequiredFieldValidator ID="rfvApellido" ControlToValidate="txtApellido" Text="*" runat="server" 
                    ErrorMessage="El apellido es obligatorio."></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblDNI" Text="DNI" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtDNI" runat="server" MaxLength="8"/>
                    <asp:RangeValidator ID="rvDNI"
                        runat="server" ErrorMessage="DNI incorrecto" Text="*" 
                        ControlToValidate="txtDNI" MinimumValue="1" MaximumValue="99999999" Type="String"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblUsuario" Text="Usuario" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtUsuario" runat="server" />
                    <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ErrorMessage="Debe ingresar usuario" 
                    Text="*" ControlToValidate="txtUsuario"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revUsuario" runat="server" ErrorMessage="Usuario incorrecto"
                     Text="*" ControlToValidate="txtUsuario"
                      ValidationExpression="^[a-zA-Z0-9_$]{3,16}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" Text="Password" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                    <asp:RequiredFieldValidator
                        ID="rfvPassword" runat="server" ErrorMessage="El password es necesario"
                         Text="*" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblConfirmar" Text="Confirmar Password" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtConfirmar" runat="server" TextMode="Password" />
                    <asp:RequiredFieldValidator ID="rfvConfirmar" runat="server" ErrorMessage="Debe confirmar password" 
                    Text="*" ControlToValidate="txtConfirmar"></asp:RequiredFieldValidator>

                    <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="El password no coincide" 
                    Text="*" ControlToValidate="txtPassword" ControlToCompare="txtConfirmar"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        </br>
        <asp:Button ID="btnGuardar" CssClass="btn-success" runat="server" 
            Text="Guardar" onclick="btnGuardar_Click" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Label ID="lblMensaje" Text="" ForeColor="Red" runat="server" />
    </div>
</asp:Content>
