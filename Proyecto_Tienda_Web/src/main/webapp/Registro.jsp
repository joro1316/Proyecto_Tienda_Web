<%@page import="javax.swing.JOptionPane"%>
<%@page import="conexion.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>USUARIOS</title>

<link rel="stylesheet" href="css/estilos_2.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/5c755a5e47.js" crossorigin="anonymous"></script>
</head>

<body><!--  background="img//meat-n-carne.jpg"> -->

<!-- CAPA CONTENEDORA CABEZOTE WEB -->

<%
Conexion con=new Conexion();
con.getConexion();
String d="",u="",c="",r="",e="";
if(request.getParameter("us")!=null){
d=request.getParameter("us");
c=request.getParameter("cl");

//JOptionPane.showMessageDialog(null, d+u+c+r+e);
}
%>

<div class= "usuario"">
<form action="ServletGestionUsuario" method="post">

<table width="55%" align="center" class="table">
  <thead>
    <tr>
      <th style=" border: inset 0pt" colspan="5" scope="col"><center>
        <h2><font color= "#27AE60">Formulario de  Registro Usuarios</h2></th>
    </tr>
  </thead>
  <tbody><!--background= "img//images (2).jpg"> -->
    
    <tr>
      <th style=" border: inset 0pt" width="36%" scope="row"><i class="fas fa-user-tie"></i> <b>Nombres - Apellidos</b></th>
      <td style=" border: inset 0pt"><i class="fas fa-lock"></i> <b>Clave</b></td>
      <td style=" border: inset 0pt" width="11%" colspan="2" rowspan="5">&nbsp;</td>
      </tr>
    <tr>
      <th style=" border: inset 0pt" scope="row"><input type="text" name="usu"  value="<%=u%>" placeholder = " # NOMBRE COMPLETO" /></th>
      <td style=" border: inset 0pt"><input type="password" name="cla"  value="<%=c%>"placeholder = "PASSWORD" /></td>
      </tr>
    <tr>
      
    <tr>
      <th style=" border: inset 0pt" scope="row">&nbsp;</th>
      <td style=" border: inset 0pt">&nbsp;</td>
      <td style=" border: inset 0pt">&nbsp;</td>
      </tr>
    <tr>
        <th style=" border: inset 0pt" colspan="5" scope="row"><center><input type="submit" name="btn1" value="Registrar" class="btn btn-primary" />
              
       
&nbsp;&nbsp;&nbsp;<a style=" border: inset 0pt" href="http://localhost:8090/Proyecto_Tienda_Web/principal.jsp"><i class="fas fa-undo"></i> Ir al inicio </a> &nbsp;&nbsp;&nbsp;
<a style=" border: inset 0pt" href="http://localhost:8090/Proyecto_Tienda_Web/Usuarios.jsp"><i class="far fa-newspaper"></i> Nueva consulta</a>
    
    </tr>
  </tbody>
</table>
</form>
</div>

</body>
</html>