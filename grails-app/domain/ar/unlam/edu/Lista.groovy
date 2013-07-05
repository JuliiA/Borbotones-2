package ar.unlam.edu

class Lista {
	Long listaOriginalId
	String name
	SecUser usuario
	static hasMany = [canciones:Cancion]
	
	
	//static belongsTo = [usuarios:Usuario]
}
