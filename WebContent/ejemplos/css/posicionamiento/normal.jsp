<jsp:include page="../../../plantillas/head.jsp"></jsp:include>

<h2 id="ej2">Ejemplo de posicionamiento normal</h2>

<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>

<div id="normal">
	<article>
		<header>
			<h1>Normal o static</h1>
		</header>
		<style>
			.cnt_article div{
				border: 2px solid green;
				width: 90%;
				height: 100px;
				margin: 0 auto;
				margin-bottom: 15px;
				padding: 10px;
			}
			.cnt_article a{
				border: 2px solid pink;
				padding: 5px;
			}
		</style>
		<div class="cnt_article">
			<div>Capa 1</div>
			<div>
				Capa 2
				<a href="#">Enlace 1</a>
				<a href="#">Enlace 2</a>
			</div>
			<div>Capa 3</div>
		</div>
		<footer>
			Capitulo 9; pagina 198
		</footer>
	</article>



</div> <!-- normal -->
<jsp:include page="../../../plantillas/footer.jsp"></jsp:include>