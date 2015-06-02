
<h1>Soy un controlador</h1>

<%

//Controlador para recoger parametros del forumlario de login.jsp

//recoger parametros de la request

String p1 = (String)request.getParameter("usuario");
String p2 = (String)request.getParameter("pass");

//pintar los datos
out.print ("<p>Nombre: "+p1+"</p>");
out.print ("<p>Pass: "+p2+"</p>");

%>