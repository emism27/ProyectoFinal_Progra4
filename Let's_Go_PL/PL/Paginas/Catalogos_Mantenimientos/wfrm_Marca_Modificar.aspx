<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Marca_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Marca_Modificar" %>
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
                <label for="txt_Id_Marca">ID Marca: </label>
                <asp:TextBox ID="txt_Id_Marca" runat="server" placeholder="Ingrese el ID de la Marca..." CssClass="txt_Texto" requiried="" onkeypress="return validNumeros(event)"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Descripcion">Descripción: </label>
                <asp:TextBox ID="txt_Descripcion" runat="server" placeholder="Ingrese la Descripción..." CssClass="txt_Texto" 
 requiried="" onkeypress="return validAlfabeticos(event)"></asp:TextBox>
            </div>

        </div>

    </form>

</asp:Content>
