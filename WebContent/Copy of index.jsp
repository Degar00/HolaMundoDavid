<jsp:include page="plantillas/head.jsp"></jsp:include>

<div id="index">
	
	<h1>Pagina Ongi Etorri</h1>
	
	<jsp:include page="plantillas/nav.jsp"></jsp:include>

	<hr/>
	<br/>
	<img id="suerte" src="images/buena_suerte.jpg" alt="Buena suerte" title="Buena suerte"/>
	<h1>El afortunado en leer es el:</h1>
	<label id="afortunado" class="numero">Afortunado@</label>
	<br/>
	<input type="button" value="Obtener nuev@ afortunad@" id="btn_ganador" name="btn_ganador" onclick="obtener_ganador();" />

	<br/>
	<br/>
	
	<table class="tabla_azul" id="tabla">
	  <tr>
		<td colspan=4 class="celda" id="celda0"></td>
	  </tr>
	  <tr>
		<td class="celda" id="celda1"></td>
		<td class="celda" id="celda2"></td>
		<td class="celda" id="celda3"></td>
		<td class="celda" id="celda4"></td>
	  </tr>
	  <tr>
		<td class="celda" id="celda5"></td>
		<td class="celda" id="celda6"></td>
		<td class="celda" id="celda7"></td>
		<td class="celda" id="celda8"></td>
	  </tr>
	  <tr>
		<td class="celda" id="celda9"></td>
		<td class="celda" id="celda10"></td>
		<td class="celda" id="celda11"></td>
		<td class="celda" id="celda12"></td>
	  </tr>
	  <tr>
		<td class="celda" id="celda13"></td>
		<td class="celda" id="celda14"></td>
		<td class="celda" id="celda15"></td>
		<td class="celda" id="celda16"> </td>
	  </tr>
	</table>

</div> <!-- index -->
<jsp:include page="plantillas/footer.jsp"></jsp:include>