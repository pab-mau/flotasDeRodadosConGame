import trafic.*
import otrosRodados.*
import pedidos.*

class Dependencia {

	var property cantidadPersonas
	var flota = []
	var registroPedidos = []
	
	method agregarAFlota(rodado) { flota.add(rodado)}
	
	method quitarDeFlota(rodado) { flota.remove(rodado)}
	
	method estaBienEquipada() {
		
		return flota.size() >= 3 and flota.all({flta=>flta.velocidadMaxima() >= 100})
	}
	
	method capacidadTotalEnColor(color) {
		
		return flota.filter({flta=>flta.color() == color}).sum({flta=>flta.capacidad()})
	}
	
	method rodadoMasRapido () { return flota.max({flta=>flta.velocidadMaxima()})}
	
	method colorDelRodadoMasRapido() {
		
		return self.rodadoMasRapido().color()
	}
	
	method capacidadTotal() {
		
		return flota.sum({flta=>flta.capacidad()})
	}
	method capacidadFaltante() {
		
		return (self.capacidadTotal() - cantidadPersonas).min(0)
	}	
	
	method esGrande() {
		
		return cantidadPersonas >= 40 and flota.size() >= 5
	}
	
	method agregarPedido (pedido) { registroPedidos.add(pedido)}
	
	method quitarPedido(pedido) { registroPedidos.remove(pedido)}
	
	method 	totalPasajerosEnPedidos() {
		
		return registroPedidos.sum({p=>p.cantidadPasajerosATransportar()})
	}
	

	
	
	method pedidosQueNoSatisface() {
		
		
		return registroPedidos.filter({p=>p.puedeSatisfacerPedido(flota)})
		
	}
		
	method colorIncompatiblePedidos(color) {
		
		return registroPedidos.all({p=>p.coloresIncompatibles().contains(color)})
	}
	
	method relajarLosPedidos() {
		
		registroPedidos.forEach({p=>p.relajar()})
	}
		
}
	

