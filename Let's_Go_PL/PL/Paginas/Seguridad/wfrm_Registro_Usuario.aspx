<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Registro_Usuario.aspx.cs" Inherits="PL.Paginas.Seguridad.wfrm_Registro_Usuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js">
</script>

    <link href="../../Styles/CSS/Registro_Usuario.css" rel="stylesheet" />
    <script src="../../Styles/JS/Registro_Usuario.js"></script>

</head>
<body>
    <form id="form1" runat="server">

        <ul class="tabs">
            <li><a href="#Cliente">Cliente</a></li>
            <li><a href="#Conductor">Conductor</a></li>
            <li><a href="#Administrador">Administrador</a></li>
        </ul>

        <div class="tab_container">
            <div class="tab_content" id="Cliente">
                <!--Cliente Content-->
                <asp:TextBox ID="txt_Id_Cliente" runat="server" placeholder="ID Cliente" CssClass="formulario"></asp:TextBox>
                <p>ID Estado: </p><asp:DropDownList ID="drp_Id_Estado_Clien" runat="server" CssClass="formulario"></asp:DropDownList>
                <p>ID Cuenta: </p><asp:TextBox ID="txt_Id_Cuenta_Clien" runat="server" CssClass="formulario"></asp:TextBox>
                <p>ID Tarjeta: </p><asp:TextBox ID="txt_Tarjeta_Clien" runat="server" CssClass="formulario"></asp:TextBox>
                
                <asp:Button ID="btn_Guardar_Clien" runat="server" Text="Sign Up" CssClass-="animated" OnClick="btn_Guardar_Clien_Click" />
                
                <!--Cliente Content end-->
            </div>
            <div class="tab_content" id="Conductor">
               <!--Conductor Content-->
                <div id="Vehiculo">
                    <asp:TextBox ID="txt_Id_Vehiculo" runat="server" placeholder="ID Vehiculo" CssClass="formulario"></asp:TextBox>
                    <p>ID Modelo: </p><asp:DropDownList ID="drp_Id_Modelo" runat="server" CssClass="formulario"></asp:DropDownList>
                    <asp:TextBox ID="txt_Matricula" runat="server" placeholder="Matricula" CssClass="formulario"></asp:TextBox>
                    <asp:TextBox ID="TextBox8" runat="server" placeholder="Año" CssClass="formulario"></asp:TextBox>
                </div>

                <asp:TextBox ID="txt_Id_Conductor" runat="server" placeholder="ID Conductor" CssClass="formulario"></asp:TextBox>
                <p>ID Estado: </p><asp:DropDownList ID="drp_Id_Estado_Conduc" runat="server" CssClass="formulario"></asp:DropDownList>
                <p>ID Cuenta: </p><asp:TextBox ID="txt_Cuenta_Conduc" runat="server" CssClass="formulario"></asp:TextBox>
                <p>ID Tarjeta: </p><asp:TextBox ID="txt_Tajeta_Conduc" runat="server" CssClass="formulario"></asp:TextBox>
                
                <asp:Button ID="btn_Guardar_Conduc" runat="server" Text="Sign Up" CssClass-="animated" OnClick="btn_Guardar_Conduc_Click" />
                
                <!--Conductor Content end-->
            </div>
            <div class="tab_content" id="Administrador">
               <!--Conductor Content-->
                <asp:TextBox ID="txt_Id_Admin" runat="server" placeholder="ID Administrador" CssClass="formulario"></asp:TextBox>
                <p>ID Estado: </p><asp:DropDownList ID="drp_Id_Estado_Admin" runat="server" CssClass="formulario"></asp:DropDownList>
                <p>ID Cuenta: </p><asp:TextBox ID="txt_Cuenta_Admin" runat="server" CssClass="formulario"></asp:TextBox>
                <p>ID Empresa: </p><asp:DropDownList ID="drp_Empresa" runat="server" CssClass="formulario"></asp:DropDownList>
                
                <asp:Button ID="btn_Guardar_Admin" runat="server" Text="Sign Up" CssClass-="animated" OnClick="btn_Guardar_Admin_Click"/>
                
                <!--Conductor Content end-->
            </div>

        </div>

    </form>
</body>
</html>
