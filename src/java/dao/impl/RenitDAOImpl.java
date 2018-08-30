/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.RenitDAO;
import dto.Persona;
import dto.Renit;
import dto.Usuario;
import org.hibernate.Query;

/**
 *
 * @author Adonis
 */
public class RenitDAOImpl extends GenericDAOImpl<Renit> implements RenitDAO {

    @Override
    public Renit getRenitByPerson(Persona persona) {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from Renit renit "
                + "inner join fetch renit.persona persona "
                + "where persona.personaId=:persona");
        query.setParameter("persona", persona.getPersonaId());
        Renit resultado = (Renit) query.uniqueResult();
        transaction.commit();
        return resultado;
    }

}
