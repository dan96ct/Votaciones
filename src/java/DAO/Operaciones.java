/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Votante;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author dani
 */
public class Operaciones {

    public void altaVotante(Votante ObjVotante) throws SQLException {
        Conexion_bd con = new Conexion_bd();
        Connection conn = con.AbreConexion();
        String ordensql = "INSERT INTO `bd_votaciones`.`votantes` (`nif`, `nombre`, `apellidos`, `domicilio`, `fecha_nac`, `password`) VALUES (?, ?, ?, ?, ?, ?);";
        PreparedStatement PrepStm = conn.prepareStatement(ordensql);
        PrepStm.setString(1, ObjVotante.getNif());
        PrepStm.setString(2, ObjVotante.getNombre());
        PrepStm.setString(3, ObjVotante.getApellido());
        //PrepStm.setDate(5, java.sql.Date.valueOf(_ObjVotante.getFechaNac());        
    }
}
