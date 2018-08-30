/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.UsuarioDAO;
import dto.Persona;
import dto.Usuario;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import util.HibernateUtil;

/**
 *
 * @author Adonis
 */
public class UsuarioDAOImpl extends GenericDAOImpl<Usuario> implements UsuarioDAO {

    @Override
    public Usuario getUsuarioByNameAndPass(String name, String pass) {
//        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
//        session = sessionFactory.openSession();
        transaction = session.beginTransaction();
        Query query = session.createQuery("select distinct usuario from Usuario usuario "
                + "left join fetch usuario.persona persona "
                + "left join fetch persona.arma arma "
                + "left join fetch persona.feveti feveti "
                + "left join fetch persona.renit renit "
                + "left join fetch renit.relModalidadRenits rel "
                + "left join fetch rel.modalidad modalidad "
                + "where usuario.nombre=:name and usuario.clave=:pass "
                + "and usuario.activo=true");
        query.setParameter("pass", pass);
        query.setParameter("name", name);
        Usuario resultado = (Usuario) query.uniqueResult();
//        session.close();
        transaction.commit();
        return resultado;
    }

    @Override
    public Usuario getUserByName(String name) {
//        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
//        session = sessionFactory.openSession();
        transaction = session.beginTransaction();
        Query query = session.createQuery("from Usuario usuario "
                + "where usuario.nombre=:name and usuario.activo=true");
        query.setParameter("name", name);
        Usuario resultado = (Usuario) query.uniqueResult();
//        session.close();
        transaction.commit();
        return resultado;
    }

    @Override
    public Usuario getUserByPerson(Persona persona) {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from Usuario usuario "
                + "inner join fetch usuario.persona persona "
                + "where persona.personaId=:persona");
        query.setParameter("persona", persona.getPersonaId());
        Usuario resultado = (Usuario) query.uniqueResult();
//        session.close();
        transaction.commit();
        return resultado;
    }

}
