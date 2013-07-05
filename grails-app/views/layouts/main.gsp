<head>
<title><g:layoutTitle default="Grails"/></title>

<link rel="stylesheet" href="${resource(dir: 'css', file: 'templatemo_style.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'coda-slider.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'graficos_reproduccion.css')}" type="text/css">

<script src="${resource(dir: 'js', file: 'jquery-1.2.6.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.scrollTo-1.3.3.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.localscroll-1.2.5.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.serialScroll-1.2.1.js')}"></script>
<script src="${resource(dir: 'js', file: 'coda-slider.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.easing.1.3.js')}"></script>
<sm:inlinePlayer />
<g:layoutHead/>
</head>
<body>

<div id="slider">
    <div id="templatemo_header_wrapper">
        <div id="templatemo_header">
            
        </div>
    </div>
    
    <div id="templatemo_main">
    	
        <div id="templatemo_content">
         
        	<div class="scroll">
        		<div class="scrollContainer">
              	
                    <div class="panel" id="home">
                    	<g:layoutBody/>
                    </div> <!-- end of contact us -->
				
            	</div>
			</div>
        
        	<div class="cleaner"></div>
        </div> <!-- end of tempatemo_content -->
    
    	<div id="templatemo_sidebar">
        	<div id="menu">
                <ul class="navigation">
                	<li><a href="#home" >Home</a></li>
                    <li><a href="http://localhost:8080/ProyectoGrails/crearListaDeCanciones">Canciones</a></li>
                    <li><a href="http://localhost:8080/ProyectoGrails/login">Login</a></li>
                    <li><a href="#portfolio">Portfolio</a></li>
                    <li><a href="#contactus">Contact Us</a></li>
                </ul>
                <div class="cleaner"></div>
            </div>
    	</div> <!-- end of templatemo_sidebar -->
    </div>
    
    <div id="templatemo_footer_wrapper">
        <div id="templatemo_footer">
        
            
            <div class="cleaner"></div>
		</div>        
    </div>
</div>

</body>
</html>