package ar.unlam.edu
import grails.converters.JSON
import ar.unlam.edu.Cancion
import ar.unlam.edu.Lista
import ar.unlam.edu.Comentario

class CancionesController {
	def springSecurityService
	def secUser = springSecurityService.principal
	def index(){
		def canciones = Cancion.list()	
		render view:'/canciones/Canciones',model:[canciones:canciones]
	} 
		
	def cantEstrellas(Long idCancion, Integer estrellas){
		
		def cancion = Cancion.findByCancionOriginalId(idCancion)
		cancion.estrella = estrellas
		cancion.save(true)	
		redirect action:"index"		
	}
		
	def defineModelo(){
		def canciones = Cancion.list()
		render view:'/listaDeCanciones/ListaDeCanciones',model:[canciones:canciones]
		}
	
	def crearLista(){		
		
		def idCanciones = params.list('idCancion')*.toLong()
		def canciones = Cancion.findAllByCancionOriginalIdInList(idCanciones)
		def listaReproduccion = new Lista(listaOriginalId:'1',name:params.nombreLista, canciones:canciones, usuario: secUser)
		listaReproduccion.save(true)
		secUser.addToListas(listas:canciones)
//		def cancion1 = new Cancion(author: 'No te va a gustar', name:'Sin pena ni gloria', estrella:0,puntuacion:0, url:'http://localhost:80/Musica/pista (1).mp3', cancionOriginalId:"1")
//		cancion1.save(flush:true)
//			secUser.addToListas(cancion1)
		
//		SecUser usuario = new SecUser()
		
		redirect controller:'Prueba', action:'prueba2'
	}
	
	def listarListas(){
		
		def listas = Lista.list().reverse()
		render view:'/listaDeCanciones/verListaDeCanciones',model:[listas:listas]
	}
	
	def download(Long idCancion){		
		def cancion = Cancion.findByCancionOriginalId(idCancion)
		response.setContentType("application/octet-stream")
		response.setHeader("Content-disposition", "attachment;filename=${cancion.name + '-' + cancion.author}")
		
		def cancionmp3 = new URL(cancion.url).openStream()
		
		response.outputStream << cancionmp3
	}
	
	
	def mejorPuntuacion(){
		def cincoEstrellas = Cancion.findByEstrella("5")
		def cuatroEstrellas = Cancion.findByEstrella("4")
		
		render view: '/canciones/cancionesMejorPuntuadas', model:[cincoEstrellas:cincoEstrellas, cuatroEstrellas:cuatroEstrellas]
	}
	
	def comentar(){
		def cancion = Cancion.findByCancionOriginalId(params.idCancion)
		render view:'/canciones/comentar',model:[cancion:cancion]
	}
		
	def guardarComentario() {
		
		//def cancion = Cancion.findByCancionOriginalId(params.idCancion)
		
		def coment = new Comentario(params)
		/*coment.texto = texto
		coment.idCancion = cancion.cancionOriginalId*/
		coment.save(true)
		
		//def idComentario = coment.id
				
		redirect action: 'listarComentario', params: [idCancion:params.idCancion]	
	}
	
	def listarComentario(Long idCancion){
		def cancion = Cancion.findByCancionOriginalId(idCancion)
		def comentarios = Comentario.findAllByIdCancion(idCancion).reverse() 
		render view:'/canciones/comentar',model:[comentarios:comentarios, cancion:cancion]
	}
}
