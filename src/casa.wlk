import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	method comprar(cosa){cosas.add(cosa)}
	method cantidaDeCosasCompradas(){cosas.size()}// size = cuantos elementos hay en una lista
	method tieneComida(){cosas.any{c => c.esComida()}}// any = si algunas cosas de la lista es (lo que queremos saber)
	method vieneDeEquiparse(){return cosas.last(cosas.esElectrodomestico()) or 5000 < cosas.last(cosas.precio())}
	method esDerrocha(){return 9000 <= cosas.sum{ c => c.precio()}}// sum = suma toda la lista si son numeros si no se le agrega lo que quiere que sume
	method compraMasCara(){cosas.max{c => c.precio()}}//max = muestra el max numero osea el mas alto ya que estos son objectos le damos un method con numero
	method electrodomesticosComprados(){cosas.filter{c => c.esElectrodomestico()}}
	method malaEpoca(){cosas.all{c => c.esComida()}}
	method queFaltaComprar(lista){return lista.asSet().difference(cosas.asSet())}//asSet = convierte la lista en conjuntos ya que difference solo admite conjuntos
	method faltaComida(){ return cosas.count{c => c.esComida()} < 2}//count = cuantos ahy en una lista que cumplan con los terminos que apliquemos
	
	
	
}
