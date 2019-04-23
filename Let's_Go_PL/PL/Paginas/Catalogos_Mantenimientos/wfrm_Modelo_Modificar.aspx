<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Modelo_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Modelo_Modificar" %>
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
                <label for="txt_Id_Modelo">ID Modelo: </label>
                <asp:TextBox ID="txt_Id_Modelo" runat="server" placeholder="Ingrese el ID del Modelo..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Modelo">Modelo: </label>
                <asp:TextBox ID="txt_Modelo" runat="server" placeholder="Ingrese el Modelo..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="cbx_Id_Marca">ID Marca: </label>
                <asp:DropDownList ID="cbx_Id_Marca" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

        </div>

    </form>
    
</asp:Content>
