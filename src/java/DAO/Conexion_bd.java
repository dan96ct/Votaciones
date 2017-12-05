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
        Connection conn = null;
        try {
            String jdbcUrl = "jdbc:mysql://localhost:3306/vd_votaciones";
            conn = DriverManager.getConnection(jdbcUrl, "root", "root");

        } catch (SQLException se) {

            se.printStackTrace();
        } catch (Exception e) {

            e.printStackTrace();
        }
        return conn;
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
