<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="PracticaProfesional2026.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">
            WebForm Default</h2>
        <p>
            <asp:Button ID="btnAceptar" Text="Aceptar" runat="server" OnClick="btnAceptar_Click" />
        </p>
        <p>
            <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Red"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblConcatenar" runat="server" Text="" ForeColor="Green"></asp:Label></p>
    </div>
</asp:Content>
