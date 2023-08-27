<%-- 
    Document   : index
    Created on : 27-08-2023, 1:24:03
    Author     : steph
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Boostrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calculadora de Interés Simple</h1>
        <form action="CalculadoraInteresServlet" method="post">
            <label for="capital">Capital:</label>
            <input type="text" id="capital" name="capital" required><br><br>

            <label for="tasa">Tasa de Interés Anual (%):</label>
            <input type="text" id="tasa" name="tasa" required><br><br>

            <label for="anos">Número de Años:</label>
            <input type="text" id="anos" name="anos" required><br><br>

            <input type="submit" value="Calcular">
        </form>
        <%
            String resultado = (String) request.getAttribute("resultado");
            if (resultado != null) {
        %>
        <h2>Resultado:</h2>
        <p><%= resultado%></p>
        <%
            }
        %>

    </body>
</html>
