<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Nosotros_Otros.aspx.cs" Inherits="PL.Paginas.Otros.wfrm_Nosotros_Otros" %>

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
    <h1 class="mt-4 mb-3">Acerca de
      <small>Nosotros</small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="wfrm_Publico_Otros.aspx">Inicio</a>
      </li>
      <li class="breadcrumb-item active">Nosotros</li>
    </ol>

    <!-- Intro Content -->
    <div class="row">
      <div class="col-lg-6">
        <img class="img-fluid rounded mb-4" src="../../Recursos/Pic05.png" alt=""/>
      </div>
      <div class="col-lg-6">
        <h2>Nuestra Historia</h2>
        <p>“Let’s Go” es una empresa de capital costarricense, 
            fundada en el año 2010 por un grupo de empresarios 
            dedicados al negocio del transporte privado en el 
            país y la región centroamericana.  </p>
        <p>Nuestra compañía se apoya en la tecnología moderna 
            y en el increíble y diverso capital humano que se 
            puede encontrar en cualquier rincón del país. Tomando 
            como premisa, el generar opciones de empleo para cientos 
            de personas que quieran colaborar a la economía y al 
            crecimiento de sus familias. </p>
        <p>En “Let’s Go” nos sentimos orgullos de poder llevar 
            a nuestros clientes y colaboradores un paso más cerca 
            de alcanzar sus metas y objetivos. Por lo tanto 
            deseamos ser una opción viable innovadora y segura 
            que fomente a más personas a ser parte de nuestro proyecto.</p>
      </div>
    </div>
    <!-- /.row -->

    <!-- Team Members -->
    <h2>Tenemos</h2>

    <div class="row">
      <div class="col-lg-4 mb-4">
        <div class="card h-100 text-center">
            <h4 class="card-header">Valores</h4>
          <div class="card-body">
            <p class="card-text">Respeto, honestidad, humildad, amor y puntualidad.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100 text-center">
            <h4 class="card-header">Misión</h4>
          <div class="card-body">
            <p class="card-text">En “Let’s Go”, queremos ofrecerles a nuestros 
                clientes y colaboradores mucho más que una herramienta 
                tecnológica, queremos ser la primera opción a su necesidad de 
                transporte, al darle a nuestros usuarios un servicio seguro y de calidad. </p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mb-4">
        <div class="card h-100 text-center">
            <h4 class="card-header">Visión</h4>
          <div class="card-body">
            <p class="card-text">Nuestro objetivo es ser la empresa número uno 
                en la preferencia de nuestros clientes, abarcando un mercado 
                amplio y diverso, libre de cualquier tipo de discriminación, 
                siendo ciento por ciento inclusivos a toda la población.</p>
          </div>
        </div>
      </div>
    </div>
    <!-- /.row -->

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
