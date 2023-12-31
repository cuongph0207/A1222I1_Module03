package controller;

import model.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", value = "/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float first = Integer.parseInt(request.getParameter("first"));
        float second = Integer.parseInt(request.getParameter("second"));
        char operator = request.getParameter("operator").charAt(0);
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Result:</h1>");
        try {
            float result = Calculator.calculate(first, second, operator);
            writer.println(first + " " + operator + " " + second + " = " + result);
        } catch (Exception e) {
            writer.println("Error: " + e.getMessage());
        }
        writer.println("</html>");
    }
}