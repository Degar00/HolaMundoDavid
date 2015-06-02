<jsp:include page="../../../plantillas/head.jsp"></jsp:include>

<h2 id="ej2">Ejemplo de posicionamiento absoluto</h2>

<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>

<div id="absoluto">
	<article>
		<header>
			<h1>Absoluto</h1>
			<p>Al posicionar un elemento de forma absoluta, este sale del flujo de la plagina, por lo que producira solapamientos. Se posiciona respecto al primer padre con posicionamiento estatico que encuentre, si no lo hay usara el navegador.</p>
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
				position: absolute;
				top: 50px;
				left: 50%;
				
			}
			#capa3{
				background-color: blue;
			}
		</style>
		<div class="cnt_article">
			<div id="capa1">Capa 1</div>
			<div id="capa2">Capa 2</div>
			<div id="capa3">Capa 3</div>
		</div>
		<footer>
			Capitulo 9; pagina 203
		</footer>
	</article>



</div> <!-- absoluto -->
<jsp:include page="../../../plantillas/footer.jsp"></jsp:include>