<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfrm_Servicios_Otros.aspx.cs" Inherits="PL.Paginas.Otros.wfrm_Servicios_Otros" %>

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
    <h1 class="mt-4 mb-3">Servicios
      <small>by Let´s Go</small>
    </h1>

    <ol class="breadcrumb">
      <li class="breadcrumb-item">
        <a href="wfrm_Publico_Otros.aspx">Inicio</a>
      </li>
      <li class="breadcrumb-item active">Servicios</li>
    </ol>

    <div class="row">

      <!-- Post Content Column -->
      <div class="col-lg-8">

        <!-- Preview Image -->
        <img class="img-fluid rounded" src="../../Recursos/Pic06.png" alt=""/>

        <hr/>

        <!-- Post Content -->
        <p class="lead">El servicio que ofreceremos será el de transporte privado, con previo registro 
            o afiliación al sistema, con vehículos de 5, a 7 pasajeros como máximo y con una flotilla 
            de automóviles en condiciones excepcionales para transitar por cualquier carretera del país.</p>

        <p>Entre los requerimientos que deben cumplir nuestros colaboradores se establecerá que, los 
            vehículos deben contar con todos los rubros de ley al día, según las normas que rige el 
            estado costarricense, y como mínimo se les pedirá a nuestros colaboradores que deben de 
            tener su vehículo debidamente inscrito ante el registro público de la propiedad, con un 
            número de placa asignado por dicha institución, además debe contar con el derecho de circulación 
            al día, al igual que la revisión técnica vehicular.</p>

        <p>Las personas interesadas en trabajar con nosotros deberán de contar con licencia de conducir 
            al día, y la antigüedad de su vehículo no podrá ser mayor a los diez años a partir de la 
            fecha de inicio de actividades con nuestra empresa. </p>

        <blockquote class="blockquote">
          <p class="mb-0">El vehículo deberá de mantenerse en condiciones optimas para prestar un 
              servicio de transporte, por lo tanto, el mantenimiento adecuado del vehículo es de suma importancia.</p>
          <footer class="blockquote-footer">El requisito más
            <cite title="Source Title">Importante</cite>
          </footer>
        </blockquote>

        <p>Pensando en la seguridad de nuestros colaboradores y usuarios, se le pedirá al dueño del 
            vehículo que debe de contar con una póliza. Esta póliza deberá de cubrir a los ocupantes 
            del automóvil, así como a terceros involucrados en cualquier incidente. </p>

        <p>Se ofrecerá una opción que permitirá al usuario escoger su tipo de perfil, ya sea como 
            conductor o como cliente, en ambas opciones se pedirá un previo registro, el cual será 
            para almacenar la información que se le solicitara y además servirá como filtro para 
            escoger las opciones que se le presentaran en la siguiente pantalla.</p>

          <p>Para llevar un control adecuado en el sistema, se implementará la creación de una base de 
              datos que se encargará de almacenar la información de nuestros colaboradores, dicha 
              información será de utilidad a la hora de que el cliente contrate el servicio, ya que le 
              mostrará el nombre del conductor, la matrícula del vehículo, color, marca, la tarifa estimada 
              y el lugar de destino, de manera que el cliente tenga la información básica del viaje. </p>

          <p>De igual manera se va a almacenar la información del cliente, quien previamente se deberá de 
              registrar en el sistema, lo que permitirá tener sus datos personales a la hora de hacer el 
              viaje. Se requerirá por parte del usuario que agregue su nombre completo, identificación, 
              correo, teléfono, la forma de pago, destino inicial y el destino final. </p>

          <p>El sistema ofrecerá la opción al usuario de agregar varias solicitudes de viaje al mismo 
              tiempo, las cuales quedarán sujetas a confirmación. Por lo tanto, a cada viaje se le 
              asignará a un conductor diferente una vez confirmado el servicio.</p>

          <p>La tarifa de nuestros servicios será calculada por kilometraje, por lo que se establecerá 
              un monto de 400 colones (moneda de circulación vigente del estado costarricense) el 
              kilómetro adicional, y una tarifa base de 600 colones como base de cualquier viaje.</p>

        <hr/>

      </div>

      <!-- Sidebar Widgets Column -->
      <div class="col-md-4">

        <!-- Image Widget -->
        <div class="card mb-4">
          <h5 class="card-header"></h5>
          <div class="card-body">
            <img class="card-img-top" src="../../Recursos/Pic01.png" alt=""/>
          </div>
        </div>

        <!-- Features Widget -->
        <div class="card my-4">
          <h5 class="card-header">Características</h5>
          <div class="card-body">
            <div class="row">
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="wfrm_Caracteristicas_Otros.aspx">Método de Pago</a>
                  </li>
                  <li>
                    <a href="wfrm_Caracteristicas_Otros.aspx">Calificación</a>
                  </li>
                  <li>
                    <a href="wfrm_Caracteristicas_Otros.aspx">Seguridad</a>
                  </li>
                </ul>
              </div>
              <div class="col-lg-6">
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="wfrm_Caracteristicas_Otros.aspx">Económico</a>
                  </li>
                  <li>
                    <a href="wfrm_Caracteristicas_Otros.aspx">Buen Servicio</a>
                  </li>
                  <li>
                    <a href="wfrm_Caracteristicas_Otros.aspx">Facturación</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

        <!-- Side Widget -->
        <div class="card my-4">
          <h5 class="card-header">Resumen</h5>
          <div class="card-body">
            <p>Innovamos el servicio de transporte privado para brindar a nuestros usuarios 
                la comodidad y seguridad de viajar con Let´s Go. Antes de iniciar el viaje, 
                se calcula la ruta más rapida y corta para crear un servicio eficaz y eficiente.</p>
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
