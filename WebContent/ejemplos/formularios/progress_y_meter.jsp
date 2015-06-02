<jsp:include page="../../plantillas/head.jsp"></jsp:include>

<h2>Ejemplo Etiquetas Progress y Meter</h2>

<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<div id="canvas">
	<section>
		<fieldset>
			<legend>Meter</legend>
		<meter value="2" min="0" max="10">2 out of 10</meter><br>
		<meter value="0.6">60%</meter>
		</fieldset>
		<fieldset>
			<legend>Progress</legend>
				<progress max="100"></progress>
		</fieldset>
	</section>
	<div class="clearfix"></div>
	

</div>		
	
<jsp:include page="../../plantillas/footer.jsp"></jsp:include>