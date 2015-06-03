<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<div id="login">
	<h1>Login</h1>

	<jsp:include page="../../plantillas/nav.jsp"></jsp:include>


	<form name="login" action="ejemplos/formularios/controlador.jsp"
		method="POST">

		<label for="usuario">Escribe tu usuario:</label> <input type="text"
			name="usuario" id="usuario" value="" placeholder="Escriba su nombre" />

		<br /> <label for="pass">Escribe tu password:</label> <input
			type="password" name="pass" id="pass" value="" /> <br /> <input
			type="submit" value="Acceder" />

	</form>
</div>
<jsp:include page="../../plantillas/footer.jsp"></jsp:include>