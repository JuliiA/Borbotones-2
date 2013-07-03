package ar.unlam.edu

class Lista {
	Long listaOriginalId
	String name
	static hasMany = [canciones:Cancion]
	//static belongsTo = [usuarios:Usuario]
}
