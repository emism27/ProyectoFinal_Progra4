<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="wfrm_Menu_Catalogos_Otros.aspx.cs" Inherits="PL.Paginas.Otros.wfrm_Menu_Catalogos_Otros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../../Styles/CSS/Menu_Catalogos.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Menu Section -->
    <div id="Principal">

        <div id="line1">
            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Administrador_Listar.aspx';">Administrador</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Banco_Listar.aspx';">Banco</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Cliente_Listar.aspx';">Cliente</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Comision_Listar.aspx';">Comisión</button>
        </div>

        <div id="line2">
            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Conductor_Listar.aspx';">Conductor</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Cuenta_Listar.aspx';">Cuenta</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Detalle_Listar.aspx';">Detalle</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Empresa_Listar.aspx';">Empresa</button>
        </div>

        <div id="line3">
            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Encabezado_Listar.aspx';">Encabezado</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Estado_Listar.aspx';">Estado</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Marca_Listar.aspx';">Marca</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Modelo_Listar.aspx';">Modelo</button>
        </div>

        <div id="line4">
            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Pregunta_Seguridad_Listar.aspx';">Preguntas de Seguridad</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Rating_Listar.aspx';">Rating</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Solicitud_Viaje_Listar.aspx';">Solicitud de Viaje</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Tarjeta_Listar.aspx';">Tarjeta</button>
        </div>

        <div id="line5">
            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Tipo_Tarjeta_Listar.aspx';">Tipo de Tarjeta</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Tipo_Vehiculo_Listar.aspx';">Tipo de Vehiculo</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Vehiculo_Listar.aspx';">Vehiculo</button>

            <button class="button" onclick="location.href='../Catalogos_Mantenimientos/wfrm_Viaje_Listar.aspx';">Viaje</button>
        </div>

    </div>
    <!-- /.row -->

</asp:Content>
