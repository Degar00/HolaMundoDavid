<jsp:include page="../../plantillas/head.jsp"></jsp:include>
<div id="cart">
<h1>Cartelera de cine</h1>
<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<ul class="cartelera">
	<li class="cine">
		<h3>ZUBIARTE</h3>
		<ul>
			<li class="horarios">
				<a href="#" title="Enlace a la pelicula">
				<div>
					<img  src="images/fast_furious.jpg" alt="Cartel de fast and furious"/>
					<p class="titulo">Fast and furious</p>
					<p class="t_horario">16:00 | 22:00</p>
				</div>
				</a>
			</li>
			<li class="horarios">
				<a href="ejemplos/reales/cartelera_detalle.jsp" title="Enlace a la pelicula">
				<div>
					<img  src="images/mad_max.jpg" alt="Cartel de Mad Max"/>
					<p class="titulo">Mad Max</p>
					<p class="t_horario">19:00 | 23:00</p>
				</div>
				</a>
			</li>
		</ul>
	</li>
	<li class="cine">
		<h3>CAPITOL</h3>
		<ul>
			<li class="horarios">
				<a href="#" title="Enlace a la pelicula">
				<div>
					<img  src="images/fast_furious.jpg" alt="Cartel de fast and furious"/>
					<p class="titulo">Fast and furious</p>
					<p class="t_horario">16:00 | 22:00</p>
				</div>
				</a>
			</li>
			<li class="horarios">
				<a href="ejemplos/reales/cartelera_detalle.jsp" title="Enlace a la pelicula">
				<div>
					<img  src="images/mad_max.jpg" alt="Cartel de Mad Max"/>
					<p class="titulo">Mad Max</p>
					<p class="t_horario">19:00 | 23:00</p>
				</div>
				</a>
			</li>
		</ul>
	</li>

</ul>

</div> <!-- cartelera -->
<div class="clearfix"></div>
<jsp:include page="../../plantillas/footer.jsp"></jsp:include>