/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Calculler;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author steph
 */
@WebServlet(name = "Calcular", urlPatterns = {"/Calcular"})
public class Calcular extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            double capital = Double.parseDouble(request.getParameter("capital"));
            double tasa = Double.parseDouble(request.getParameter("tasa"));
            int anos = Integer.parseInt(request.getParameter("anos"));

            double interesSimple = (capital * (tasa / 100) * anos);

            String resultado = "El interés simple generado es: $" + interesSimple;

            request.setAttribute("resultado", resultado);

            request.getRequestDispatcher("tu_pagina.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            String error = "Por favor, ingresa valores numéricos válidos.";
            request.setAttribute("error", error);
            request.getRequestDispatcher("tu_pagina.jsp").forward(request, response);
        }
    }
}
