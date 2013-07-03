<html xmlns="http://www.w3.org/1999/xhtml">
<head>		
	<meta name="layout" content="main">
	<%--link para ranking --%>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'ranking.css')}" type="text/css">
</head>
<Body>
	<h2>Hola ${session.username} !</h2>
	<div class="col_370 left">
		<div class="scrollContainer">
			<g:form action="guardarComentario" controller="canciones">
				<g:each in="${cancion}" var="unacancion">
					<h4>Comentar ${unacancion.name} de ${unacancion.author}</h4></br>
					<g:link url="${unacancion.url}" controller="canciones" action="comentar">${unacancion.author + '-' + unacancion.name}</g:link>
				
					<g:hiddenField name="idCancion" value="${unacancion.cancionOriginalId?unacancion.cancionOriginalId:''}"/>
					<g:textArea name="texto" placeholder="Escribi tu comentario aquí...">${texto?texto:''}</g:textArea>
	  				<g:submitButton name="Comentar!"/>
				</g:each>
			</g:form>
			<ul>
			  	<g:each in="${comentarios}" var="comentario">
			 		<table>
			 		<tr>
			  			${comentario.texto}
			  		</tr>
			  		</table>
			  	</g:each>
			</ul>		
		</div>
	</div>
</Body>
</html>
