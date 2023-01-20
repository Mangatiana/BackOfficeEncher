/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Admin;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mandresy
 */
public class StatsContr extends HttpServlet {

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
//       HttpSession session=request.getSession();
//       Admin adm=(Admin) session.getAttribute("admin");
        Admin adm=new Admin();
        try {
            int benmois=adm.get_ben_ce_mois();
            int[] benparmois=adm.get_ben_par_mois();
            int bentotal=adm.bentotal();
            Categorie_enchere categ=adm.categ_plus_vendu();
            int nbdemande=adm.getnbdemande();
            ArrayList<Object[]> camebert=adm.enchereparcateg();
            request.setAttribute("benefcemois", benmois);
            request.setAttribute("benefparmois", benparmois);
            request.setAttribute("beneftotal", bentotal);
            request.setAttribute("categorievendu",categ);
            request.setAttribute("nbdemande",nbdemande);
            request.setAttribute("camembert",camebert);
        } catch (SQLException ex) {
            Logger.getLogger(StatsContr.class.getName()).log(Level.SEVERE, null, ex);
        }
            RequestDispatcher dispat = request.getRequestDispatcher("FrontStats/index.jsp");
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
