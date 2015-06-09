<jsp:include page="../../../plantillas/head.jsp"></jsp:include>

<h2 id="ej2">Calculadora de javascript</h2>

<jsp:include page="../../../plantillas/nav.jsp"></jsp:include>

<div id="calculadora">
	<article>
		<header>
			<div id="cnt_article" class="clearfix">


				<table id="t_calculadora">
					<tr>
						<td><div class="numeros" data-key="number" data-value="7">7</div></td>
						<td><div class="numeros" data-key="number" data-value="8">8</div></td>
						<td><div class="numeros" data-key="number" data-value="9">9</div></td>
						<td><div class="operador" data-key="operation" data-value="/">/</div></td>
						<td><div class="operador" data-key="operation" data-value="%">%</div></td>
					</tr>
					<tr>
						<td><div class="numeros" data-key="number" data-value="4">4</div></td>
						<td><div class="numeros" data-key="number" data-value="5">5</div></td>
						<td><div class="numeros" data-key="number" data-value="6">6</div></td>
						<td><div class="operador" data-key="operation" data-value="*">*</div></td>
						<td><div class="operador" data-key="operation" data-value="++">++</div></td>
					</tr>
					<tr>
						<td><div class="numeros" data-key="number" data-value="1">1</div></td>
						<td><div class="numeros" data-key="number" data-value="2">2</div></td>
						<td><div class="numeros" data-key="number" data-value="3">3</div></td>
						<td><div class="operador" data-key="operation" data-value="-">-</div></td>
						<td><div class="operador" data-key="operation" data-value="--">--</div></td>
					</tr>
					<tr>
						<td colspan="3" ><div class="numeros" data-key="number" data-value="0">0</div></td>
						<td><div class="operador" data-key="operation" data-value="+">+</div></td>
						<td><div class="btn_igual" data-key="operation" data-value="=">=</div></td>
					</tr>
				</table>
				<fieldset id="result_calc">
					<legend>Pantalla</legend>
					<input id="pantalla">
				</fieldset>
				<script type="text/javascript">

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
						break;
					default:
						console.error('Operador no soportado');
						break;
					}
					if (resultado!=null){
						return(resultado);
					}else{
						return('Algo ha fallado');
					}
					
				}
				
// 				console.info('5+4= '+calculadora(5,4,SUMAR));
// 				console.info('5-4= '+calculadora(5,4,RESTAR));
// 				console.info('5*4= '+calculadora(5,4,MULTIPLICAR));
// 				console.info('6/3= '+calculadora(6,3,DIVIDIR));
// 				console.info('6%2= '+calculadora(6,2,MODULO));
// 				console.info('5++= '+calculadora(5,4,INCREMENTO));
// 				console.info('5--= '+calculadora(5,4,DECREMENTO));
// 				console.info('6 es par o impar? '+calculadora(6, 6, ES_PAR));
// 				console.info('Provocamos fallo ' + calculadora(2,3, 9));
				
				
				//llamamos a la funcion
			//	sumar(1,3);
				
			//	console.info('El resultado fuera de la funcion es igual a:\n\t '+sumar(3,6));
	
			</script>
			</div> <!-- cnt_article -->
		</header>
	</article>
</div> <!-- variables -->



<jsp:include page="../../../plantillas/footer.jsp"></jsp:include>