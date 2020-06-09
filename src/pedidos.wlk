import trafic.*
import otrosRodados.*


class Pedidos {
	var property distanciaARecorrer
	var property tiempoMaximo
	var property cantidadPasajerosATransportar
	var property coloresIncompatibles = #{}
	
	
	
	method velocidadRequerida () { return distanciaARecorrer / tiempoMaximo}
	
	method acelerar() { tiempoMaximo -=1}
	
	method relajar() { tiempoMaximo +=1}
		
	method puedeSatisfacerPedido(auto) {
				
		return (auto.velocidadMaxima() - self.velocidadRequerida())  >= 10
		and auto.capacidad() >= cantidadPasajerosATransportar
		and not (coloresIncompatibles.contains(auto.color()))
	}
	
	
	
}
