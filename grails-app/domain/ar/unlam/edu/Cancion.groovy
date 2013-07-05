package ar.unlam.edu

class Cancion {
	
    String author
	String name
	Integer estrella
	String url
	Long cancionOriginalId	
	//static belongsTo= [lista:Lista]
	
	static constraints = {
		cancionOriginalId nullable: true
	}
}
