<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Publico_Otros.aspx.cs" Inherits="PL.Paginas.Otros.wfrm_Publico_Otros" %>

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

  <header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item active" style="background-image: url('../../Recursos/Pic02.png')">
          <div class="carousel-caption d-none d-md-block">
            <h3>Innovación</h3>
            <p>Más que un transporte.</p>
          </div>
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('../../Recursos/Pic03.png')">
          <div class="carousel-caption d-none d-md-block">
            <h3>Seguridad</h3>
            <p>La comodidad que necesita.</p>
          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('../../Recursos/Pic04.png')">
          <div class="carousel-caption d-none d-md-block">
            <h3>Economía</h3>
            <p>Sin preocupaciones.</p>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </header>

  <!-- Page Content -->
  <div class="container">

    <h1 class="my-4">Bienvenido a Let's Go: Private Service</h1>

    <!-- Marketing Icons Section -->
    <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Nuestra Historia</h4>
          <div class="card-body">
            <p class="card-text">“Let’s Go” es una empresa de capital costarricense, fundada en el año 2010 por un grupo de empresarios dedicados al negocio del transporte privado en el país y la región centroamericana.</p>
          </div>
          <div class="card-footer">
            <a href="wfrm_Nosotros_Otros.aspx" class="btn btn-primary">Leer Más</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Nuestro Servicio</h4>
          <div class="card-body">
            <p class="card-text">Innovamos el servicio de transporte privado para brindar a nuestros usuarios la comodidad y seguridad de viajar con Let´s Go. Antes de iniciar el viaje, se calcula la ruta más rapida y corta para crear un servicio eficaz y eficiente.</p>
          </div>
          <div class="card-footer">
            <a href="wfrm_Servicios_Otros.aspx" class="btn btn-primary">Leer Más</a>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Nuestros Vehículos</h4>
          <div class="card-body">
            <p class="card-text">Los vehículos de nuestros colaboradores son modelos recientes, en buen estado para brindar la mejor experiencia para los usuarios. Poseemos marcas económicas y de lujo para su comodidad.</p>
          </div>
          <div class="card-footer">
            <a href="wfrm_Vehiculo_Otros.aspx" class="btn btn-primary">Leer Más</a>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->

    <!-- Portfolio Section -->
    <h2>Características</h2>

    <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="wfrm_Caracteristicas_Otros.aspx"><img class="card-img-top" src="../../Recursos/Pago.png" alt=""/></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="wfrm_Caracteristicas_Otros.aspx">Método de Pago</a>
            </h4>
            <p class="card-text">El cliente debe de de agregar una tarjeta de débito o de crédito para el pago de los servicios que desee contratar.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="wfrm_Caracteristicas_Otros.aspx"><img class="card-img-top" src="../../Recursos/Calificacion.png" alt=""/></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="wfrm_Caracteristicas_Otros.aspx">Calificación del Servicio</a>
            </h4>
            <p class="card-text">El Usuario puede calificar su viaje una vez finalizado.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="wfrm_Caracteristicas_Otros.aspx"><img class="card-img-top" src="../../Recursos/Seguridad.png" alt=""/></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="wfrm_Caracteristicas_Otros.aspx">Seguridad</a>
            </h4>
            <p class="card-text">Por medio del registro de usuario se asegura la integridad de la información de nuestros usuarios.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="wfrm_Caracteristicas_Otros.aspx"><img class="card-img-top" src="../../Recursos/Economico.png" alt=""/></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="wfrm_Caracteristicas_Otros.aspx">Económico</a>
            </h4>
            <p class="card-text">Antes de solicitar el viaje se calcula la ruta más rapida y cerca para reducir el precio del servicio.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="wfrm_Caracteristicas_Otros.aspx"><img class="card-img-top" src="../../Recursos/Servicio.png" alt=""/></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="wfrm_Caracteristicas_Otros.aspx">Buen Servicio</a>
            </h4>
            <p class="card-text">Los colaboradores son capacitados constantemente para brindar la mejor atención a nuestros clientes.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <a href="wfrm_Caracteristicas_Otros.aspx"><img class="card-img-top" src="../../Recursos/Facturacion.png" alt=""/></a>
          <div class="card-body">
            <h4 class="card-title">
              <a href="wfrm_Caracteristicas_Otros.aspx">Facturación del Servicio</a>
            </h4>
            <p class="card-text">Cuando se finaliza el viaje se genera la un recibo para que los usuarios observen el costo del servicio.</p>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->

    <!-- Features Section -->
    <div class="row">
      <div class="col-lg-6">
        <h2>Private Driver Service</h2>
        <p>El servico de conductor privado incluye:</p>
        <ul>
          <li>
            <strong>Confites</strong>
          </li>
          <li>Agua</li>
          <li>Aire Acondicionado</li>
          <li>Cambio de ruta a su eleción</li>
          <li>Cargador para celular</li>
        </ul>
        <p>Todos los productos que ofrecen nuestros colaboradores quedan sujetos a la disponibilidad y demanda. Si tiene alguna duda, sugerencia o inconformidad con nuestros servicios, se puede comunicar con nosotros por medio de las redes sociales.</p>
      </div>
      <div class="col-lg-6">
        <img class="img-fluid rounded" src="../../Recursos/Pic05.png" alt=""/>
      </div>
    </div>
    <!-- /.row -->

    <hr/>

    <!-- Call to Action Section -->
    <div class="row mb-4">
      <div class="col-md-8">
        <p>Sólo se tiene que registrar una vez en nuestra aplicación web para usar todos los servicios de Let's Go: Private Service. La acticación de la cuenta es inmediata. ¡Utilice el servicio ahora!</p>
      </div>
      <div class="col-md-4">
        <a class="btn btn-lg btn-secondary btn-block" href="../Seguridad/wfrm_Login_Seguridad.aspx">Sign Up</a>
      </div>
    </div>

  </div>
  <!-- /.container -->

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
