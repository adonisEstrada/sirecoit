/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.impl;

import dao.GenericDAO;
import java.util.List;
import util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author Adonis
 */
public class GenericDAOImpl<T> implements GenericDAO<T> {

    Session session;
    Transaction transaction;
    SessionFactory sessionFactory;

    public GenericDAOImpl() {
        if (session == null) {
            sessionFactory = HibernateUtil.getSessionFactory();
            session = sessionFactory.openSession();
        } else {
            sessionFactory = HibernateUtil.getSessionFactory();
            session = sessionFactory.getCurrentSession();
        }
    }

//    public void open() {
//        SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
//        session = sessionFactory.openSession();
//        transaction = session.beginTransaction();
////        transaction.begin();
//    }
//    public void close() {
//        transaction.commit();
//        session.close();
//    }
    @Override
    public List<T> findAll() {
        transaction = session.beginTransaction();
        Query query = session.createQuery("from " + Object.class.<T>getClass().getName());
//        session.close();
        List<T> resultado = query.list();
        transaction.commit();
        return resultado;
    }

    @Override
    public void create(T t) {
//        sessionFactory = HibernateUtil.getSessionFactory();
//        session = sessionFactory.openSession();
        transaction = session.beginTransaction();
        session.saveOrUpdate(t);
        transaction.commit();
    }
}
