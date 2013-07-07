package ar.unlam.edu
import ar.unlam.edu.Cancion

import ar.unlam.edu.Lista

class BusquedaDeCancionController {

     def index() { 
		 render view:'buscarCancion'
	}	 
	
	def busqueda(){
		render view:'buscarCancion'
	}
	
	def buscarCancion(){
		
		if(params.Cantante){
			if(params.cancionBuscada != null){
				
				def busqueda = Cancion.findAllByAuthor(params.cancionBuscada)		
				
				def busqGuardada = new Busqueda(canciones:busqueda)
				busqGuardada.save(true)
				
				if(busqueda!=null){
					render view : "buscarCancion", model:[busqueda:busqueda]
				}else{
					render view : "buscarCancion", model:[error: "El artista no existe"]
				}
			}
		}else if(params.Nombre){		
			
			def busqueda = Cancion.findAllByName(params.cancionBuscada)
			
			def busqGuardada = new Busqueda(canciones:busqueda)
			busqGuardada.save(true)
			
			if(busqueda!=null){
				render view : "buscarCancion", model:[busqueda:busqueda]
			}else{			
				render view : "buscarCancion", model:[error: "La cancion no existe"]
			}
		} 
	}
	
	def mostrarBusquedas(){
		def busquedas = Busqueda.list().reverse()
		render view : "busquedasRecientes", model:[busquedas:busquedas]
	}	
}
