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
		cosas.filter ( {cosa => cosa.esComida() }).size()>2
	}
	
}
