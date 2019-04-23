<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Caracteristicas_Otros.aspx.cs" Inherits="PL.Paginas.Otros.wfrm_Caracteristicas_Otros" %>

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
    <h1 class="mt-4 mb-3">Características
      <small>by Let's Go</small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="wfrm_Publico_Otros.aspx">Inicio</a>
      </li>
      <li class="breadcrumb-item active">Características</li>
    </ol>

    <!-- Project One -->
    <div class="row">
      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="../../Recursos/Pago.png" alt=""/>
        </a>
      </div>
      <div class="col-md-5">
        <h3>Método de Pago</h3>
        <p>El cliente debe de de agregar una tarjeta de débito o de crédito para el pago de los servicios que desee contratar.</p>
      </div>
    </div>
    <!-- /.row -->

    <hr/>

    <!-- Project Two -->
    <div class="row">
      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="../../Recursos/Calificacion.png" alt=""/>
        </a>
      </div>
      <div class="col-md-5">
        <h3>Calificación del Servicio</h3>
        <p>El Usuario puede calificar su viaje una vez finalizado.</p>
      </div>
    </div>
    <!-- /.row -->

    <hr/>

    <!-- Project Three -->
    <div class="row">
      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="../../Recursos/Seguridad.png" alt=""/>
        </a>
      </div>
      <div class="col-md-5">
        <h3>Seguridad</h3>
        <p>Por medio del registro de usuario se asegura la integridad de la información de nuestros usuarios.</p>
      </div>
    </div>
    <!-- /.row -->

    <hr/>

    <!-- Project Four -->
    <div class="row">

      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="../../Recursos/Economico.png" alt=""/>
        </a>
      </div>
      <div class="col-md-5">
        <h3>Económico</h3>
        <p>Antes de solicitar el viaje se calcula la ruta más rapida y cerca para reducir el precio del servicio.</p>
      </div>
    </div>
    <!-- /.row -->

    <hr/>

          <!-- Project five -->
    <div class="row">

      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="../../Recursos/Servicio.png" alt=""/>
        </a>
      </div>
      <div class="col-md-5">
        <h3>Buen Servicio</h3>
        <p>Los colaboradores son capacitados constantemente para brindar la mejor atención a nuestros clientes.</p>
      </div>
    </div>
    <!-- /.row -->

    <hr/>

          <!-- Project six -->
    <div class="row">

      <div class="col-md-7">
        <a href="#">
          <img class="img-fluid rounded mb-3 mb-md-0" src="../../Recursos/Facturacion.png" alt=""/>
        </a>
      </div>
      <div class="col-md-5">
        <h3>Facturación del Servicio</h3>
        <p>Cuando se finaliza el viaje se genera la un recibo para que los usuarios observen el costo del servicio.</p>
      </div>
    </div>
    <!-- /.row -->

    <hr/>

      </div>

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
