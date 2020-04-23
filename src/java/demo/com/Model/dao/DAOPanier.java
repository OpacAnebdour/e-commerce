/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.com.Model.dao;

import demo.com.Model.bo.Panier;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Opac
 */
public class DAOPanier implements ICreate<Panier>, IUpdate<Panier>, IDelete, IRetreive<Panier>{
    public DAOPanier(){}
    @Override
    public void create(Panier C) {
        Transaction tx = null;
        
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            tx = session.beginTransaction();
            session.save(C);
            tx.commit();
               
        }
        catch(HibernateException e){
            e.printStackTrace();
            tx.rollback();
        }
    }

    @Override
    public void update(Panier C) {
        Transaction tx = null;
        
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            tx = session.beginTransaction();
            session.saveOrUpdate(C);
            tx.commit();
               
        }
        catch(HibernateException e){
            e.printStackTrace();
            tx.rollback();
        }
    }

    @Override
    public void delete(int c) {
        Transaction tx = null;
       
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            tx = session.beginTransaction();
            Query q = session.createQuery("from Panier where id="+String.valueOf(c));
            Panier panier = (Panier) q.uniqueResult();
            
            session.delete(panier);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Panier> retreive() {
        List<Panier> li = null;
        
        Transaction tx = null;
        
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            tx = session.beginTransaction();
            
            Query q = session.createQuery("from Panier");
            li = q.list();
            tx.commit();
               
        }
        catch(HibernateException e){
            e.printStackTrace();
            tx.rollback();
        }
        
        return li;
    }
}
