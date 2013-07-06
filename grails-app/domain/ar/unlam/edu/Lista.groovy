package ar.unlam.edu

class Lista {
	Integer listaOriginalId
	String name
	//static belongsTo = [usuario:SecUser]
	static hasMany = [canciones:Cancion]
	
	
	//static belongsTo = [usuarios:Usuario]
}
