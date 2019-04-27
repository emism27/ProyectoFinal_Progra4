<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Solicitud_Viaje_Modificar.aspx.cs" Inherits="PL.Paginas.Catalogos_Mantenimientos.wfrm_Solicitud_Viaje_Modificar" %>
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
                <label for="txt_Id_Solicitud_Viaje">ID Solicitud Viaje: </label>
                <asp:TextBox ID="txt_Id_Adminitxt_Id_Solicitud_Viajestrador" runat="server" placeholder="Ingrese el ID de la Solicitud..." CssClass="txt_Texto" requiried="" onkeypress="return validNumeros(event)"></asp:TextBox>
            </div>

            <div>
                <label for="cbx_Id_Cliente">ID Cliente: </label>
                <asp:DropDownList ID="cbx_Id_Cliente" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

            <div>
                <label for="txt_Ruta_Inical">Ruta Inicial: </label>
                <asp:TextBox ID="txt_Ruta_Inical" runat="server" placeholder="Ruta Inicial..." CssClass="txt_Texto"  requiried="" onkeypress="return validAlfabeticos(event)"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Ruta_Final">Ruta Final: </label>
                <asp:TextBox ID="txt_Ruta_Final" runat="server" placeholder="Ruta Final..." CssClass="txt_Texto"  requiried="" onkeypress="return validAlfabeticos(event)"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Distancia">Distancia: </label>
                <asp:TextBox ID="txt_Distancia" runat="server" placeholder="Distancia..." CssClass="txt_Texto"  requiried="" onkeypress="return Enteros_Decimales(event)"></asp:TextBox>
            </div>

            <div>
                <label for="txt_Costo_Aproximado">Costo Aproximado: </label>
                <asp:TextBox ID="txt_Costo_Aproximado" runat="server" placeholder="Costo Aproximado..." CssClass="txt_Texto"  requiried="" onkeypress="return Enteros_Decimales(event)"></asp:TextBox>
            </div>

            <div>
                <label for="cbx_Id_Tipo_Vehiculo">ID Tipo Vehículo: </label>
                <asp:DropDownList ID="cbx_Id_Tipo_Vehiculo" runat="server" CssClass="drd_Drop"></asp:DropDownList>
            </div>

        </div>

    </form>

</asp:Content>
