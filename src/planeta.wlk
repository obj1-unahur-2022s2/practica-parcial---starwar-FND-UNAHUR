import personas.*
class Planeta {
	const property habitantes = []
	var property cantidadMuseos
	var property longitudTotalMurallas
	
	method delegacionDiplomatica() = habitantes.filter({f => f.esDestacada()})
	method valorInicialDefensa() {return habitantes.count({c => c.potencia() >= 30})}
	method esCulto() {
		return cantidadMuseos >= 2 and habitantes.all({a => a.inteligencia() >= 10}) 
	}
	method potenciaReal() {
		return habitantes.sum({s => s.potencia()})
	}
	method construirMurallas(cantidadMurallas) {
		longitudTotalMurallas += cantidadMurallas
	}
	method fundarMuseo() {
		cantidadMuseos++
	}
	method potenciaAparente() {
		return self.cantidadTotalHabitantes() * self.habitanteConMasPotencia()
	}
	method cantidadTotalHabitantes() {
		return habitantes.count({c => c.potencia()})
	}
	method habitanteConMasPotencia() {
		return habitantes.find({s => s.potencia().max()})
	}
	method necesitaReforzarse() {
		return self.potenciaAparente() * 2 > self.potenciaReal()
	}
	method tributo()
}
