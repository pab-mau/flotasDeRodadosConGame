import trafic.*
import otrosRodados.*


class Pedidos {
	var property distanciaARecorrer
	var property tiempoMaximo
	var property cantidadPasajerosATransportar
	var property coloresIncompatibles
	
	
	method velocidadRequerida () { return distanciaARecorrer / tiempoMaximo}
	
	method puedeSatisfacerPedido(auto) {
				
		return (auto.velocidadMaxima() - self.velocidadRequerida())  <= 10
		and auto.capacidad() >= cantidadPasajerosATransportar
		and (not auto.color() == coloresIncompatibles)
	}
	
	
	
}
