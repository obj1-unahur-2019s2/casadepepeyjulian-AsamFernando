object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object kgMilangas {
	var property precio=260
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object salsaTomate {
	var property precio=90
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }
}

object kgCebolla {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object dolar {
	var property cotizacion=60
}

object compu {
	method precio() { return 500*dolar.cotizacion() }
	method esComida() { return false }
	method esElectrodomestico() { return true }
}

object packComida {
	var property comida=tiraDeAsado
	var property aderezo=salsaTomate
	
	method precio() {
		return comida.precio()+aderezo.precio()
	}
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object packRegalo {
	var packLoQSea = []
	
	method agregarAlPack(objeto) {
		packLoQSea.add(objeto)
	}
	method precio() {
		return packLoQSea.sum {a => a.precio()}*0.8
	}
	method esComida() {
		return packLoQSea.all { a => a.esComida() }
	}
	method esElectrodomestico() {
		return packLoQSea.any { a => a.esElectrodomestico() }
	}
}

object cuentaCorriente {
	var saldo=0
	method depositar(importe) {
		saldo+=importe
	}
	method extraer(importe) {
		saldo-=importe
	}
	method saldo() { return saldo }
}


object cuentaConGastos {
	var saldo=0
	method depositar(importe) {
		saldo+=importe-20
	}
	method extraer(importe) {
		if (importe<=1000) {
			saldo-=importe+20
		}
		else {
			saldo-=importe*1.02
		}
	}
	method saldo() { return saldo }
}


object cuentaCombinada {
	var saldoPrimario=0
	var saldoSecundario=0
	method depositar(importe) {
		saldoPrimario+=importe
	}
	method extraer(importe) {
		if (importe<=saldoPrimario) {
			saldoPrimario-=importe
		}
		else {
			saldoSecundario-=importe
		}
	}
	method saldo() { return saldoPrimario+saldoSecundario }
}









