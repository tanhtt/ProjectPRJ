/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import database.AccountDAOBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author ADMIN
 */
public class EditPassword extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {
            String currentPass = request.getParameter("currentPassword");
            String password = request.getParameter("password");
            String rePassword = request.getParameter("rePassword");

            String error = "";
            String success = "";
            if (!password.equals(rePassword)) {
                error += "Password don't match!";
            }

            if (error.length() > 0) {

            } else {
                HttpSession session = request.getSession();
                Account customer = (Account) session.getAttribute("user");
                if (customer.getPassword().equals(currentPass)) {

                    AccountDAOBean cDAO = new AccountDAOBean();
                    cDAO.update(new Account(customer.getUsername(),password,customer.isIsUser(),customer.getFullname(),customer.getGender(),customer.getAddress(),customer.getDeliveryAddress(),customer.getDateOfBirth(),customer.getTel(),customer.getEmail(),""));
                    success += "Changed!";
                } else {
                    error += "Something wrong!";
                }
            }
            request.setAttribute("error", error);
            request.setAttribute("success", success);

            RequestDispatcher rd = getServletContext().getRequestDispatcher("/edit-password.jsp");
            rd.forward(request, response);
        } catch (ServletException servletException) {
        } catch (IOException iOException) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
