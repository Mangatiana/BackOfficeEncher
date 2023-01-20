/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Categorie_enchere;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utilitaire.GenericDAO;

/**
 *
 * @author Mandresy
 */
public class CategorieContr extends HttpServlet {

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
        Categorie_enchere ce=new Categorie_enchere();
        try {
            GenericDAO gd=new GenericDAO(ce);
            ArrayList<Object> liste=gd.Select();
            request.setAttribute("listeC",liste);
        } catch (SQLException ex) {
            Logger.getLogger(CategorieContr.class.getName()).log(Level.SEVERE, null, ex);
        }
        RequestDispatcher dispat = request.getRequestDispatcher("FrontCateg/table.jsp");
        dispat.forward(request,response);
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
        Categorie_enchere ce=new Categorie_enchere(request.getParameter("categ"));
        try {
            ce.save();
        } catch (SQLException ex) {
            Logger.getLogger(CategorieContr.class.getName()).log(Level.SEVERE, null, ex);
        }
        response.sendRedirect("http://localhost:8080/Backoffice/CategorieContr");
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
