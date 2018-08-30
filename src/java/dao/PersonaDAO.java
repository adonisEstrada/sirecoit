/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.Persona;
import dto.Usuario;
import java.util.List;

/**
 *
 * @author Adonis
 */
public interface PersonaDAO extends GenericDAO<Persona> {

    public Persona getPersonaByCedula(Integer cedula);

    public List<Persona> getPersonWithUser();

    public List<Persona> getPersonaWithoutUser();

    public Persona getPersonByUser(Usuario usuario);

    public Persona getPersonaByEmailId(String emailId);

    public List<Persona> getPersonWithUserAndEmailVerified();

    public List<Persona> getPersonWithUserCertified();
}
