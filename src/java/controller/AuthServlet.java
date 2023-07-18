/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import database.AccountDAOBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class AuthServlet extends HttpServlet {

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
        String doAction = request.getParameter("do-action");
        switch (doAction) {
            case "login":
                login(request, response);
                break;
            case "register":
                register(request, response);
                break;
            case "logout":
                logout(request, response);
                break;
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rememberMe = request.getParameter("rememberMe");

        AccountDAOBean accDAO = new AccountDAOBean();
        Account acc = new Account();
        acc.setUsername(username);
        acc.setPassword(password);

        Account account = accDAO.selectByUsername(acc);
        String url = "";
        if (account != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", account);
            if (rememberMe != null && rememberMe.equals("true")) {
                // Remember me checkbox is selected, set session timeout to a longer duration
                session.setMaxInactiveInterval(7 * 24 * 60 * 60); // 7 days
            }
            if(account.isIsUser() == false){
                String adminPermiss = "has";
                session.setAttribute("adminPermission", adminPermiss);
            }
            session.setMaxInactiveInterval(60 * 60);
            url = "/index.jsp";
        } else {
            request.setAttribute("errorLogin", "Username or Password is not right!");
            request.setAttribute("usernameLogin", username);
            url = "/auth.jsp";
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        try {
            rd.forward(request, response);
        } catch (ServletException ex) {
            ex.printStackTrace();
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }

    private void register(HttpServletRequest request, HttpServletResponse response) {
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String rePassword = request.getParameter("repeatPassword");

            String url = "";

            String error = "";
            AccountDAOBean accDAO = new AccountDAOBean();
            if (accDAO.checkUsername(username)) {
                error += "Username already exists";
            }
            if (!password.matches(rePassword)) {
                error += "Password don't match!";
            }

            if (error.length() > 0) {
                request.setAttribute("usernameRegister", username);
                request.setAttribute("error", error);
                url = "/auth.jsp";
            } else {
                Account newAcc = new Account(username, password, false, "", "", "", "", null, "", "", "");
                accDAO.insert(newAcc);
                HttpSession session = request.getSession();
                session.setAttribute("user", newAcc);
                url = "/index.jsp";
            }

            RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
            rd.forward(request, response);
        } catch (ServletException servletException) {
        } catch (IOException iOException) {
        }
    }
    
    private void logout(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        try {
            HttpSession session = request.getSession();
            
            session.invalidate();
            
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        } catch (IOException iOException) {
        } catch (ServletException ex) {
            ex.printStackTrace();
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
