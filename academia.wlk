/** Reemplazar por la solución del enunciado */
class Academia {
	const property muebles = #{}
method estaGuardada(cosa) {
	return muebles.any({mueble => mueble.contengo(cosa)})

}
method quienContiene(cosa) {
	return muebles.find({mueble=> mueble.contengo(cosa)})
}
method almacenar(mueble) {
	self.validarMueble(mueble)
	muebles.agregar(mueble)
  
}
method validarMueble(mueble) {


  
}
method puedeGuardar(cosa) {

  
}
}
class Mueble{
	const cosas = #{}

	method tiene(cosa) = cosas.contains(cosa)
	  
	}





class Baul inherits Mueble{
	const property cosas = #{} 
	var property capacidadMaxima = null

	method volumen() {
		return cosas.sum({cosa=>cosa.volumen()})
	  
	}  
	method agregarCosa(cosa) {
		self.validarAgregado(cosa)
		cosas.add(cosa)
	}
	method validarAgregado(cosa) {
		return if ((self.volumen() + cosa.volumen())> capacidadMaxima || cosas.contains(cosa) )
		self.error("supero capacidad maxima")
	}
	method contengo(cosa) {
		return cosas.contains(cosa)
	  
	}
	
}

class GabineteMagico {
	const property cosas = #{}
	var property precio = null
	method agregarMagica(cosa) {
		self.validarMagiaDe(cosa)
		cosas.add(cosa)
	}
	method validarMagiaDe(cosa) {
		return if (not cosa.esMagico() || cosas.contains(cosa))
		self.error("no es posible agregar")
	}
	method contengo(cosa) {
		return cosas.contains(cosa)
	  
	}
  
}
class Armario {
	var property cantidadMax = null
	const property cosas = #{}
	
	method agregar(cosa) {
		self.validarAgregado(cosa)
		cosas.add(cosa)
	}
	method validarAgregado(cosa) {
		return if ( cosas.contains(cosa) || cantidadMax < cosas.size())
				self.error("no puedo agregar ")
	}
method contengo(cosa) {
		return cosas.contains(cosa)
	  
	}
  
}
class Cosa {
	var property marca = null 
	var property volumen = null
	var property esMagica = null 
	var property esReliquia = null
  
}
