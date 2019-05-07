
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IMC</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <%
          
            String estatura; 
            String peso;
            
            String descripcion;
            
            estatura = request.getParameter("estatura");
            peso = request.getParameter("peso");
            
            float estaturaF = Float.parseFloat(estatura) / 100;
            
            float pesoF = Float.parseFloat(peso);
            
            float imcF;
            
            imcF = (pesoF ) / ( estaturaF * estaturaF );
            
            if (imcF<=15){
               descripcion =" Delgades Muy severa (Come Empanadas.!!!)"; 
            }else {
                if (imcF<15.9){
                   descripcion =" Delgades severa (Come Sopa.!!!)"; 
                }else{
                    descripcion =" En Desarrollo....";
                }
                    
            }          

        
        %>
        
         <button type="button" class="btn btn-primary">
             Estatura  <span class="badge badge-light"><%=estatura%></span>
          </button>
          
          <button type="button" class="btn btn-primary">
             Peso  <span class="badge badge-light"><%=peso%></span>
          </button>
        
        
        <h1>Su índice de Masa Corporal es :  <%=imcF%> </h1>
        
        <h1>Recomendación :  <%=descripcion%> </h1>
        
    <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
