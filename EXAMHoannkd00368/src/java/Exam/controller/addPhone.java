/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Exam.controller;

import Exam.model.processDatabase;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nobita Nguyen
 */
public class addPhone extends HttpServlet {

    processDatabase db = new processDatabase();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        
        try {
            String name = request.getParameter("name");
            String brand = request.getParameter("optionBrand");
            String price = request.getParameter("price");
            String desc = request.getParameter("desc");
            int priceNumber = Integer.parseInt(price);
            Phone p = new Phone(name, brand, priceNumber, desc);
            if (db.addPhone(p)>0) {
                response.sendRedirect("listphone.jsp");
            } else{
                request.setAttribute("error", "Add fail");
            }
            
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Price invalid");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

