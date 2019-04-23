<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Vehiculo_Otros.aspx.cs" Inherits="PL.Paginas.Otros.wfrm_Vehiculo_Otros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Let's Go: Private Service</title>

    <!-- Bootstrap core CSS -->
    <link href="../../Styles/BOOTSTRAP/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom styles for this template -->
    <link href="../../Styles/CSS/modern-business.css" rel="stylesheet" />

</head>
<body>

        <!-- Navigation -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="wfrm_Publico_Otros.aspx">Let's Go: Private Service</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="wfrm_Nosotros_Otros.aspx">Nosotros</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="wfrm_Servicios_Otros.aspx">Servicios</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="wfrm_Vehiculo_Otros.aspx">Vehículos</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="wfrm_Caracteristicas_Otros.aspx">Características</a>
          </li>

          <li class="nav-item">
            <a class="btn btn-lg btn-secondary btn-block" href="../Seguridad/wfrm_Login_Seguridad.aspx">Sign In</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

    <!-- Page Content -->
  <div class="container">

    <!-- Page Heading/Breadcrumbs -->
    <h1 class="mt-4 mb-3">Tipos 
      <small>de Vehículos</small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="wfrm_Publico_Otros.aspx">Inicio</a>
      </li>
      <li class="breadcrumb-item active">Vehículos</li>
    </ol>

    <div class="row">
      <div class="col-lg-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../../Recursos/Pic07.png" alt=""/></a>
          <div class="card-body">
            <h4 class="card-title">
                XS-Car
            </h4>
            <p class="card-text">Este servicio sólo se puede utilizar para un máximo de 4 pasajeron sin contar al conductor.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-6 portfolio-item">
        <div class="card h-100">
          <a href="#"><img class="card-img-top" src="../../Recursos/Pic08.png" alt=""/></a>
          <div class="card-body">
            <h4 class="card-title">
              XL-Car
            </h4>
            <p class="card-text">Este servicio sólo se puede utilizar para un máximo de 6 pasajeron sin contar al conductor.</p>
          </div>
        </div>
      </div>
    </div>
      </div>
    <!-- /.row -->

            <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Let's Go: Private Service</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
    <script src="../../Styles/JQ/jquery.min.js"></script>
    <script src="../../Styles/BOOTSTRAP/bootstrap.bundle.min.js"></script>

</body>
</html>
