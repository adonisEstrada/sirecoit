/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.FevetiDAO;
import dto.Feveti;
import dto.Persona;
import dto.Renit;
import org.hibernate.Query;

/**
 *
 * @author Adonis
 */
public class FevetiDAOImpl extends GenericDAOImpl<Feveti> implements FevetiDAO {

    @Override
    public Feveti getFevetiByPerson(Persona persona) {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from Feveti feveti "
                + "inner join fetch feveti.persona persona "
                + "where persona.personaId=:persona");
        query.setParameter("persona", persona.getPersonaId());
        Feveti resultado = (Feveti) query.uniqueResult();
        transaction.commit();
        return resultado;
    }

}
