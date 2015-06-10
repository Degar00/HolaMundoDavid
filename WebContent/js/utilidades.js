/*********************************************											
*	Funciones para usar en todo el proyecto
**********************************************/											


/**********************************************
 * Cine Almendralejo
**********************************************/

/**
Calcula el precio de la entrada del cine
@param dia: dia de la semana escrito en minusculas o mayusculas ['lunes', 'martes', 'miercoles', 'jueves', 'viernes', 'sabado', 'domingo']
@param edad: edad de la persona. Formato numero entero >0
@return precio en euros
*/
function cineAlmendralejo(dia, edad) {

					var resultado = null;
					if (dia!=null){
						dia=dia.toLowerCase(dia);
					}
					switch (dia) {
					case "lunes":
						if ((0 < edad) && (edad <= 35)) {
							resultado = '2€';
						} else if (edad>35){
							resultado = '5€';
						}else{
							resultado='la edad no es valida';
						}
						break;
					case "martes":
						if ((0 < edad) && (edad <= 25)) {
							resultado = '2€';
						} else if ((25 < edad) && (edad <= 50)) {
							resultado = '5€';
						} else if (edad >50){
							resultado = '7€';
						}else{
							resultado='la edad no es valida';
						}
						break;
					case "miercoles":
						if ((0 < edad) && (edad <= 18)) {
							resultado = '3€';
						} else if ((18 < edad) && (edad <= 50)) {
							resultado = '5€';
						} else if (edad >50){
							resultado = '8€';
						}else{
							resultado='la edad no es valida';
						}
						break;
					case "jueves":
						if ((0 < edad) && (edad <= 18)) {
							resultado = '5€';
						} else if (edad > 18) {
							resultado = '7€';
						}else{
							resultado='la edad no es valida';
						}
						break;
					case "viernes":
					case "sabado":
					case "domingo":
						if (edad>0){
							resultado = '10€';
						} else{
							resultado='la edad no es valida';
						}
						break;
					default:
						resultado = 'el dia de la semana no es valido';
					}
					if (edad==null){
						resultado='la edad no es valida';
					}
					return resultado;
				}


/************************************
*		ES PAR
************************************/

/**
*Nos indica si un numero es par o impar
*@param numero: numero integer como entrada
*@return resul: true si el numero es par, false si el numero es impar
*/

function es_par(numero) {
	resul = false;
	if (numero != null) {
		if (numero % 2 == 0) {
			resul = true;
		}
	}
	return resul;
}