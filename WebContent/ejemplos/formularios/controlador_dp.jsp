<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>Datos Personales</h1>

<%
	//Controlador para recoger parametros del forumlario de login.jsp

	//recoger parametros de la request
	request.setCharacterEncoding("UTF-8");
	String p1 = request.getParameter("nombre");
	String p2 = (String) request.getParameter("apellidos");
	String p3 = (String) request.getParameter("edad");
	String p4 = (String) request.getParameter("sexo");
	String[] p5 = request.getParameterValues("conocimientos");
	String[] p6 = request.getParameterValues("nacionalidad");
	String[] p7 = request.getParameterValues("musica");
	String p8 = (String)request.getParameter("cv");

	//pintar los datos
	out.print("<p>Nombre: " + p1 + "</p>");
	out.print("<p>Apellidos: " + p2 + "</p>");
	out.print("<p>Edad: " + p3 + "</p>");
	out.print("<p>Sexo: " + p4 + "</p>");
	
	out.print("<p>Conocimientos: </p>");
	if (p5 != null) {
		out.print("<ul>");
		for (int i = 0; i < p5.length; i++) {
			out.print("<li>" + p5[i] + "</li>");
		}
		out.print("</ul>");
	} else {
		out.print("Eres un patan!!");
	}
	
	out.print("<p>Nacionalidades: </p>");
	if (p6 != null) {
		out.print("<ul>");
		for (int i = 0; i < p6.length; i++) {
			out.print("<li>" + p6[i] + "</li>");
		}
		out.print("</ul>");
	} else {
		out.print("No existes!!");
	}
	
	out.print("<p>Gustos musicales: </p>");
	if (p7 != null) {
		out.print("<ul>");
		for (int i = 0; i < p7.length; i++) {
			out.print("<li>" + p7[i] + "</li>");
		}
		out.print("</ul>");
	} else {
		out.print("No tienes gusto musical!!");
	}
	
	out.print("<p>Curriculum Vitae: " + p8 + "</p>");
%>