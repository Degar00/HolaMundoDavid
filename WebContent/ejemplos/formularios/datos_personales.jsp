<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<div id="datos_personales">
<h1>Login</h1>

<jsp:include page="../../plantillas/nav.jsp"></jsp:include>
<form name="datos_personales" action="ejemplos/formularios/controlador_dp.jsp" method="POST">
		<fieldset>
			<legend>Datos personales</legend>
			<label for="nombre">Nombre: </label>
			<input type="text" name="nombre" id="nombre" value="" 
			placeholder="Escriba su nombre" required="required"
			 pattern="[a-zA-ZáéíóúñÁÉÍÓÚÑ]{2,256}" />
			<label for="apellidos">Apellidos: </label>
			<input type="text" name="apellidos" id="apellidos" value="" placeholder="Escriba sus apellidos" 
			required="required"
			pattern="([a-zA-ZÁÉÍÓÚñáéíóú]{3,256}[\s]*)+"
 			oninvalid="setCustomValidity('Debe introducir sus dos apellidos')"/>
			<label for="edad">Edad: </label>
			<input type="text" required="required" pattern="[0-9]{1,2}" name="edad" id="edad" value="" placeholder="0-99" size="2" maxlength="2"/>
			<br/>
			<br/>
			<label for="rol">Rol: </label>
			<input type="text" name="rol" id="rol" value="usuario" placeholder="Escriba su rol" disabled="disabled"/>
			<label for="rol">Profesion: </label>
			<input type="text" name="profesion" id="profesion" value="Becario" placeholder="Escriba su profesion" readonly="readonly"/>
		</fieldset>
		<br/>
		<br/>
		<fieldset>
			<legend>Nacionalidad</legend>
			<select name="nacionalidad" multiple="multiple" size="10">
			<%
				for (int i = 1; i < 101; i++) {
					out.print("<option value='" + i + "'>Pais " + i + "</option>");
				}
			%>

		</select>
		</fieldset>
		<br/>
		<br/>
		<fieldset>	
			<legend>Sexo</legend>
			<input type="radio" name="sexo" value="h" /><label>Masculino</label>
			<input type="radio" name="sexo" value="m"/><label>Femenino</label>
			<input type="radio" name="sexo" value="i" checked="checked"/><label>Indefinido</label>
		</fieldset>

		<br/>
		<br/>

		<fieldset>		
			<legend>Conocimientos</legend>
			<input type="checkbox" name="conocimientos" value="0" checked="checked"><label>HTML</label>
			<input type="checkbox" name="conocimientos" value="1"><label>JS</label>
			<input type="checkbox" name="conocimientos" value="2" checked="checked"><label>CSS</label>
			<input type="checkbox" name="conocimientos" value="3"><label>JQuery</label>
			<input type="checkbox" name="conocimientos" value="4"><label>Java</label>
		</fieldset>
		<br/>
		<br/>
	<fieldset>
		<legend>Gusto musical</legend>
		<select name="musica" multiple="multiple" size="10">
			<optgroup label="Rock">
				<option value="r1">Rock1</option>
				<option value="r2">Rock2</option>
				<option value="r3">Rock3</option>
			</optgroup>
			<optgroup label="Folk">
				<option value="f1">Folk1</option>
				<option value="f2">Folk2</option>
				<option value="f3">Folk3</option>
			</optgroup>
			<optgroup label="Pop" disabled="disabled">
				<option value="p1">Pop1</option>
				<option value="p2">Pop2</option>
				<option value="p3">Pop3</option>
			</optgroup>
		</select>
	</fieldset>
	<br/>
		<br/>
		<fieldset>
			<legend>Curriculum Vitae</legend>
			<textarea name="cv" id="cv" rows="10" cols="40" placeholder="Introduce tu cv en texto plano (minimo 50 caracteres)"></textarea>
		</fieldset>
		<input type="submit" value="Enviar" />
		<input type="reset" value="Reset" />
	
	</form>
	</div>
<jsp:include page="../../plantillas/footer.jsp"></jsp:include>