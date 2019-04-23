<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Administrador_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Administrador_Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../../Styles/CSS/Modificar.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div id="boton">
            <asp:ImageButton ID="btn_Guardar" runat="server" ImageUrl="~/Recursos/Save.png" CssClass="btn_Boton"/>
            <asp:ImageButton ID="btn_Limpiar" runat="server" ImageUrl="~/Recursos/Refresh.png" CssClass="btn_Boton"/>
            <asp:ImageButton ID="btn_Salir" runat="server" ImageUrl="~/Recursos/Exit.png" CssClass="btn_Boton" OnClick="btn_Salir_Click" />
        </div>

        <div id="formulario">
            <div>
                <label for="txt_Id_Administrador">ID Administrador: </label>
                <asp:TextBox ID="txt_Id_Administrador" runat="server" placeholder="Ingrese el ID del Administrador..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="cbx_Id_Cuenta">ID Cuenta: </label>
                <asp:DropDownList ID="cbx_Id_Cuenta" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

            <div>
                <label for="cbx_Id_Empresa">ID Empresa: </label>
                <asp:DropDownList ID="cbx_Id_Empresa" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

            <div>
                <label for="cbx_Id_Estado">ID Estado: </label>
                <asp:DropDownList ID="cbx_Id_Estado" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

        </div>

    </form>

</asp:Content>
