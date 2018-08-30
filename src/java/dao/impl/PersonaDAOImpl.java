/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.PersonaDAO;
import dto.Persona;
import dto.Usuario;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import util.HibernateUtil;

/**
 *
 * @author Adonis
 */
public class PersonaDAOImpl extends GenericDAOImpl<Persona> implements PersonaDAO {

    @Override
    public Persona getPersonaByCedula(Integer cedula) {
//        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
//        session = sessionFactory.openSession();
        transaction = session.beginTransaction();
        Query query = session.createQuery("select distinct persona from Persona persona "
                + "inner join fetch persona.usuario usuario "
                + "left join fetch persona.renit renit "
                + "where persona.cedula=:cedula and "
                + "usuario.activo=true ");
        query.setParameter("cedula", cedula);
        Persona resultado = (Persona) query.uniqueResult();
//        session.close();
        transaction.commit();
        return resultado;
    }

    @Override
    public List<Persona> getPersonWithUser() {
//        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
//        session = sessionFactory.openSession();
        transaction = session.beginTransaction();
        Query query = session.createQuery("select distinct persona from Persona persona "
                + "inner join fetch persona.usuario usuario "
                + "left join fetch persona.renit renit "
                + "left join fetch renit.relModalidadRenits rel "
                + "left join fetch rel.modalidad modalidad "
                + "where usuario.activo=true and usuario.aceptado=true "
                + "and renit.registrado=false "
                + " order by persona.cedula asc");
        List<Persona> resultado = query.list();
//        session.close();
        transaction.commit();
        return resultado;
    }

    @Override
    public List<Persona> getPersonaWithoutUser() {
//        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
//        session = sessionFactory.openSession();
        transaction = session.beginTransaction();
        Query query = session.createQuery("select distinct persona from Persona persona "
                + "left join fetch persona.usuario usuario "
                + "left join fetch persona.renit renit "
                + "left join fetch renit.relModalidadRenits rel "
                + "left join fetch rel.modalidad modalidad "
                + "where usuario.activo=true and aceptado=false ");
        List<Persona> resultado = query.list();
//        session.close();
        transaction.commit();
        return resultado;
    }

    @Override
    public Persona getPersonByUser(Usuario usuario) {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from Persona persona "
                + "left join fetch persona.usuario usuario "
                + "where usuario.usuarioId=:usuario ");
        query.setParameter("usuario", usuario.getUsuarioId());
        Persona resultado = (Persona) query.uniqueResult();
//        session.close();
        transaction.commit();
        return resultado;
    }

    @Override
    public Persona getPersonaByEmailId(String emailId) {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from Persona persona "
                + "where persona.correoConfirmacionId=:emailId "
                + "and persona.correoConfirmado=false");
        query.setParameter("emailId", emailId);
        Persona resultado = (Persona) query.uniqueResult();
        transaction.commit();
        return resultado;
    }

    @Override
    public List<Persona> getPersonWithUserAndEmailVerified() {
        transaction = session.beginTransaction();
        Query query = session.createQuery("select distinct persona from Persona persona "
                + "inner join fetch persona.usuario usuario "
                + "left join fetch persona.renit renit "
                + "left join fetch renit.relModalidadRenits rel "
                + "left join fetch rel.modalidad modalidad "
                + "where usuario.activo=true and usuario.aceptado=true "
                + "and persona.correoConfirmado=true");
        List<Persona> resultado = query.list();
//        session.close();
        transaction.commit();
        return resultado;
    }

    @Override
    public List<Persona> getPersonWithUserCertified() {
        transaction = session.beginTransaction();
        Query query = session.createQuery("select distinct persona from Persona persona "
                + "inner join fetch persona.usuario usuario "
                + "left join fetch persona.renit renit "
                + "left join fetch renit.relModalidadRenits rel "
                + "left join fetch rel.modalidad modalidad "
                + "where usuario.activo=true and usuario.aceptado=true "
                + "and renit.registrado=true "
                + "order by renit.numeroCertificacion asc");
        List<Persona> resultado = query.list();
        transaction.commit();
        return resultado;
    }

    @Override
    public List<Persona> getPersonas() {
        transaction = session.beginTransaction();
        Query query = session.createQuery("select distinct persona from Persona persona "
                + "inner join fetch persona.usuario usuario "
                + "left join fetch persona.renit renit "
                + "left join fetch renit.relModalidadRenits rel "
                + "left join fetch rel.modalidad modalidad "
                + "where usuario.activo=true and usuario.aceptado=true ");
        List<Persona> resultado = query.list();
        transaction.commit();
        return resultado;
    }

}
