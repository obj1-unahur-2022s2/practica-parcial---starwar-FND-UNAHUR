import planeta.*
class Persona {
	var property edad
	method potencia() {return 20}
	method inteligencia() {
		if (edad.between(20,40))
			return 12
		else 
		    return 8
	}
	method esDestacada() {
		return edad == 25 or edad == 35
	}
}
class Atleta inherits Persona {
	var property masaMuscular = 4
	var property cantidadTecnicas = 2
	
	override method potencia() {
		return super() + masaMuscular * cantidadTecnicas
	}
	override method esDestacada() {
		return super() or cantidadTecnicas > 5
		}
	method entrenar(cantidadDias) {
		masaMuscular += cantidadDias/5 //Tiene sentido si solamente el entrenamiento es de 5 dias a la vez
	}
	method aprenderTecnica() = cantidadTecnicas++
}
class Docente inherits Persona {
	var property cantidadCursos = 0
	
	override method inteligencia() {
		return super() + cantidadCursos * 2
	}
	override method esDestacada() {
		return cantidadCursos >= 3
	}
}
class Soldado inherits Persona {
	const property coleccionArmas = []
	
	override method potencia() {
		return super() + coleccionArmas.sum({s=>s.potencia()})
	}

}
class Pistolete {
 var property largoArma
 
 method potencia() {
 	if (soldado.edad() = 30) 
 		return largoArma * 3
 	else 
 		return largoArma * 2
 }
}
