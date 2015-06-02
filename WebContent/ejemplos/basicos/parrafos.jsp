<jsp:include page="../../plantillas/head.jsp"></jsp:include>

<div id="parrafos">

<h2 id="ej1">Ejemplo1: Parrafos y enlaces internos</h2>

<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<div class="encabezado">
    <h1><a href="<%=request.getRequestURL()%>#p1" title="Ir a la seccion 1">Parrafo 1</a></h1>
    <h2><a href="<%=request.getRequestURL()%>#p2" title="Ir a la seccion 2">Parrafo 2</a></h2>
	<h3><a href="<%=request.getRequestURL()%>#p3" title="Ir a la seccion 3">Parrafo 3</a></h3>
	<h4><a href="<%=request.getRequestURL()%>#p4" title="Ir a la seccion 4">Parrafo 4</a></h4>
	<h5><a href="<%=request.getRequestURL()%>#p5" title="Ir a la seccion 5">Parrafo 5</a></h5>
	<h6><a href="<%=request.getRequestURL()%>#p6" title="Ir a la seccion 6">Parrafo 6</a></h6>
	
		
</div>
<p id="p1">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultrices viverra quam quis varius. Morbi mauris purus, egestas efficitur congue vitae, iaculis non mauris. <strong>Nulla sit amet sodales purus. Cras suscipit odio vitae leo scelerisque, eu fringilla neque tincidunt.</strong> Proin mi quam, ullamcorper quis purus a, condimentum malesuada augue. Aliquam erat volutpat. Proin tristique eleifend purus non pulvinar. Nunc ac dolor sit amet justo accumsan faucibus. Praesent pharetra, lacus ut dictum mattis, urna lectus consectetur justo, id malesuada quam augue nec libero. Morbi efficitur sapien ac enim tristique, sit amet lacinia quam condimentum. <em>Nulla facilisi.</em> Donec condimentum blandit posuere.</p>

<p id="p2">Curabitur faucibus pharetra risus, in mattis urna auctor sed. Fusce facilisis erat ut commodo ultrices. Praesent ultrices, nisi a ornare fringilla, purus augue mattis neque, non consectetur lectus diam ut augue. Vestibulum luctus lacus eu nulla facilisis, a condimentum mauris condimentum. Sed elementum accumsan augue vitae rutrum. Integer viverra ante id dolor efficitur molestie. Nullam ac elementum nibh. Vestibulum malesuada congue lacus, <span class="highlight">at</span> sodales mi viverra vel.</p>

<p id="p3">Sed sed tincidunt eros, ac posuere mauris. Sed velit odio, pharetra in eleifend faucibus, convallis nec elit. Phasellus vehicula purus non dapibus pretium. Pellentesque et arcu sagittis, imperdiet augue non, sodales libero. Pellentesque fermentum a metus varius sodales. Mauris aliquam, sapien id facilisis elementum, enim purus facilisis arcu, et aliquet tortor nunc <span class="highlight">at</span> libero. Pellentesque mi risus, ultrices quis accumsan quis, imperdiet eu ante. Aenean interdum tortor <span class="highlight verde">at</span> orci tincidunt consequat. Donec hendrerit erat vitae imperdiet convallis. Curabitur id felis tempus, ornare arcu in, gravida tellus. In in semper ante. Vestibulum pretium vestibulum orci quis dictum. Aliquam sit amet dignissim dui. Integer elementum turpis quis sagittis pulvinar. In ornare nibh quis nibh dictum, ut fringilla justo egestas. Nullam metus nibh, placerat a bibendum et, consectetur id libero.</p>

<p id="p4">Mauris sapien sem, hendrerit a tincidunt eget, euismod sed erat. Aliquam aliquet euismod dolor, ut ultricies libero ultricies vel. Donec sit amet eros molestie, porta nisi id, pretium nunc. Praesent quis metus risus. Suspendisse ut ipsum purus. Sed rutrum nisi in sodales tincidunt. Aenean quis nulla elementum, cursus ipsum et, consectetur velit.</p>

<p id="p5">Duis <span class="highlight">at</span> nunc commodo, placerat sem ac, dignissim justo. Nunc tristique sem nec ultrices lobortis. Aenean eleifend viverra lobortis. Cras blandit imperdiet mauris eget elementum. Donec eget hendrerit est. Sed ac diam quis nisi feugiat venenatis et vitae turpis. Aliquam erat volutpat. Fusce sollicitudin sollicitudin arcu <span class="highlight">at</span> feugiat. Maecenas a arcu commodo urna vestibulum accumsan eget varius tortor. In est odio, interdum eu gravida eu, varius <span class="highlight">at</span> neque.</p>

<p id="p6">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultrices viverra quam quis varius. Morbi mauris purus, egestas efficitur congue vitae, iaculis non mauris. <strong>Nulla sit amet sodales purus. Cras suscipit odio vitae leo scelerisque, eu fringilla neque tincidunt.</strong> Proin mi quam, ullamcorper quis purus a, condimentum malesuada augue. Aliquam erat volutpat. Proin tristique eleifend purus non pulvinar. Nunc ac dolor sit amet justo accumsan faucibus. Praesent pharetra, lacus ut dictum mattis, urna lectus consectetur justo, id malesuada quam augue nec libero. Morbi efficitur sapien ac enim tristique, sit amet lacinia quam condimentum. <em>Nulla facilisi.</em> Donec condimentum blandit posuere.</p>

</div> <!-- parrafos -->
<jsp:include page="../../plantillas/footer.jsp"></jsp:include>