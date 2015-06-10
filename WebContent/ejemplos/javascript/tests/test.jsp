<jsp:include page="../../../plantillas/head.jsp"></jsp:include>
<link rel="stylesheet" href="//code.jquery.com/qunit/qunit-1.18.0.css">
<h2 id="ej2">Calculadora de javascript</h2>

<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>


  <div id="qunit"></div>
  <div id="qunit-fixture"></div>
  
  <script src="//code.jquery.com/qunit/qunit-1.18.0.js"></script>
  
  <script src="js/utilidades.js"></script>
  
  <script type="text/javascript">
  		QUnit.test( "Funciones predefinidas", function( assert ) {
  			assert.ok ( escape("Hola 'Mundo' escapado")=="Hola%20%27Mundo%27%20escapado", "Hola 'Mundo' escapado (Hola%20%27Mundo%27%20escapado)");
  			assert.ok ( escape("Hóla 'Mundo' escapado")=="H%F3la%20%27Mundo%27%20escapado", "Hóla 'Mundo' escapado(H%F3la%20%27Mundo%27%20escapado)");
  			assert.ok ( unescape("Hola%20%27Mundo%27%20escapado")=="Hola 'Mundo' escapado", "Hola 'Mundo' escapado (Hola%20%27Mundo%27%20escapado)");
  			assert.ok ( unescape("H%F3la%20%27Mundo%27%20escapado")=="Hóla 'Mundo' escapado", "Hóla 'Mundo' escapado(H%F3la%20%27Mundo%27%20escapado)");
  			assert.ok ( (10 + "1")=="101", "Sin parseInt 10 + \"1\"= \"101\"");
  			assert.ok ( (10 + parseInt("1"))==11, "Con parseInt 10 + parseInt\"1\"= 11");
  			assert.ok ( isNaN("123abc"), "'123abc' no es numero");
  			assert.ok ( !isNaN(123), "123 es numero");
  			
  			var jonWaine = new Array("jon", "waine", 45);
  			
  			assert.ok ( jonWaine[0]=="jon", "jonWaine[0]=='jon'" );
  			assert.ok ( jonWaine[1]=="waine", "jonWaine[1]=='waine'" );
  			assert.ok ( jonWaine[2]==45, "jonWaine[2]==45" );
  			assert.ok ( jonWaine.length==3, "jonWaine.length==3" );
  			
  			var pelis = new Array("el bueno, el feo y el malo", 1966, "Sergio Leone")
  			var jonWaine2 = jonWaine.concat(pelis);
  			assert.ok ( jonWaine2[0]=="jon", "jonWaine[0]=='jon'" );
  			assert.ok ( jonWaine2[1]=="waine", "jonWaine[1]=='waine'" );
  			assert.ok ( jonWaine2[2]==45, "jonWaine[2]==45" );
  			assert.ok ( jonWaine2[3]=="el bueno, el feo y el malo", "jonWaine[3]=='el bueno, el feo y el malo'" );
  			assert.ok ( jonWaine2[4]==1966, "jonWaine[4]==1966" );
  			assert.ok ( jonWaine2[5]=="Sergio Leone", "jonWaine[5]=='Sergio Leone'" );
  			
  			assert.ok ( jonWaine.join("#")=="jon#waine#45", "jonWaine.join('#')=='jon#waine#45'" );
  			
  			jonWaine.reverse();
  			assert.ok ( jonWaine[0]==45, "jonWaine[0]==45" );
  			assert.ok ( jonWaine[1]=="waine", "jonWaine[1]=='waine'" );
  			assert.ok ( jonWaine[2]=="jon", "jonWaine[2]=='jon'" );
  			
  			jonWaine.sort();
  			assert.ok ( jonWaine[0]==45, "jonWaine[0]==45" );
  			assert.ok ( jonWaine[1]=="jon", "jonWaine[1]=='jon'" );
  			assert.ok ( jonWaine[2]=="waine", "jonWaine[2]=='waine'" );
  			
  			jonWaine2.sort();
  			assert.ok ( jonWaine2[0]==1966, "jonWaine[0]==1966" );
  			assert.ok ( jonWaine2[1]==45, "jonWaine[1]==45" );
  			assert.ok ( jonWaine2[2]=="Sergio Leone", "jonWaine[4]=='Sergio Leone'" );
  			assert.ok ( jonWaine2[3]=="el bueno, el feo y el malo", "jonWaine[2]=='el bueno, el feo y el malo'" );
  			assert.ok ( jonWaine2[4]=="jon", "jonWaine[3]=='jon'" );
   			assert.ok ( jonWaine2[5]=="waine", "jonWaine[5]=='waine'" );
  		});
  
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