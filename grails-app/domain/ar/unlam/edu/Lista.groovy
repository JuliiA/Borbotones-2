package ar.unlam.edu

class Lista {
	Integer listaOriginalId
	String name
	SecUser usuario
	static hasMany = [canciones:Cancion]
	
	
	//static belongsTo = [usuarios:Usuario]
}
