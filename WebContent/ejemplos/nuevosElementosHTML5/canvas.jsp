<jsp:include page="../../plantillas/head.jsp"></jsp:include>



<jsp:include page="../../plantillas/nav.jsp"></jsp:include>

<div id="canvas">
<h2>Ejemplo Etiqueta Canvas</h2>
<section>
  <canvas id="myCanvas" width="200" height="100" style="border:1px solid #000000;">
</canvas>
</section>
<div class="clearfix"></div>

 </div><!-- audio -->
 <script>
 var c = document.getElementById("myCanvas");
 var ctx = c.getContext("2d");
 ctx.fillStyle = "#FF0000";
 ctx.fillRect(0,0,150,75);
 </script>
<jsp:include page="../../plantillas/footer.jsp"></jsp:include>