package ar.unlam.edu

class Cancion {
	
    String author
	String name
	Integer estrella
	String url
	Long cancionOriginalId	
	static belongTo = [listasDeCanciones:List]
	
	static constraints = {
		cancionOriginalId nullable: true
	}
}
