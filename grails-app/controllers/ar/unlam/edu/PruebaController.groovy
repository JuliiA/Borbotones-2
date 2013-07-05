package ar.unlam.edu

import grails.plugins.springsecurity.SpringSecurityService
import org.example.SecUser

class PruebaController {
	def springSecurityService
    def index() { 
		
		def user = springSecurityService.principal
		String nombre = user.username
		render view : 'prueba'
	}
}
