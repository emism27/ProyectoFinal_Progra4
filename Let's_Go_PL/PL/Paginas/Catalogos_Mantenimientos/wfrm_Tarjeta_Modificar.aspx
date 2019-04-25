<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Tarjeta_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Tarjeta_Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../../Styles/CSS/Modificar.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div id="boton">
            <asp:ImageButton ID="btn_Guardar" runat="server" ImageUrl="~/Recursos/Save.png" CssClass="btn_Boton" OnClick="btn_Guardar_Click"/>
            <asp:ImageButton ID="btn_Limpiar" runat="server" ImageUrl="~/Recursos/Refresh.png" CssClass="btn_Boton" OnClick="btn_Limpiar_Click"/>
            <asp:ImageButton ID="btn_Salir" runat="server" ImageUrl="~/Recursos/Exit.png" CssClass="btn_Boton" OnClick="btn_Salir_Click" />
        </div>

        <div id="formulario">
            <div>
                <label for="txt_Id_Tarjeta">ID Tarjeta: </label>
                <asp:TextBox ID="txt_Id_Tarjeta" runat="server" placeholder="Ingrese el ID de la Tarjeta..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Numero_Cuenta">Número de Tarjeta: </label>
                <asp:TextBox ID="txt_Numero_Cuenta" runat="server" placeholder="Ingrese el Número de Cuenta..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Fecha_Vencimiento">Fecha de Vencimiento: </label>
                <asp:TextBox ID="txt_Fecha_Vencimiento" runat="server" placeholder="Ingrese la Fecha de Vencimiento..." CssClass="txt_Texto"></asp:TextBox>
                <asp:DropDownList ID="mes" runat="server" ></asp:DropDownList>
                <asp:DropDownList ID="annyo" runat="server"></asp:DropDownList>
            </div>

            <div>
                <label for="txt_CVV">CVV: </label>
                <asp:TextBox ID="txt_CVV" runat="server" placeholder="Ingrese el CVV..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="cbx_Id_Tipo_Tarjeta">ID Tipo de Tarjeta: </label>
                <asp:DropDownList ID="cbx_Id_Tipo_Tarjeta" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

            <div>
                <label for="cbx_Id_Banco">ID Banco: </label>
                <asp:DropDownList ID="cbx_Id_Banco" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

        </div>

    </form>

</asp:Content>
