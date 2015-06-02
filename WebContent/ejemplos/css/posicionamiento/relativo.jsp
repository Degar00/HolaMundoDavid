<jsp:include page="../../../plantillas/head.jsp"></jsp:include>

<h2 id="ej2">Ejemplo de posicionamiento relativo</h2>

<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>

<div id="relativo">
		<article>
		<header>
			<h1>Relativo</h1>
			<p>Posicionamiento relativo a la posici&oacute;n original. Podemos jugar con la propiedad <mark>z-index</mark> para el solapamiento de las capas.</p>
		</header>
		<style>
			.cnt_article div{
				border: 2px solid green;
				width: 100px;
				height: 100px;
				margin-bottom: 15px;
				position: relative;
			}
			
			#capa1{
				left: 50px;
				top:50px;
				z-index: 1;
				background-color: green;
			}
			#capa2{
				background-color: orange;
				z-index: 4;
				
			}
			#capa3{
				background-color: blue;
				left: 50px;
				bottom: 50px;
				z-index: 3;
			}
		</style>
		<div class="cnt_article">
			<div id="capa1">Capa 1</div>
			<div id="capa2">Capa 2</div>
			<div id="capa3">Capa 3</div>
		</div>
		<footer>
			Capitulo 9; pagina 200
		</footer>
	</article>



</div> <!-- relativo -->
<jsp:include page="../../../plantillas/footer.jsp"></jsp:include>