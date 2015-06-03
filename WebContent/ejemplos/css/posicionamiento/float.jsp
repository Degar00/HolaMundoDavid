<jsp:include page="../../../plantillas/head.jsp"></jsp:include>

<h2 id="ej2">Ejemplo de elementos flotantes</h2>

<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>

<div id="absoluto">
	<article>
		<header>
			<h1>Elementos flotantes</h1>
			<p></p>
		</header>
		<style>
			.cnt_article{
			
			}
		
			.cnt_article div{
				border: 2px solid black;
				width: 100px;
				height: 100px;
				margin-bottom: 15px;
				padding: 10px;
			}
			
			
			#capa1{
				background-color: green;
				float: left;
			}
			
			#capa2{
				background-color: orange;
				float: left;
			}
			
			#capa3{
				background-color: blue;
				float: left;
				clear: left;
			}
			
		</style>
		<div class="cnt_article clearfix">
			<div id="capa1">Capa 1</div>
			<div id="capa2">Capa 2</div>
			<div id="capa3">Capa 3</div>
		</div>
		
		<div class="cnt_article" style="overflow: hidden;">
			<div id="capa1">Capa 1</div>
			<div id="capa2">Capa 2</div>
			<div id="capa3">Capa 3</div>
		</div>
		<footer>
			Capitulo 9 pagina 212 + <a href="http://librosweb.es/libro/css_avanzado/capitulo_1/limpiar_floats.html" target="_blank">Limpiar floats</a>
		</footer>
	</article>



</div> <!-- absoluto -->
<jsp:include page="../../../plantillas/footer.jsp"></jsp:include>