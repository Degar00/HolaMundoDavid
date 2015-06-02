<jsp:include page="../../../plantillas/head.jsp"></jsp:include>

<style type="text/css">
p[class="texto"]{
	color: red;
}

p[class~="cabezera"]{
	font-size: 20px;
}

p[lang|="es"]{
	color: blue;
}

a[href$=".com"]{
	color: orange;
}

a[href^="www."]{
	background-color: yellow;
}

p[id*="noticia"]{
	background-color: lime;
}
</style>

<h2 id="ej2">Ejemplo Atributos CSS</h2>

<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>

<div id="atributos">

<p id="noticias_deportes"class="texto" lang="en-ES">[att=val]</p>

<p id="noticias_actualidad" class="texto cabezera" lang="es-EU">[att~=val]</p>

<p lang="es-ES">[att|=val]</p>

<a href="www.ipartek.com">Ipartek.com</a>
<br/>
<a href="www.google.es">Google.es</a>
<br/>
<a href="index.jsp">Index</a>
</div> <!-- atributos -->
<jsp:include page="../../../plantillas/footer.jsp"></jsp:include>