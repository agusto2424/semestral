<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
  	<meta charset="UTF-8" />
 	 <meta name="viewport" 						content="width=device-width, 				initial-scale=1.0" />
 	 <link rel="stylesheet" href="style.css">
  <title>resultados</title>
	</head>
    <body>
            <header>
        <div class="banner">
            <div class="logo">
                <img src="logo.png" alt="Logo SOLOCIENCIA.COM">
            </div>
            <div class="iconos">
                <a href="https://www.google.com/"><img src="icono1.png" alt="Icono de Búsqueda"></a>
                <a href="https://instagram.com/solociencia.com23?igshid=MzNlNGNkZWQ4Mg=="><img src="icono2.png" alt="Icono de Instagram"></a>
                <a href="https://www.facebook.com/profile.php?id=100093560545559&mibextid=LQQJ4d"><img src="icono3.png" alt="Icono de Facebook"></a>
            </div>
        </div>
    </header>
        <h2>Iniciar Sesion </h2><br>

        <section>
            <% String usuario = request.getParameter("usuario");%>
            <% String contrasena = request.getParameter("contrasena");%>
            
            
            

<%@ page import="java.sql.*" %>
<%
   try {
      Class.forName("com.mysql.cj.jdbc.Driver");
      Connection dbconect = DriverManager.getConnection("jdbc:mysql://localhost:3306/semestral", "root", "");
		
      PreparedStatement consultaP = dbconect.prepareStatement("SELECT * FROM perfil WHERE usuario=? AND contrasena=?");
      consultaP.setString(1,usuario);
      consultaP.setString(2,contrasena);
      
      ResultSet resultado = consultaP.executeQuery();
      
      if(resultado.next())
    	  out.print("<h2>usuario correcto</h2>" + " <br> <div class=\"enlaceboton\"><a href=\"Inicio.html\" class=\"botonenlace\">VOLVER</a></div>");
			
      else
    	  out.print("<h2>Usuario incorrecto </h2> " + " <br> <div class=\"enlaceboton\"><a href=\"Sign Up.html\" class=\"botonenlace\">REGRISTRARSE</a></div>");
      
   } catch (Exception e) {
     out.print("Error en la conexion: " + e.getMessage());} %>
        </section>
            
      
       <footer>
    <ul class="menuinferior">
        <li><a href="Inicio.html">INICIO</a></li>
        <li><a href="Ciencias Naturales.html">REGISTRARSE EN EL CURSO DE CIENCIAS NATURALES</a></li>
        <li><a href="Química y Biología.html">REGISTRARSE EN EL CURSO DE QUÍMICA Y BIOLOGÍA</a></li>
        <li><a href="Programación.html">REGISTRARSE EN EL CURSO DE DE PROGRAMACIÓN</a></li>
        <li><a href="Página Referencias.html">REFERENCIAS</a></li>
        <li><a href="Contáctanos.html">CONTÁCTANOS</a></li>
    </ul>
    <p>Copyright (C) 2023 SOLOCIENCIA.COM<br>Todos los derechos reservados<br></p>
<div class="salir">
    <a href=".html"><img src="icono4.png" alt="Icono de Cerrar Sesión"></a>
</div>
</footer>
    </body>

</html>