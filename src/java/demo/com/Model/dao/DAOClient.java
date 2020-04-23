/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.com.Model.dao;

import demo.com.Model.bo.Article;
import demo.com.Model.bo.Client;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.TransactionException;

/**
 *
 * @author Opac
 */
public class DAOClient implements ICreate<Client>, IUpdate<Client>, IDelete, IRetreive<Client>{
    public DAOClient(){}
    
    @Override
    public void create(Client C) {
        Transaction tx = null;
        
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            try{
                tx = session.beginTransaction();
            }catch(TransactionException e){
                tx = session.getTransaction();
            }
            
            session.save(C);
            tx.commit();
               
        }
        catch(HibernateException e){
            e.printStackTrace();
            tx.rollback();
        }
    }

    @Override
    public void update(Client C) {
        Transaction tx = null;
        
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            try{
                tx = session.beginTransaction();
            }catch(TransactionException e){
                tx = session.getTransaction();
            }
            
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
            try{
                tx = session.beginTransaction();
            }catch(TransactionException e){
                tx = session.getTransaction();
            }
            
            Query q = session.createQuery("from Client where id="+String.valueOf(c));
            Client client = (Client) q.uniqueResult();
            
            session.delete(client);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Client> retreive() {
        List<Client> li = null;
        
        Transaction tx = null;
        
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            try{
                tx = session.beginTransaction();
            }catch(TransactionException e){
                tx = session.getTransaction();
            
            }
            Query q = session.createQuery("from Client");
            li = q.list();
            tx.commit();
               
        }
        catch(HibernateException e){
            e.printStackTrace();
            tx.rollback();
        }
        
        return li;
    }
    
    public Client retreiveById(int c){
        Transaction tx = null;
        Client client = null;
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            try{
                tx = session.beginTransaction();
            }catch(TransactionException e){
                tx = session.getTransaction();
            }
            
            Query q = session.createQuery("from Client where id="+String.valueOf(c));
            client = (Client) q.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return client;
    }
}
