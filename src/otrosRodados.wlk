class ChevroletCorsa {
	var property colorE
	
	
	method capacidad () { return 4}
	method velocidadMaxima() { return 150}
	method peso () { return 1300 }
	method color() { return colorE}
}

class RenaultKwid {
	
	var property tieneTanqueAdicional
   
	
	method capacidad () {return if (tieneTanqueAdicional){3} else { 4}}
	method velocidadMaxima () { return if(tieneTanqueAdicional) {120} else {110}}
	method peso() { return if(tieneTanqueAdicional){1200 + 150 } else {1200}}
    method color() { return "azul"}
    }
    


class AutosEspeciales {
	var property capacidadE
	var property velocidad
	var property pesoE
	var property colorE
	
	
	method capacidad() { return capacidadE}
	method velocidadMaxima() { return velocidad}
	method peso () { return pesoE}
	method color () { return colorE}
	
	
}