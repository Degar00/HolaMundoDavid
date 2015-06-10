/*********************************************											
*	Funciones para usar en todo el proyecto
**********************************************/											


/**********************************************
 * Cine Almendralejo
**********************************************/

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