<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<link rel="stylesheet" href="js/jquery-ui-1.11.4.custom/jquery-ui.css">



<jsp:include page="../../plantillas/nav.jsp"></jsp:include>
<div id="datalist">
<h2>Ejemplo Etiqueta datalist</h2>
	<section>
		<article>
			<header><h1>Datalist</h1></header>
			<div class="cnt_article">
				<p>El soporte para el elemento <mark>&lt;datalist&gt;</mark> no esta del todo extendido</p>
				<fieldset>
					<legend>datalist</legend>
					
					<input list="datalist">
					
					<datalist id="datalist">
					  	<%
						for (int i = 1; i < 201; i++) {
							out.print("<option value='" + i + "'>Valor " + i + "</option>");
						}
						%>
					</datalist>			
				</fieldset>
 			</div><!--cnt_article -->
			<footer>
				<a href="http://caniuse.com/#feat=datalist" target="_blank">Soporte para navegadores</a>
			</footer>
		</article>
		<article>
			<header><h1>Select option + plugin</h1></header>
			<p>Podemos simular el comportamiento de un <mark>&lt;datalist&gt;</mark> con un select option usando un plugin de jquery</p>
			<fieldset>
				<legend>lista+plugin</legend>
				<select id="lista_select" size="10">
					<%
						for (int i = 1; i < 201; i++) {
							out.print("<option value='" + i + "'>Valor " + i + "</option>");
						}
					%>
				</select>
				<button id="toggle">Show underlying select</button>
			</fieldset>
			<footer>
				<a href="#" target="_blank">Soporte para navegadores</a>
			</footer>
		</article>
	</section>
	<div class="clearfix"></div>
</div>
<jsp:include page="../../plantillas/footer.jsp"></jsp:include>