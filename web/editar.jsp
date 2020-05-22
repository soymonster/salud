
<%@page import="com.emergentes.modelo.Blog"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Blog blog = (Blog) request.getAttribute("blog");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>NUEVO/ Editar Entrada</h1>
        <form action="MainControlador" method="post">
        <table>
            <input type="hidden" name="id" value="${blog.id}">
            
            <tr>
                <td>Fecha:</td>
                <td><input type="date" name="fecha" value="${blog.fecha}"></td>
            </tr>
            <tr>
                <td>Titulo:</td>
                <td><input type="text" name="titulo" value="${blog.titulo}"></td>
            </tr>
            <tr>
                <td>Contenido:</td>
                <td>
                <textarea name="contenido"  value="${blog.contenido}">
                </textarea>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="ENVIAR"></td>
            </tr>
        </table>
            </form>
    </body>
</html>