/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.ArmaDAO;
import dto.Arma;
import dto.Persona;
import org.hibernate.Query;

/**
 *
 * @author Adonis
 */
public class ArmaDAOImpl extends GenericDAOImpl<Arma> implements ArmaDAO {

    @Override
    public Arma getArmaByPerson(Persona persona) {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from Arma arma "
                + "inner join fetch arma.persona persona "
                + "where persona.personaId=:persona");
        query.setParameter("persona", persona.getPersonaId());
        Arma resultado = (Arma) query.uniqueResult();
        transaction.commit();
        return resultado;
    }

}
