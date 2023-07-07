package com.example.bai1.controller;

import com.example.bai1.model.Person;
import com.example.bai1.service.PersonService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerController", value = "/list")
public class PersonController extends HttpServlet {
    private final PersonService personService = new PersonService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Person> persons = personService.getList();
        request.setAttribute("personList",persons);
        request.getRequestDispatcher("/person/list.jsp").forward(request,response);
    }
}
