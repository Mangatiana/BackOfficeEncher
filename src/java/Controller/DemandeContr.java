/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Admin;
import Model.Rechargement;
import Model.Utilisateur;
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
import utilitaire.UrlParser;

/**
 *
 * @author Mandresy
 */
public class DemandeContr extends HttpServlet {

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
        
       Admin adm=new Admin();
       if(request.getParameter("id")!=null){
           Rechargement r=new Rechargement();
           r.setId(Integer.parseInt((request.getParameter("id"))));
           Double d=Double.parseDouble(request.getParameter("solde"));
           Integer idu=Integer.parseInt(request.getParameter("idU"));
           System.out.print(d);
           Utilisateur u=new Utilisateur(idu,d);
           r.setUtil(u);
           r.setMontant(Double.parseDouble(request.getParameter("mont")));
           
           try {
               System.out.print(r.getUtil().getSolde()+"solde");System.out.print(r.getUtil().getIdutilisateur()+"id");
               adm.valider_demande(r);
           } catch (SQLException ex) {
               Logger.getLogger(DemandeContr.class.getName()).log(Level.SEVERE, null, ex);
           }
       }
        try {
            ArrayList<Rechargement> liste=adm.lister_rechargement();
            request.setAttribute("liste",liste);
        } catch (SQLException ex) {
            Logger.getLogger(DemandeContr.class.getName()).log(Level.SEVERE, null, ex);
        }
            RequestDispatcher dispat = request.getRequestDispatcher("FrontDemandeR/table.jsp");
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
