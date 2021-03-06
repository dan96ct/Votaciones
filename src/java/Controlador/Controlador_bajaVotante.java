/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DAO.ConexionBBDD;
import DAO.Operaciones;
import Excepciones.AltaVotante_exception;
import Excepciones.BajaVotante_exception;
import Modelo.Votante;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dani
 */
public class Controlador_bajaVotante extends HttpServlet {
 private Connection Conexion;
    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        ConexionBBDD ConexBD;  
        try {
            ConexBD = ConexionBBDD.GetConexion();
            Conexion=ConexBD.GetCon();

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Controlador_bajaVotante.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Controlador_bajaVotante.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
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
        try (PrintWriter out = response.getWriter()) {

            String nif = (String) request.getParameter("nif");
        String passwd = (String) request.getParameter("passwd");

        Votante votante = new Votante(nif, passwd);
        
        try {
            Operaciones operaciones = new Operaciones();
            operaciones.compruebaDatos_NIF_PASS(votante, Conexion);
            Conexion.setAutoCommit(false);
            operaciones.bajaVotante(votante,Conexion);
            Conexion.commit();
            response.sendRedirect("/Votaciones/Vistas/confirmacion_vista.jsp");
        } catch (SQLException sQLException) {
            response.sendRedirect("/Votaciones/Vistas/errorConexion_vista.jsp");
        }
        catch (BajaVotante_exception exc){
            HttpSession session = request.getSession();
            session.setAttribute("error", exc.getMessage());
            response.sendRedirect("/Votaciones/Vistas/Error_vista.jsp");
        }
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
