<%@page import="javax.swing.JOptionPane"%>
<%@page import="conexion.Conexion"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PRODUCTOS</title>
<link rel="stylesheet" href="css/estilo_3.css">
<script src="https://kit.fontawesome.com/5c755a5e47.js" crossorigin="anonymous"></script>

</head>
<body>
	
	
	
<!-- CAPA CONTENEDORA PRINCIPAL -->
<header id="header">
<center><i class="fas fa-sign-out-alt"></i><jsp:include page="encabezado.jsp" />
<center><font color= "#27AE60"> <i class="fas fa-users"></i>  Bienvenido ${sessionScope.usuario.nombre}</font>
</header>
		
<!-- CAPA CONTENEDORA MENU IZQUIERDO WEB -->
<sidebar id="sidebar">

<hr><marquee direction="right" behavior=scroll scrollamount="10">

<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7WkKHxLECkZfZzY4YDzvlZfk9EbEXqVWGm7n183-jxKafpBFBGRgjpSSBxUmDl5pZBAs&usqp=CAU"onmouseover="this.width= 200;this.height=200;"onmouseout = "this.width=80; this.height=80;"width="100" height = "100"/>
<img src="https://ideakreativa.net/wp-content/uploads/2020/04/inversiones-tiempo-es-ilustracion-dinero-estilo-plano_126608-30.jpg"onmouseover="this.width=200;this.height=200;"onmouseout = "this.width=80; this.height= 80;"width="100" height = "100"/>
<img src="https://c8.alamy.com/compes/k3nwbm/los-empresarios-financiar-inversiones-ilustracion-vectorial-k3nwbm.jpg"onmouseover="this.width= 200;this.height=200;"onmouseout = "this.width=80; this.height=80;"width="100" height = "100"/>
<img src="https://static.vecteezy.com/system/resources/previews/002/139/344/non_2x/investments-flat-illustration-for-banner-business-solution-web-page-analysis-of-sales-statistic-grow-data-accounting-innovative-ideas-and-cash-profits-concept-vector.jpg"onmouseover="this.width=200;this.height=200;"onmouseout = "this.width=80; this.height=80;"width="100" height = "100"/>
<img src="https://www.frre.utn.edu.ar/tsp/clean/files/get/item/681"onmouseover="this.width=200;this.height=200;"onmouseout = "this.width=80; this.height=80;"width="100" height = "100"/>
<img src="https://www.insights.la/wp-content/uploads/2019/01/Destacada-tendencias-innovadoras-diseno-web-2019-.jpg"onmouseover="this.width=200;this.height=200;"onmouseout = "this.width=80; this.height=80;"width="100" height = "100"/>
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5aEDOIj4ogoQ0cD28XvVsRgRaDtwUc_CGo-IU69mnGsa7IDWJjvTWS4N4q1Ur2sumbtM&usqp=CAU"onmouseover="this.width=200;this.height=200;"onmouseout = "this.width=80; this.height=80;"width="100" height = "100"/>
<img src="https://metrica.pe/blog/wp-content/uploads/2019/10/meat-n-carne.jpg"onmouseover="this.width=200;this.height=200;"onmouseout = "this.width=80; this.height=80;"width="100" height = "100"/>

</marquee>
</sidebar>

<%
Conexion con=new Conexion();
con.getConexion();
String d="",u="",c="",r="",e="";
if(request.getParameter("doc")!=null){
d=request.getParameter("doc");
u=request.getParameter("us");
c=request.getParameter("cl");
r=request.getParameter("ro");
e=request.getParameter("es");
//JOptionPane.showMessageDialog(null, d+u+c+r+e);
}
%>

<div class= "usuario"">
<form action="ServletGestionUsuario" method="post">

<table width="55%" align="center" class="table">
  <thead>
    <tr>
      <th style=" border: inset 0pt" colspan="5" scope="col"><center>
        <h2><font color= "#27AE60">Productos</h2></th>
    </tr>
  </thead>
  <tbody><!--background= "img//images (2).jpg"> -->
    
    <tr>
      <th style=" border: inset 0pt" scope="row"><i class="far fa-address-card"></i> Codido_producto</th>
      <td style=" border: inset 0pt"><i class="fas fa-american-sign-language-interpreting"></i> <b>Nombre_producto</b></td>
      <td style=" border: inset 0pt"><i class="fas fa-lock"></i> <b>Nit_proveedor</b></td>
      <td style=" border: inset 0pt" width="11%" colspan="2" rowspan="5">&nbsp;</td>
      </tr>
    <tr>
      <th style=" border: inset 0pt"scope="row"><input type="text" name="doc"  value="<%=d%>" placeholder = " # CODIGO" /></th>
      <td style=" border: inset 0pt"><input type="text" name="est"  value="<%=e%>"placeholder = "PRODUCTO" /></td>
      <td style=" border: inset 0pt"><input type="password" name="cla"  value="<%=c%>"placeholder = "NIT PROVEEDOR" /></td>
      </tr>
    <tr>
      <th style=" border: inset 0pt" width="36%" scope="row"><i class="fas fa-user-tie"></i> <b>Precio_compra</b></th>
      <td style=" border: inset 0pt"width="28%"><i class="fas fa-network-wired"></i> <b>Iva</b></td>
      <td style=" border: inset 0pt"width="28%"><i class="fas fa-network-wired"></i> <b>Precio_venta</b></td>
      <td style=" border: inset 0pt" width="25%">&nbsp;</td>
      </tr>
    <tr>
      <th style=" border: inset 0pt" scope="row"><input type="text" name="usu"  value="<%=u%>" placeholder = "PRECIO DE COMPRA" /></th>
      <td style=" border: inset 0pt"><input type="text" name="rol"  value="<%=r%>"placeholder = "PRODUCTO" /></td>
      <td style=" border: inset 0pt"><input type="text" name="rol"  value="<%=r%>"placeholder = "PRECIO DE VENTA" /></td>
      <td style=" border: inset 0pt">&nbsp;</td>
      </tr>
    <tr>
      <th style=" border: inset 0pt" scope="row">&nbsp;</th>
      <td style=" border: inset 0pt">&nbsp;</td>
      <td style=" border: inset 0pt">&nbsp;</td>
      </tr>
    <tr>
        <th style=" border: inset 0pt" colspan="5" scope="row"><center><input type="submit" name="btnins" value="Registrar" class="btn btn-primary" />
        <input style=" border: inset 0pt" type="submit" name="btncon" value="Consultar" class="btn btn-secondary" />
        <input  style=" border: inset 0pt"type="submit" name="btnact" value="Actualizar" class="btn btn-success" />
        <input  style=" border: inset 0pt"type="submit" name="btneli" value="Eliminar" class="btn btn-danger" /></th>
        
       
<a style=" border: inset 0pt" href="http://localhost:8090/Proyecto_Tienda_Web/principal.jsp"><i class="fas fa-undo"></i> Ir al inicio </a> &nbsp;&nbsp;&nbsp;
<a style=" border: inset 0pt" href="http://localhost:8090/Proyecto_Tienda_Web/Usuarios.jsp"><i class="far fa-newspaper"></i> Nuevo producto</a>
    
    </tr>
  </tbody>
</table>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>

				
</body>
</html>