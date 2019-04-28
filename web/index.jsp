<%-- 
    Document   : index
    Created on : Jan 8, 2019, 10:40:42 AM
    Author     : DanielAC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <div align="center">
            <h3>Ejemplo de reportes</h3>
            <ul>
                <li><a href="vistaReporte1.jsp">Reporte 1</a></li>
                
                <li>
                
                    <form action="vistaReporte2.jsp" method="GET">
                        <input type="text" name="idPersona" />
                        <input type="submit" value="Enviar" />
                    </form>
                    
                </li>
            </ul>
        </div>



    </body>
</html>
