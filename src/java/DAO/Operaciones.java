/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Excepciones.AltaVotante_exception;
import Excepciones.BajaVotante_exception;
import Excepciones.Voto_exception;
import Modelo.Partido;
import Modelo.Votante;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;

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

    public void bajaVotante(Votante objVotante, Connection conn) throws SQLException {
        String ordensql = "DELETE FROM `votantes` WHERE `nif`=?;";
        PreparedStatement PrepStm = conn.prepareStatement(ordensql);
        PrepStm.setString(1, objVotante.getNif());
        PrepStm.executeUpdate();
    }

    public void votar(Connection conn, Votante votante, String partido) throws SQLException {
        String ordensql = "UPDATE `partidos` SET `votos`=`votos`+1 WHERE `siglas`=?;";
        PreparedStatement PrepStm = conn.prepareStatement(ordensql);
        PrepStm.setString(1, partido);
        PrepStm.executeUpdate();

        String ordensql2 = "UPDATE `votantes` SET `voto`='SI' WHERE `nif`=?";
        PreparedStatement PrepStm2 = conn.prepareStatement(ordensql2);
        PrepStm2.setString(1, votante.getNif());
        PrepStm2.executeUpdate();

    }

    public boolean compruebaDatos(Votante votante, Connection conn) throws SQLException, Voto_exception {
        String ordensql = "SELECT * FROM votantes where `nif`=? and AES_DECRYPT(password,'sorbete_de_limon')=?;";
        PreparedStatement PrepStm = conn.prepareStatement(ordensql);
        PrepStm.setString(1, votante.getNif());
        PrepStm.setString(2, votante.getPassword());
        // execute select SQL stetement
        ResultSet rs = PrepStm.executeQuery();
        while (rs.next()) {
            String voto = rs.getString("voto");
            if (voto.equals("SI")) {
                throw new Voto_exception("Tu voto ya ha sido registrado, no puedes votar dos veces");
            }
        }
        rs.first();
        if(rs.next() == false){
            throw new Voto_exception("El NIF y la contraseña no coinciden o no existe.");
        }

        return rs.first();
    }
    public void compruebaDatos_NIF_PASS(Votante votante, Connection conn) throws SQLException, BajaVotante_exception{
        String ordensql = "SELECT * FROM votantes where `nif`=? and AES_DECRYPT(password,'sorbete_de_limon')=?;;";
        PreparedStatement PrepStm = conn.prepareStatement(ordensql);
        PrepStm.setString(1, votante.getNif());
        PrepStm.setString(2, votante.getPassword());
        // execute select SQL stetement
        ResultSet rs = PrepStm.executeQuery();
         if(rs.next() == false){
             throw new BajaVotante_exception("No se ha encontrado el nif y la contraseña introducidos");
         }
        
    }

    public void compruebaNIF(Votante votante, Connection conn) throws SQLException, AltaVotante_exception {
        String ordensql = "SELECT * FROM votantes where `nif`=?;";
        PreparedStatement PrepStm = conn.prepareStatement(ordensql);
        PrepStm.setString(1, votante.getNif());
        // execute select SQL stetement
        ResultSet rs = PrepStm.executeQuery();
        if (rs.first() == true) {
            throw new AltaVotante_exception("Error en el registro, el NIF introducido ya existe");
        }
        ValidadorDNI validar = new ValidadorDNI(votante.getNif());
        if (validar.validar() == false) {
            throw new AltaVotante_exception("Error en el registro, el NIF introducido no es valido");
        }
    }

    public ArrayList getVotantes(Connection conn) throws SQLException {
        ArrayList<Votante> votantes = new ArrayList<>();
        String ordensql = "SELECT * FROM votantes;";
        PreparedStatement PrepStm = conn.prepareStatement(ordensql);
        ResultSet rs = PrepStm.executeQuery();
        while (rs.next()) {
            Votante votante = new Votante(rs.getString("nif"), rs.getString("nombre"), rs.getString("apellidos"), rs.getString("domicilio"), rs.getString("fecha_nac"), rs.getString("password"), rs.getString("voto"));
            votantes.add(votante);
        }

        return votantes;

    }

    public ArrayList getPartidos(Connection conn) throws SQLException {
        ArrayList<Partido> partidos = new ArrayList<>();
        String ordensql = "SELECT * FROM partidos;";
        PreparedStatement PrepStm = conn.prepareStatement(ordensql);
        ResultSet rs = PrepStm.executeQuery();
        while (rs.next()) {
            Partido partido = new Partido(rs.getString("nombre"), rs.getString("siglas"), rs.getString("logo"), rs.getInt("votos"));
            System.out.println(partido.getLogo());
            partidos.add(partido);
        }
        return partidos;
    }
}
