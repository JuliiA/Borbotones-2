package ar.unlam.edu

class Comentario {
	String texto
	Long idCancion
	//static belongsTo = [cancion:Cancion]
	
	static constraints = {
		texto maxLength: 140
	}
}
