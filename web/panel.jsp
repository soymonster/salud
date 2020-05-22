<%@page import="com.emergentes.modelo.Blog"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
if (session.getAttribute("logueado")!= "OK") {
        response.sendRedirect("login.jsp");
    }
%>

<%
List<Blog> lista = (List<Blog>) request.getAttribute("lista");

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <p style="padding-left:1000px;">${sessionScope.usuario}<a href="LoginControlador?action=logout" style="padding-left:10px;">Salir</a></p>
    <body style="padding-left:100px;padding-right:100px;background: grey;">
        <h1 style="text-align: center;background-color:mediumpurple;">BLOG-SALUD</h1>
        
        <a href="MainControlador?op=nuevo">Nuevo Entrada</a>
        
            <c:forEach var="item" items="${lista}">
                <div> 
                 <br>
                ${item.fecha}
                </div>
                 <br>
                 <div> 
                <strong>${item.titulo}</strong>
                 <br><br><br>
                ${item.contenido}
                <br>
                </div>
                <p>Autor: ${sessionScope.usuario}
                <a style="padding-left: 700px;
                padding-right: 0px;" href="MainControlador?op=eliminar&id=${item.id}">Eliminar</a>
               
                <a style="padding-left: 50px;
                padding-right: 0px;" href="modificar.jsp">Editar</a></p>
                <p>**********************************************************************************************************************************************</p>
            </c:forEach>
             
    </body>

</html>