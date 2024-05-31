extends Node
#Varuiable Genero
var genero:int = 0
#Variables estadisticas de Juego
var Dinero = 100
var Felicidad = 10
var Empleados = 100
var Ganancias = 1000

#Dialogos
var dialogues = [
	{
		"id": 1,
		"text": "Hay trabajadores discutiendo por quien sabe que, es la 5ta vez esta semana. Uno de ellos se te acerca y dice que su compañero no lo respeta, que él no entiende que esos dibujos en su pared son “ARTE”. Más tarde el susodicho compañero aparece y exige que alejen a ese tipo de su cubículo o renunciará. Esto escaló muy rápido, necesitas hacer algo.",
		"optiones": [
			{"text": "Educar a estos palurdos sobre el arte.", "felicidad": 0, "dinero": 0, "empleados": -5, "consecuencia": "Uff, alguien no estará muy feliz con esta decisión"},
			{"text": "Que se joda el arte, trabaja.", "felicidad": 0, "dinero": +5, "empleados": +5, "consecuencia": "Wow, eso si es tener los pantalones bien puestos, te has ganado el respeto de tus empleados"},
			{"text": "Actuar de intermediario para intentar solucionar el asunto.", "felicidad": +3, "dinero": +3, "empleados": -10, "consecuencia": "Decides crear la “convocatoria anual de discusión de arte” para fomentar el arte en tus empleados, claro, nadie presta atención, pero el sujeto que reclamó está feliz y todos los demás obtienen otro feriado en el calendario, eres genial manejando situaciones"}
		]
	},
	{
		"id": 2,
		"text": "Sana Banana, encargada de recursos humanos te pide vacaciones, sabes que será un caos. Sana no solo es la más competente de rh, si no que es la única.",
		"optiones": [
			{"text": "Dar vacaciones y encargarte de todo, tú solito.", "felicidad": 0, "dinero": 0, "empleados": -5,"consecuencia": "Uff, alguien no estará muy feliz con esta decisión"},
			{"text": "Dar vacaciones y contratar un reemplazo.Al final de cuentas Sana se lo merece.", "felicidad": 0, "dinero": -5, "empleados": +2, "consecuencia": "Sientes que has hecho lo correcto, pero varios empleados se han ido a consecuencia"},
			{"text": "Conseguir un pasante y sobreexplotarlo", "felicidad": +3, "dinero": +200, "empleados": +10, "consecuencia": "El pasante ha logrado lo imposible, ha sido un espectáculo visual sin precedentes de torpeza humana como jamás lo habías visto. Luego de terminar con el extintor en esa impresora que incineró con agua, te preguntas ¿qué hice?.  Solo dices “oh no hermano"}
		]
	},
	{
		"id": 3,
		"text": "En las buenas, en las malas y las peores las parejas pueden surgir, lamentablemente esto es el trabajo y las relaciones entre empleados están prohibidas aunque…",
		"optiones": [
			{"text": "Hacer la vista gorda?", "felicidad": 0, "dinero": 0, "empleados": -5, "consecuencia": "El amor es más grande que todo, no debes interferir y tu cuerpo lo sabe"},
			{"text": "NO, está estrictamente prohibido, el que perdona murió en la cruz...", "felicidad": 0, "dinero": +3, "empleados": +2, "consecuencia": "Has destruido una relación que podía florecer, o quizás salvaste a alguien de una relación completamente tóxica, ¿Héroe o villano? nunca lo sabremos"},
			{"text": "Hacer una muy pobre charla sobre esto", "felicidad": +3, "dinero": +200, "empleados": +10, "consecuencia": "La pobre charla que hiciste termino por ganarte el odio de la empresa"}
		]
	},
	{
		"id": 4,
		"text": "Tus empleados necesitan energías, lamentablemente inyectarles adrenalina suena muy ilegal. Si tan solo hubiera una manera de mejorar los ánimos.",
		"optiones": [
			{"text": "Comprar cafetera", "felicidad": 0, "dinero": 0, "empleados": -5, "consecuencia": "Eso es, eres un genio de la legalidad y de la eficiencia, te ganaste un café"},
			{"text": "¡Reuniones en la mañana! ¡Eso es! Todos aman perder el tiempo.", "felicidad": 0, "dinero": -3, "empleados": +2, "consecuencia": "Bueno los bostezos no suenan muy animosos pero al menos te queda la fé"},
			{"text": "Hacer la Entrada mas Tarde", "felicidad": +3, "dinero": +200, "empleados": +10, "consecuencia": "Todos estan contentos, pero se tendra que pagar algunos autos privados para aquellos que no puedan irse tarde"}
		]
	},
	{
		"id": 5,
		"text": "Tus empleados te comunican por correo que quieren implementar un nuevo método de trabajo, es un modelo muy reciente y no se ha comprobado su efectividad ¿aceptas su propuesta?",
		"optiones": [
			{"text": "Aceptar", "felicidad": 0, "dinero": 0, "empleados": -5, "consecuencia": "Tus riesgos dieron frutos!! Además tus empleados confían más"},
			{"text": "Rechazar", "felicidad": -3, "dinero": 0, "empleados": 2, "consecuencia": "Quedarse en el mismo lugar sólo lleva a la monotonía; aunque ahora a tus empleados les caes un poco mal"},
			{"text": "Pensarlo", "felicidad": +200, "dinero": +3, "empleados": +10, "consecuencia": "Pensarlo no hara que llegue a ningun lado, solo perdiste el tiempo"}
		]
	},
		{
		"id": 6,
		"text": "Viene ESE cliente que siempre llega con sus reclamos… otra vez llega gritando tanto que no se le entiende nada",
		"optiones": [
			{"text": "Ya basta de este abuso, se termina tu trato con el cliente!!", "felicidad": 0, "dinero": -300, "empleados": +1, "consecuencia": "Minutos después recuerdas que aguantaste años de gritos por que era tu principal inversor, UPSI"},
			{"text": "A veces solo toca hacer tu trabajo y ya, por odioso que sea.", "felicidad": 0, "dinero": +100, "empleados": -5, "consecuencia": "Una vez más, el cliente más millonario y odioso se va feliz con sus problemas solucionados… aunque no deja de gritar, puede que necesite una visita al médico"},
			{"text": "Que se encargue Sana", "felicidad": +1, "dinero": 0, "empleados": -5, "consecuencia": "Ahora Sana te odia un poco"}
		]
	}
]

#debufoactual
var DefDinero 
var DefFelicidad 
var DefEmpleados

#region plantilla
#	{
#		"id": 5,
#		"text": "",
#		"optiones": [
#			{"text": "sample", "felicidad": 0, "dinero": 0, "empleados": -5, "consecuencia": "sample"},
#			{"text": "sample", "felicidad": -3, "dinero": 0, "empleados": 2, "consecuencia": "sample"},
#			{"text": "sample", "felicidad": +200, "dinero": +3, "empleados": +10, "consecuencia": "Sample"}
#		]
#	}
#endregion
