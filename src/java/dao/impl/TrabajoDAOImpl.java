/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.TrabajoDAO;
import dto.Feveti;
import dto.Persona;
import dto.Trabajo;
import dto.Usuario;
import org.hibernate.Query;

/**
 *
 * @author Adonis
 */
public class TrabajoDAOImpl extends GenericDAOImpl<Trabajo> implements TrabajoDAO {

    @Override
    public Trabajo getTrabajoByPerson(Persona persona) {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from Trabajo trabajo "
                + "inner join fetch trabajo.persona persona "
                + "where persona.personaId=:persona");
        query.setParameter("persona", persona.getPersonaId());
        Trabajo resultado = (Trabajo) query.uniqueResult();
//        session.close();
        transaction.commit();
        return resultado;
    }

}
