/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.ConstantesDAO;
import dto.Constantes;
import dto.Persona;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author Adonis
 */
public class ConstantesDAOImpl extends GenericDAOImpl<Constantes> implements ConstantesDAO {

    @Override
    public Constantes getConstanteByKey(String key) {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from Constantes constantes "
                + "where constantes.key=:key and constantes.activo=true");
        query.setParameter("key", key);
        Constantes resultado = (Constantes) query.uniqueResult();
        transaction.commit();
        return resultado;
    }

    @Override
    public List<Constantes> getConstantes() {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from Constantes constantes "
                + "where constantes.activo=true");
        List<Constantes> resultado = query.list();
        transaction.commit();
        return resultado;
    }

}
