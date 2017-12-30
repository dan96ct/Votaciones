/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Excepciones;

/**
 *
 * @author Dani
 */
public class AltaVotante_exception extends Exception{
    public AltaVotante_exception() {
    }

    public AltaVotante_exception(String message) {
        super(message);
    }

    @Override
    public String getMessage() {
        return super.getMessage(); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
