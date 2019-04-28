<%-- 
    Document   : vistaReporte2
    Created on : Jan 8, 2019, 10:45:59 AM
    Author     : DanielAC
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="herramientas.Conector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

<%
       
         Conector c = new Conector();
         File f = new File(application.getRealPath("Reportes/rptPersona.jasper"));
         Map parametros = new HashMap();
         parametros.put("idPersona", Integer.parseInt(request.getParameter("idPersona")));
         
         byte[] bytes = JasperRunManager.runReportToPdf(f.getPath(), parametros, c.conectar());
         response.setContentType("application/pdf");
         
         ServletOutputStream output = response.getOutputStream();
         output.write(bytes,0,bytes.length);
         output.flush();
         output.close();
         response.flushBuffer();
         
       
       
       %> 




    </body>
</html>
