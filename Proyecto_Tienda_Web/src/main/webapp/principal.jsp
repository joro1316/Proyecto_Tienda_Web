<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PRINCIPAL</title>
<!-- <link rel="stylesheet" href="css/estilos_1.css"> 
<link rel="stylesheet" href="css/estilos_2.css" />-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" type="text/javascript"></script>
<script src="https://kit.fontawesome.com/5c755a5e47.js" crossorigin="anonymous"></script>

</head>
<body>
		
<!-- CAPA CONTENEDORA PRINCIPAL -->
<div id="main-content">

<!-- CAPA CONTENEDORA CABEZOTE WEB -->
<header id="header">
<center><i class="fas fa-sign-out-alt"></i><jsp:include page="encabezado.jsp" />
<center><font color= "#27AE60"><i class="fas fa-users"></i> Bienvenido ${sessionScope.usuario.nombre}</font>
</header>
</div>		
		<!-- CAPA CONTENEDORA MENU DE NAVEGACION WEB -->

<nav id="nav">
<nav class="navbar navbar-expand-lg navbar-dark bg-info">
<div class="container-fluid">
<a class="navbar-brand" href="#">Menu Tienda</a>

<div class="collapse navbar-collapse" id="navbarSupportedContent">
<ul class="navbar-nav me-auto mb-2 mb-lg-0">
<li class="nav-item"><a 
style="margin-center: 10px; border: none"class="btn btn-outline-light" aria-current="page"
href="principal.jsp">Inicio</a></li>

<li class="nav-item"><a
style="margin-left: 10px; border: none"
class="btn btn-outline-light" href="Usuarios.jsp">Usuarios</a></li>


<li class="nav-item"><a
style="margin-left: 10px; border: none"
class="btn btn-outline-light" href="Clientes.jsp">Clientes</a></li>


<li class="nav-item"><a
style="margin-left: 10px; border: none"
class="btn btn-outline-light" href="Proveedores.jsp">Proveedores</a></li>


<li class="nav-item"><a
style="margin-left: 10px; border: none"
class="btn btn-outline-light" href="Productos.jsp">Productos</a></li>


<li class="nav-item"><a
style="margin-left: 10px; border: none"
class="btn btn-outline-light" href="RegistrarVenta.jsp">Ventas</a></li>


<li class="nav-item"><a
style="margin-left: 10px; border: none"
class="btn btn-outline-light" href="Reportes.jsp">Reportes</a></li>
</ul>
</div>
</div>
</nav>
</nav>

	<br><br>

<H1><center>FUNDADORES</H1><br>

<center><div class="col-lg-2 col-md-5 mb-3" style="max-width: 30rem">
<div class="card">
<img class="card-img-top watermarked" src="img//meat-n-carne.jpg" alt="">
<div class="card-body">
<h5 class="card-title"><i class="fas fa-users-cog"></i> Equipo # 13</h5>
		<p class="card-text"><i class="fas fa-female"></i> Angie Hernandez</p>
        <p class="card-text"><i class="fas fa-male"></i> Ivan Gomez</p>
        <p class="card-text"><i class="fas fa-male"></i> John Gomez</p>
        <p class="card-text"><i class="fas fa-male"></i> Roberto Gonzalez</p>
        </div>
</div>

<br><br>

<h3><CENTER>AGRADECIMIENTOS A:</h3>

    <div class="card">
    <img class="card-img-top watermarked" src="img//images.png" alt="Universidad del bosque">
      <div class="card-body">
        <h5 class="card-title"><i class="fas fa-university"></i> UNIVERSIDAD DEL BOSQUE</h5>
        <p class="card-text"><i class="fas fa-map-signs"></i> Av. Cra. 9 No. 131 A - 02 Bogotá, Colombia</p>
        <p class="card-text"><i class="fas fa-phone-square-alt"></i> Línea gratuita: 018000 113033</p>
        <p class="card-text"><i class="fas fa-phone-square-alt"></i> PBX: (571) 648 9000</p>
        <p class="card-text"> <i class="fab fa-skype"></i> Skype: /uelbosque</p>
        <p class="card-text"> <i class="fas fa-envelope-open-text"></i> atencionalusuario@unbosque.edu.co</p>
        <p class="card-text"><i class="fab fa-whatsapp-square"></i> Whatsapp:+57317 3889587 </p>

      </div>
    </div>

 
<br><br>


    <div class="card">
    <img class="card-img-top watermarked" src="img//descarga.png" alt="Mintic">
      <div class="card-body">
        <h5 class="card-title"><i class="fas fa-gopuram"></i> MINTIC</h5>
        <p class="card-text"><i class="fas fa-map-signs"></i>  Cra. 8a entre calles 12A y 12B Bogotá, Colombia</p>
        <p class="card-text"><i class="fas fa-phone-square-alt"></i> Línea gratuita: 01-800-0914014</p>
        <p class="card-text"><i class="fas fa-phone-square-alt"></i> Tel: +57 601 344 34 60</p>
        <p class="card-text"> <i class="fas fa-envelope-open-text"></i> minticresponde@mintic.gov.co</p>
          
      </div>
    </div>
  </div>
<br>  
<footer>
 © Derechos de autor

</footer>      
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous" type="text/javascript"></script>
</body>
</html>