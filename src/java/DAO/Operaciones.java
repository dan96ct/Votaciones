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

    public void altaVotante(Votante ObjVotante,Connection conn) throws SQLException {


        String ordensql = "INSERT INTO `votantes` (`nif`, `nombre`, `apellidos`, `domicilio`, `fecha_nac`, `password`) VALUES (?, ?, ?, ?, ?, AES_ENCRYPT(?,'sorbete_de_limon'));";
        PreparedStatement PrepStm = conn.prepareStatement(ordensql);
        PrepStm.setString(1, ObjVotante.getNif());
        PrepStm.setString(2, ObjVotante.getNombre());
        PrepStm.setString(3, ObjVotante.getApellido());
        PrepStm.setString(4, ObjVotante.getDomicilio());
        PrepStm.setDate(5, java.sql.Date.valueOf(ObjVotante.getFecha_nac()));
        PrepStm.setString(6, ObjVotante.getPassword());
        PrepStm.executeUpdate();
    }
    
    public void votar(Connection conn){
        
         
    }
    public boolean compruebaDatos(String nif, String pass){
        boolean validar = false;
        
        return validar;
    }
}
