
 <%@ page import="org.example.SecUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		
	</head>
	<body>
	
                        <h2>Welcome to Mini Two!</h2>   
                        <div class="col_370 float_l">
                        <div id="divTransparente">
                            <g:img dir="images" file="springsource.png" width="40" height="40"/>	
                                 
                            <sec:loggedInUserInfo field="username" />
                           hola q hace
                        </div>
                        </div>
                        <div class="col_220 float_r">   
                            <h3>Our Services</h3>
                            
                            <ul class="service_list">
                                <li><a href="#" class="service_one">Morbi luctus vitae cursus</a></li>
                                <li><a href="#" class="service_two">Pellentesq tris senectus</a></li>
                                <li><a href="#" class="service_three">Duis at commodo molestie</a></li>
                                <li><a href="#" class="service_four">In aliquet in libero</a></li> 
                                <li><a href="#" class="service_five">Maecenas ut pretium</a></li>   
                            </ul>
                        </div>                
                    
                    <!-- end of home -->
                    
                    
                    
	</body>
</html>   