<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Detalle_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Detalle_Modificar" %>
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
                <label for="txt_Id_Detalle">ID Detalle: </label>
                <asp:TextBox ID="txt_Id_Detalle" runat="server" placeholder="Ingrese el ID del Detalle..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="cbx_Id_Encabezado">ID Encabezado: </label>
                <asp:DropDownList ID="cbx_Id_Encabezado" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

            <div>
                <label for="txt_Subtotal">Subtotal: </label>
                <asp:TextBox ID="txt_Subtotal" runat="server" placeholder="Subtotal..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="cbx_Id_Comision">ID Comisión: </label>
                <asp:DropDownList ID="cbx_Id_Comision" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

            <div>
                <label for="txt_Total">Total: </label>
                <asp:TextBox ID="txt_Total" runat="server" placeholder="Total..." CssClass="txt_Texto"></asp:TextBox>
            </div>

        </div>

    </form>

</asp:Content>
