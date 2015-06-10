<jsp:include page="../../../plantillas/head.jsp"></jsp:include>
<link rel="stylesheet" href="//code.jquery.com/qunit/qunit-1.18.0.css">
<h2 id="ej2">Calculadora de javascript</h2>

<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>


  <div id="qunit"></div>
  <div id="qunit-fixture"></div>
  
  <script src="//code.jquery.com/qunit/qunit-1.18.0.js"></script>
  
  <script src="js/utilidades.js"></script>
  
  <script type="text/javascript">
		QUnit.test( "cineAlmendralejo (dia, edad)", function( assert ) {
			
		  	assert.ok( cineAlmendralejo ('lunes', 35) == '2€', "Lunes = 35 años = 2€" );
		  	assert.ok( cineAlmendralejo ('lunes', 34) == '2€', "Lunes < 35 años = 2€" );
		  	assert.ok( cineAlmendralejo ('lunes', 36) == '5€', "Lunes > 35 años = 5€" );
		  	
		});
		
		QUnit.test( "es_par (numero)", function( assert ) {
			
		  	assert.ok( es_par(0), "0 es par");
		  	assert.ok( !es_par(1), "1 no es par");
		  	assert.ok( es_par(2), "2 es par");
		  	assert.ok( es_par(-2), "-2 es par");
		  	assert.ok( !es_par(-1), "-1 no es par");
		  	assert.ok( !es_par(null), "null no es par");
		  	assert.ok( !es_par(undefined), "undefined no es par");
		  	assert.ok( es_par(2.0), "2.0 es par");
		  	assert.ok( !es_par(2.1), "2.1 no es par");
		  	assert.ok( !es_par('hola'), "'hola' no es par");

		});
  </script>
  
<jsp:include page="../../../plantillas/footer.jsp"></jsp:include>