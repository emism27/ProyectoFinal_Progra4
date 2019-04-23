<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Empresa_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Empresa_Modificar" %>
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
                <label for="txt_Id_Empresa">ID Empresa: </label>
                <asp:TextBox ID="txt_Id_Empresa" runat="server" placeholder="Ingrese el ID de la Empresa..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Nombre">Nombre: </label>
                <asp:TextBox ID="txt_Nombre" runat="server" placeholder="Ingrese el Nombre..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Direccion">Dirección: </label>
                <asp:TextBox ID="txt_Direccion" runat="server" placeholder="Ingrese la Dirección..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Sitio">Sitio WEB: </label>
                <asp:TextBox ID="txt_Sitio" runat="server" placeholder="Ingrese el Sitio WEB..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Telefono">Telefono: </label>
                <asp:TextBox ID="txt_Telefono" runat="server" placeholder="Ingrese el Telefono..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Correo">Correo: </label>
                <asp:TextBox ID="txt_Correo" runat="server" placeholder="Ingrese el Correo..." CssClass="txt_Texto"></asp:TextBox>
            </div>

        </div>

    </form>

</asp:Content>
