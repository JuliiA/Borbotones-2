package ar.unlam.edu

import grails.plugins.springsecurity.SpringSecurityService

class PruebaController {
	def springSecurityService
    def index() { 
		
//		def user = springSecurityService.principal
//		String nombre = user.username
		render view : 'prueba'
	}
	
	def prueba2(){
		def user = springSecurityService.principal
		Cancion canciones = new Cancion()
		String nombre = ""
		user.listaDeCanciones.each{
			nombre += it.Cancion.name
		}
		render view : "pruebaListas", model:[nombre:"$nombre"]
	}
}
