/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.ModalidadDAO;
import dto.Modalidad;
import dto.Usuario;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author Adonis
 */
public class ModalidadDAOImpl extends GenericDAOImpl<Modalidad> implements ModalidadDAO {

    @Override
    public List<Modalidad> getModalidades() {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from Modalidad modalidad "
                + "order by modalidad.modalidadId asc");
        List<Modalidad> resultado = query.list();
        transaction.commit();
        return resultado;
    }

}
