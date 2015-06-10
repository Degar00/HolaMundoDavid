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
			
		  	assert.ok( cineAlmendralejo ('lunes', 35) == '2€', "lunes = 35 años = 2€" );
		  	assert.ok( cineAlmendralejo ('lunes', 34) == '2€', "lunes < 35 años = 2€" );
		  	assert.ok( cineAlmendralejo ('lunes', 36) == '5€', "lunes > 35 años = 5€" );
		  	assert.ok( cineAlmendralejo ('martes', 25) == '2€', "martes = 25 años = 2€" );
		  	assert.ok( cineAlmendralejo ('martes', 24) == '2€', "martes < 25 años = 2€" );
		  	assert.ok( cineAlmendralejo ('martes', 26) == '5€', "martes > 25 <50 años = 5€" );
		  	assert.ok( cineAlmendralejo ('martes', 50) == '5€', "martes = 50 años = 5€" );
		  	assert.ok( cineAlmendralejo ('martes', 49) == '5€', "martes > 25 < 50 años = 5€" );
		  	assert.ok( cineAlmendralejo ('martes', 51) == '7€', "martes > 50 años = 7€" );
		  	assert.ok( cineAlmendralejo ('miercoles', 18) == '3€', "miercoles = 18 años = 3€" );
		  	assert.ok( cineAlmendralejo ('miercoles', 16) == '3€', "miercoles < 18 años = 3€" );
		  	assert.ok( cineAlmendralejo ('miercoles', 20) == '5€', "miercoles > 18 <50 años = 5€" );
		  	assert.ok( cineAlmendralejo ('miercoles', 50) == '5€', "miercoles = 50 años = 5€" );
		  	assert.ok( cineAlmendralejo ('miercoles', 49) == '5€', "miercoles > 18 < 50 años = 5€" );
		  	assert.ok( cineAlmendralejo ('miercoles', 51) == '8€', "miercoles > 50 años = 8€" );
		  	assert.ok( cineAlmendralejo ('jueves', 18) == '5€', "jueves = 18 años = 5€" );
		  	assert.ok( cineAlmendralejo ('jueves', 15) == '5€', "jueves < 18 años = 5€" );
		  	assert.ok( cineAlmendralejo ('jueves', 20) == '7€', "jueves > 18 años = 7€" );
		  	assert.ok( cineAlmendralejo ('viernes', 20) == '10€', "viernes cualquier edad = 10€" );
		  	assert.ok( cineAlmendralejo ('sabado', 20) == '10€', "sabado cualquier edad = 10€" );
		  	assert.ok( cineAlmendralejo ('domingo', 20) == '10€', "domingo cualquier edad = 10€" );
		  	assert.ok( cineAlmendralejo ('domiingo', 20) == 'el dia de la semana no es valido', "Error al introducir el dia de la semana" );
		  	assert.ok( cineAlmendralejo ('domingo', -20) == 'la edad no es valida', "Error al introducir la edad (negativa)" );
		  	assert.ok( cineAlmendralejo ('Domingo', 20) == '10€', "Dia de la semana con mayusculas" );
		  	assert.ok( cineAlmendralejo (null, 0) == 'el dia de la semana no es valido', "Dia de la semana null" );
		  	assert.ok( cineAlmendralejo ('lunes', null) == 'la edad no es valida', "Edad null" );
		  	assert.ok( cineAlmendralejo ('domingo', 'veinte') == 'la edad no es valida', "Edad como texto(domingo, veinte)" );
		  	assert.ok( cineAlmendralejo ('lunes', 15.5) == '2€', "Edad decimal" );
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