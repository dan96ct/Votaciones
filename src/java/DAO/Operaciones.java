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
import java.sql.ResultSet;

/**
 *
 * @author dani
 */
public class Operaciones {

    public void altaVotante(Votante ObjVotante, Connection conn) throws SQLException {

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

    public void votar(Connection conn, Votante votante, String partido) throws SQLException {
        String ordensql = "UPDATE `partidos` SET `votos`=`votos`+1 WHERE `nombre`=?;";
        PreparedStatement PrepStm = conn.prepareStatement(ordensql);
        PrepStm.setString(1, partido);
        PrepStm.executeUpdate();
        
        String ordensql2 = "UPDATE `votantes` SET `voto`='SI' WHERE `nif`=?";
        PreparedStatement PrepStm2 = conn.prepareStatement(ordensql2);
        PrepStm2.setString(1, votante.getNif());
        PrepStm2.executeUpdate();

    }

    public boolean compruebaDatos(Votante votante, Connection conn) throws SQLException, Exception {
        String ordensql = "SELECT * FROM votantes where `nif`=? and AES_DECRYPT(password,'sorbete_de_limon')=?;";
        PreparedStatement PrepStm = conn.prepareStatement(ordensql);
        PrepStm.setString(1, votante.getNif());
        PrepStm.setString(2, votante.getPassword());
        // execute select SQL stetement
        ResultSet rs = PrepStm.executeQuery();
        while(rs.next()){
        String voto = rs.getString("voto");
        if(voto.equals("SI")){
            throw new Exception();
        }
        }

        return rs.first();
    }
}
