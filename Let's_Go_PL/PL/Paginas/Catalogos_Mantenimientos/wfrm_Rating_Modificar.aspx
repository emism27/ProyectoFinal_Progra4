<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Rating_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Rating_Modificar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
<script src="../../Scripts_Validaciones/js_General_Validacion.js"></script>

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
                <label for="txt_Id_Rating">ID Rating: </label>
                <asp:TextBox ID="txt_Id_Rating" runat="server" placeholder="Ingrese el ID del Rating..." CssClass="txt_Texto" requiried="" onkeypress="return validNumeros(event)"></asp:TextBox>
            </div>

            <div>
                <label for="cbx_Id_Conductor">ID Conductor: </label>
                <asp:DropDownList ID="cbx_Id_Conductor" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

            <div>
                <label for="txt_Descripcion_Rating">Rating: </label>
                <asp:TextBox ID="txt_Descripcion_Rating" runat="server" placeholder="Ingrese el Rating..." CssClass="txt_Texto" requiried="" onkeypress="return validNumeros(event)"></asp:TextBox>
            </div>

            <div>
                <label for="cbx_Id_Viaje">ID Viaje: </label>
                <asp:DropDownList ID="cbx_Id_Viaje" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

        </div>

    </form>

</asp:Content>
