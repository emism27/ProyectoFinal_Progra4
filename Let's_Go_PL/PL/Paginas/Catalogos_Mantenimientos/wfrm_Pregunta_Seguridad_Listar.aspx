<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Pregunta_Seguridad_Listar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Pregunta_Seguridad_Listar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <link href="../../Styles/CSS/Formularios.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <form runat="server">
        <div id="buscar">
            <label for="drd_Filtro">Filtrar Por: </label>
            <asp:DropDownList ID="drd_Filtro" runat="server" CssClass="drd_Filtro"></asp:DropDownList>
            <label for="txt_Palabra">Palabra Clave: </label>
            <asp:TextBox ID="txt_Palabra" runat="server" CssClass="txt_Palabra"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Buscar" CssClass="btn_Buscar"/>
        </div>
        <div id="boton">
            <asp:ImageButton ID="btn_Agregar" runat="server" Text="Agregar" CssClass="btn_Agregar" ImageUrl="~/Recursos/Add.png" OnClick="btn_Agregar_Click"/>
            <asp:ImageButton ID="btn_Modificar" runat="server" Text="Modificar" CssClass="btn_Modificar" ImageUrl="~/Recursos/Edit.png" OnClick="btn_Modificar_Click"/>
            <asp:ImageButton ID="btn_Eliminar" runat="server" Text="Eliminar" CssClass="btn_Eliminar" ImageUrl="~/Recursos/Delete.png"/>
        </div>
        <div id="datos">
            <asp:GridView ID="dgvDatos" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True"  GridLines="None" AllowPaging="true" CssClass="mGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt"
                PageSize="10">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="ID_Tipo_Tarjeta" HeaderText="ID TIPO TARJETA" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                </Columns>
            </asp:GridView><br />
        </div>
    </form>

</asp:Content>
