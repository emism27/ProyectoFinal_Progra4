<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Banco_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Banco_Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <link href="../../Styles/CSS/Modificar.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div id="boton">
            <asp:ImageButton ID="btn_Guardar" runat="server" ImageUrl="~/Recursos/Save.png" CssClass="btn_Boton" OnClick="btn_Guardar_Click"/>
            <asp:ImageButton ID="btn_Limpiar" runat="server" ImageUrl="~/Recursos/Refresh.png" CssClass="btn_Boton" OnClick="btn_Limpiar_Click"/>
            <asp:ImageButton ID="btn_Salir" runat="server" ImageUrl="~/Recursos/Exit.png" CssClass="btn_Boton" OnClick="btn_Salir_Click"/>
        </div>

        <div id="formulario">
            <div>
                <label for="txt_Id_Banco">ID Banco: </label>
                <asp:TextBox ID="txt_Id_Banco" runat="server" placeholder="Ingrese el ID del Banco..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Nombre_Banco">Nombre del Banco: </label>
                <asp:TextBox ID="txt_Nombre_Banco" runat="server" placeholder="Ingrese el Nombre del Banco..." CssClass="txt_Texto"></asp:TextBox>
            </div>
        </div>

    </form>

</asp:Content>
