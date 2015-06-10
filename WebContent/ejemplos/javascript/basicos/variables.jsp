<jsp:include page="../../../plantillas/head.jsp"></jsp:include>

<h2 id="ej2">Ejemplo Variables de javascript</h2>

<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>

<div id="variables">
	<article>
		<header>
			<div id="cnt_article">
			
			
			
			<script type="text/javascript">

				//declaracion variables
				
				var cantidad1=45;
				var cantidad2=20;
				
				
				
				//definimos la funcion
				function sumar( parametro1, parametro2){
					var resultado;
					//suma de variables y guardar en otra
					resultado = parametro1 + parametro2
					console.info('El \'resultado\' es igual a '+resultado);
					return resultado;
				}
				
				
				
				
// 				//llamamos a la funcion
// 				sumar(1,3);
				
// 				console.info('El resultado fuera de la funcion es igual a:\n\t '+sumar(3,6));
	
				
				/**
				Funcion que nos dice si la variable es una vocal
				@param var1: letra a comprobar
				@return: true si es vocal, false en caso contrario
				*/
				
				function es_vocal(var1) {
					var result = false;
					//					Forma Ander

					switch (var1) {
						case 'a':
						case 'e':
						case 'i':
						case 'o':
						case 'u':
						case 'A':
						case 'E':
						case 'I':
						case 'O':
						case 'U':								
							result = true;
							break;
					}

					return result;

					//					Mi forma

					// 					switch (true) {
					// 						case (var1=='a'||var1=='A'):
					// 						case (var1=='e'||var1=='E'):
					// 						case (var1=='i'||var1=='I'):
					// 						case (var1=='o'||var1=='O'):
					// 						case (var1=='u'||var1=='U'):
					// 							result = true;
					// 							break;
					// 			sobra el default por estar ya inicializado en false
					//							default:
					// 							result = 'false';
					// 							break;
					// 					}

					// 					return result;
					
				}//end: es_vocal

				var datos = [ 'a', 'e', 'A', 13, null, undefined, 0.5, 'and',
						'n', '\u00f1' ];

				for (i = 0; i < datos.length; i++) {
					console.debug(datos[i] + ' es vocal? ' + es_vocal(datos[i]));
				}

				
				/**
					Calcula el precio de la entrada del cine
					@param dia: dia de la semana escrito en minusculas ['lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo']
					@param edad: edad de la persona. Formato numero entero >0
					@return precio en euros
				
				*/
				function cineAlmendralejo(dia, edad) {

					var resultado = null;
					switch (dia) {
					case "lunes":
						if ((0 < edad) && (edad <= 35)) {
							resultado = '2€';
						} else {
							resultado = '5€';
						}
						break;
					case "martes":
						if ((0 < edad) && (edad <= 25)) {
							resultado = '2€';
						} else if ((25 < edad) && (edad <= 50)) {
							resultado = '5€';
						} else {
							resultado = '7€';
						}
						break;
					case "miercoles":
						if ((0 < edad) && (edad <= 18)) {
							resultado = '3€';
						} else if ((18 < edad) && (edad <= 50)) {
							resultado = '5€';
						} else {
							resultado = '8€';
						}
						break;
					case "jueves":
						if (edad <= 18) {
							resultado = '5€';
						} else if (edad > 18) {
							resultado = '7€';
						}
						break;
					case "viernes":
					case "sabado":
					case "domingo":
						resultado = '10€';
						break;
					default:
						resultado = 'el dia de la semana no es valido';
					}
					return resultado;
				}

								console.debug("Miercoles, 50 años "
										+ cineAlmendralejo('miercoles', 50));
			</script>
			</div> <!-- cnt_article -->
		</header>
	</article>
</div> <!-- variables -->



<jsp:include page="../../../plantillas/footer.jsp"></jsp:include>