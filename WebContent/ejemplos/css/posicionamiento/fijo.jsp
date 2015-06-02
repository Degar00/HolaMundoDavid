<jsp:include page="../../../plantillas/head.jsp"></jsp:include>

<h2 id="ej2">Ejemplo de posicionamiento fijo</h2>

<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>

<div id="fijo">
	<article>
		<header>
			<h1>Fijo</h1>
			<p>Se posiciona respecto al navegador y no al padre. Hay que especificar atributos top, left, bottom, right para que se posicione.</p>
		</header>
		<style>
			.cnt_article{
			position: relative;
			}
		
			.cnt_article div{
				border: 2px solid green;
				width: 100px;
				height: 100px;
				margin-bottom: 15px;
			}
			
			#capa1{
				background-color: green;
			}
			
			#capa2{
				background-color: orange;
			}
			
			#capa3{
				background-color: blue;
				position: fixed;
				top: 10px;
				left: 50px;
			}
		</style>
		<div class="cnt_article">
			<div id="capa1">Capa 1</div>
			<div id="capa2">Capa 2</div>
			<div id="capa3">Capa 3</div>
		</div>
		<footer>
			Capitulo 9; pagina 206
		</footer>
	</article>



</div> <!-- fijo -->
<jsp:include page="../../../plantillas/footer.jsp"></jsp:include>