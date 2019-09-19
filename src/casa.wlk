import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar(cosa) {
		cosas.add(cosa)
	}
	method cantidadCosasCompradas() {
		return cosas.size()
	}
	method tieneComida() {
		return cosas.any({ cosa=> cosa.esComida() })
	}
	method vieneDeEquiparse() {
		return cosas.last().esElectrodomestico() or cosas.last().precio()>5000
	}
	method esDerrochona() {
		return cosas.sum({ cosa => cosa.precio() })>9000
	}
	method compraMasCara() {
		return cosas.max({ cosa => cosa.precio() })
	}
	method electrodomesticosComprados() {
		return cosas.filter({ cosa => cosa.esElectrodomestico()})
	}
	method malaEpoca() {
		cosas.all({ cosa => cosa.esComida() })
	}
	method queFaltaComprar(lista) {
		return lista.asSet().difference(cosas.asSet()).asList()
		//return lista.filter {deseo=>not cosas.contains(deseo)}
	}
	method faltaComida() {
		return cosas.filter( {cosa => cosa.esComida() }).size()>2
	}
	method gastoEnComida() {
		return cosas.filter({ cosa => cosa.esComida()}).sum({ cosa => cosa.precio()})
	}
	method hayElectrodomesticosBaratos() {
		return cosas.any({ cosa => cosa.precio()<3000})
	}
	method preciosDeElectrodomesticos() {
		return cosas.filter({ cosa => cosa.esElectrodomestico() }).map({ cosa => cosa.precio() })
	}
	method niverDeAumento() {
		return cosas.last().precio()>=cosas.first().precio()*2
	}
	method primeraComidaComprada() {
		return cosas.find({ cosa => cosa.esComida() })
	}
}


















