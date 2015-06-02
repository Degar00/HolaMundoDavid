<jsp:include page="../../plantillas/head.jsp"></jsp:include>

<h2 id="ej3">Ejemplo de Listas</h2>

<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<div id="listas">
<a class="volver" href="index.jsp">Index</a>


<!-- Lista ordenada -->

<ol>
	<li>elemento de la lista 1</li>
	<li>elemento de la lista 2</li>
	<li>elemento de la lista 3</li>
	<li>elemento de la lista 4</li>
</ol>

<!-- Lista SIN orden -->

<ul>
	<li>elemento de lista</li>
	<li>elemento de lista</li>
	<li>elemento de lista</li>
</ul>

<!-- Lista de definicion -->

<dl>
	<dt>termino</dt>
	<dt>termino</dt>
	<dt>termino</dt>
	<dt>termino</dt>
	<dd>significado</dd>
</dl>

<br/>
<hr/>
<br/>

</div> <!-- listas -->
<jsp:include page="../../plantillas/footer.jsp"></jsp:include>