/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author dani
 */
public class Conexion_bd {

    public Conexion_bd() {
    }

    public Connection AbreConexion() {
        System.out.println("Loading driver...");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded!");
       
        Connection conn = null;
        try {
            String jdbcUrl = "jdbc:mysql://localhost:3306/bd_votaciones";
            conn = DriverManager.getConnection(jdbcUrl, "root", "root");
            System.out.println("Conexion con bd establecida");

        } catch (SQLException se) {
            System.err.println("CONEXION FALLIDA");

            se.printStackTrace();
        } catch (Exception e) {
            System.err.println("CONEXION FALLIDA");
            e.printStackTrace();
        }
        return conn;
         } catch (ClassNotFoundException e) {
            throw new IllegalStateException("Cannot find the driver in the classpath!", e);
        }
    }

    void CierraConexion(Connection conn) {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException se) {
            se.printStackTrace();
        }
    }
}
