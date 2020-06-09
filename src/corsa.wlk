import wollok.game.*
import colores.*

class ChevroletCorsa {
	var property colorE = rojo
	
	var property position = game.at(1,5)
	
	var posicionesRecorridas = []
	
	
	method capacidad () { return 4}
	
	
	
	method velocidadMaxima() { return 150}
	
	method peso () { return 1300 }
	
	
	method color() { return colorE}
	
	
	
	method pasoPor(posicion) {
		
	
		
		return posicionesRecorridas.contains(posicion)
	}
	
    method pasoPorFila(numero){
    	
        return posicionesRecorridas.any({p=>p.x() == numero})
    }
    
    method recorrioFilas(listaDeNumeros) {
    	
    	
    } 	
	
}
