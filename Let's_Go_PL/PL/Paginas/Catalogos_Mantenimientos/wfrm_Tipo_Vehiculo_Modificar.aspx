<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Tipo_Vehiculo_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Tipo_Vehiculo_Modificar" %>
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
                <label for="txt_Id_Tipo_Vehiculo">ID Tipo Vehículo: </label>
                <asp:TextBox ID="txt_Id_Tipo_Vehiculo" runat="server" placeholder="Ingrese el ID del Tipo de Vehículo..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Descripcion_Tipo_Vehiculo">Descripción: </label>
                <asp:TextBox ID="txt_Descripcion_Tipo_Vehiculo" runat="server" placeholder="Ingrese la Descripción..." CssClass="txt_Texto"></asp:TextBox>
            </div>

        </div>

    </form>

</asp:Content>
