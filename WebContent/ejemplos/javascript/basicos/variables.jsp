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
				
				//definir operaciones para la calculadora;
				const SUMAR			=0;
				const RESTAR		=1;
				const MULTIPLICAR	=2;
				const DIVIDIR		=3;
				const MODULO		=4;
				const INCREMENTO	=5;
				const DECREMENTO	=6;
				const ES_PAR		=7;

				/**
				Funcion calculadora
				Calcula la operacion solicitada entre los parametros de entrada.
				*/
				function calculadora( parametro1, parametro2, operacion ){
					
					var resultado = null;
					
					//realizar operacion solicitada
					switch (operacion){
					
					case 0:
						resultado=parametro1+parametro2;
						break;
					case 1:
						resultado=parametro1-parametro2;
						break;
					case 2:
						resultado=parametro1*parametro2;
						break;
					case 3:
						resultado=parametro1/parametro2;
						break;
					case 4:
						resultado=parametro1%parametro2;
						break;
					case 5:
						resultado=++parametro1;
						break;
					case 6:
						resultado=--parametro1;
						break;
					case 7:
						if (parametro1%2==1){
							resultado="es IMPAR";
						}else{
							resultado="es PAR";
						}
					}
					
					return(resultado);
					
				}
				
				console.info('5+4= '+calculadora(5,4,SUMAR));
				console.info('5-4= '+calculadora(5,4,RESTAR));
				console.info('5*4= '+calculadora(5,4,MULTIPLICAR));
				console.info('6/3= '+calculadora(6,3,DIVIDIR));
				console.info('6%2= '+calculadora(6,2,MODULO));
				console.info('5++= '+calculadora(5,4,INCREMENTO));
				console.info('5--= '+calculadora(5,4,DECREMENTO));
				console.info('6 es par o impar? '+calculadora(6, 6, ES_PAR));
				
				
				//llamamos a la funcion
			//	sumar(1,3);
				
			//	console.info('El resultado fuera de la funcion es igual a:\n\t '+sumar(3,6));
	
			</script>
			</div> <!-- cnt_article -->
		</header>
	</article>
</div> <!-- variables -->



<jsp:include page="../../../plantillas/footer.jsp"></jsp:include>