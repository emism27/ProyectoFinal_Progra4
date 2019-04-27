<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Cliente_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Cliente_Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../../Scripts_Validaciones/js_General_Validacion.js"></script>

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
                <label for="txt_Id_Cliente">ID Cliente: </label>
                <asp:TextBox ID="txt_Id_Administrador" runat="server" placeholder="Ingrese el ID del Cliente..." CssClass="txt_Texto" requiried="" onkeypress="return validNumeros(event)"></asp:TextBox>
            </div>

            <div>
                <label for="cbx_Id_Cuenta">ID Cuenta: </label>
                <asp:DropDownList ID="cbx_Id_Cuenta" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

            <div>
                <label for="cbx_Id_Tarjeta">ID Tarjeta: </label>
                <asp:DropDownList ID="cbx_Id_Tarjeta" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

            <div>
                <label for="cbx_Id_Estado">ID Estado: </label>
                <asp:DropDownList ID="cbx_Id_Estado" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

        </div>

    </form>

</asp:Content>
