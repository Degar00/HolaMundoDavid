<jsp:include page="plantillas/head.jsp"></jsp:include>

<div id="index">
	<header>
	<h1>Ejemplos HTML, CSS3 y JS</h1>
	
	<jsp:include page="plantillas/nav.jsp"></jsp:include>
	</header>
	
	<hr/>
	<div id="content">
	<section>
		<img id="suerte" src="images/buena_suerte.jpg" alt="Buena suerte" title="Buena suerte"/>
		<h2>El afortunado en leer es el:</h2>
		<div id="div_afortunado">
			<label id="afortunado" class="numero">Afortunado@</label>
			<br/>
			<input type="button" value="Obtener nuev@ afortunad@" id="btn_ganador" name="btn_ganador" onclick="obtener_ganador();" />
		</div>
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
</section>
<aside>
	<h3>Enlaces de interes</h3>
	<ul>
		<li><a href="http://www.caniuse.com" target="_blank">Can I Use</a>
		<li><a href="http://www.formacion.ipartek.com/campus" target="_blank">Campus Ipartek</a>
		<li><a href="http://github.com" target="_blank">GitHub</a>
		<li><a href="http://librosweb.es/libro/css/" target="_blank">CSS Basico</a>
		<li><a href="http://librosweb.es/libro/css_avanzado/" target="_blank">CSS Avanzado</a>
	</ul>
</aside>
<div class=clearfix></div>
</div>
<footer>
	<span class="copy">@Copyright</span>
	<ul id="list_paginas">
		<li><a href="#" target="_blank">Contacto</a></li>
		<li><a href="#" target="_blank">Aviso legal</a></li>
	</ul>
	<ul class="social_links">
		<li><a href="#" target="_blank">Facebook</a></li>
		<li><a href="#" target="_blank">G+</a></li>
		<li><a href="#" target="_blank">Twitter</a></li>
		<li><a href="#" target="_blank">Youtube</a></li>
	</ul>
</footer>
</div> <!-- index -->
<jsp:include page="plantillas/footer.jsp"></jsp:include>