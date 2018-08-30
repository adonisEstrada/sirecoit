/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.RelModalidadRenitDAO;
import dto.RelModalidadRenit;
import dto.Renit;
import dto.Usuario;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author Adonis
 */
public class RelModalidadRenitDAOImpl extends GenericDAOImpl<RelModalidadRenit> implements RelModalidadRenitDAO {

    @Override
    public List<RelModalidadRenit> getRelModalidadRenitByRenit(Renit renit) {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from RelModalidadRenit rel "
                + "inner join fetch rel.renit renit "
                + "left join fetch rel.modalidad modalidad "
                + "where renit.renitId=:renit and rel.activo=true");
        query.setParameter("renit", renit.getRenitId());
        List<RelModalidadRenit> resultado = query.list();
        transaction.commit();
        return resultado;
    }

}
