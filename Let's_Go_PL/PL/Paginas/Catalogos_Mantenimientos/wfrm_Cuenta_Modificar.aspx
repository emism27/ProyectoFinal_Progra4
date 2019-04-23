<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Cuenta_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Cuenta_Modificar" %>
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
                <label for="txt_Id_Cuenta">ID Cuenta: </label>
                <asp:TextBox ID="txt_Id_Cuenta" runat="server" placeholder="Ingrese el ID de la Cuenta..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Nombre">Nombre: </label>
                <asp:TextBox ID="txt_Nombre" runat="server" placeholder="Ingrese el Nombre..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Apellido1">Apellido 1: </label>
                <asp:TextBox ID="txt_Apellido1" runat="server" placeholder="Ingrese el Apellido 1..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Apellido2">Apellido 2: </label>
                <asp:TextBox ID="txt_Apellido2" runat="server" placeholder="Ingrese el Apellido 2..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Correo">Correo: </label>
                <asp:TextBox ID="txt_Correo" runat="server" placeholder="Ingrese el Correo..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Telefono">Telefono: </label>
                <asp:TextBox ID="txt_Telefono" runat="server" placeholder="Ingrese el Telefono..." CssClass="txt_Texto"></asp:TextBox>
            </div>

            <div>
                <label for="cbx_Id_Pregunta_Seguridad">ID Pregunta de Seguridad: </label>
                <asp:DropDownList ID="cbx_Id_Pregunta_Seguridad" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

            <div>
                <label for="txt_Respuesta_Seguridad">Respuesta de Seguridad: </label>
                <asp:TextBox ID="txt_Respuesta_Seguridad" runat="server" placeholder="Ingrese la Respuesta de Seguridad..." CssClass="txt_Texto"></asp:TextBox>
            </div>

        </div>

    </form>
    
</asp:Content>
