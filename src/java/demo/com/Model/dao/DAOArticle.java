/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.com.Model.dao;

import demo.com.Model.bo.Article;
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
public class DAOArticle  implements ICreate<Article>, IUpdate<Article>, IDelete, IRetreive<Article>{

    @Override
    public void create(Article C) {
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
    public void update(Article C) {
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
            
            Query q = session.createQuery("from Article where id="+String.valueOf(c));
            Article client = (Article) q.uniqueResult();
            
            session.delete(client);
            tx.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Article> retreive() {
        List<Article> li = null;
        
        Transaction tx = null;
        
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            try{
                tx = session.beginTransaction();
            }catch(TransactionException e){
                tx = session.getTransaction();
            }
            
            Query q = session.createQuery("from Article");
            li = q.list();
            tx.commit();
               
        }
        catch(HibernateException e){
            e.printStackTrace();
            tx.rollback();
        }
        
        return li;
    }
    
    public List<Article> retreiveByCategory(String category) {
        List<Article> li = null;
        
        Transaction tx = null;
        
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            try{
                tx = session.beginTransaction();
            }catch(TransactionException e){
                tx = session.getTransaction();
            }
            Query q = session.createQuery("from Article where category='" + category + "'");
            li = q.list();
            tx.commit();
               
        }
        catch(HibernateException e){
            e.printStackTrace();
            tx.rollback();
        }
        
        return li;
    }
    
    public List<Article> retreiveTreeElement(String category) {
        List<Article> li = null;
        
        Transaction tx = null;
        
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            try{
                tx = session.beginTransaction();
            }catch(TransactionException e){
                tx = session.getTransaction();
            }
            Query q = session.createQuery("from Article where ROWNUM<=3 AND category='"+ category +"'");
            li = q.list();
            tx.commit();
               
        }
        catch(HibernateException e){
            e.printStackTrace();
            tx.rollback();
        }
        
        return li;
    }
    
    public List<Article> retreiveTree() {
        List<Article> li = null;
        
        Transaction tx = null;
        
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            try{
                tx = session.beginTransaction();
            }catch(TransactionException e){
                tx = session.getTransaction();
            }
            Query q = session.createQuery("from Article where ROWNUM<=3");
            li = q.list();
            tx.commit();
               
        }
        catch(HibernateException e){
            e.printStackTrace();
            tx.rollback();
        }
        
        return li;
    }
    public Article retreiveById(int c) {
        Transaction tx = null;
        Article article = null;
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            try{
                tx = session.beginTransaction();
            }catch(TransactionException e){
                tx = session.getTransaction();
            }
            
            Query q = session.createQuery("from Article where id="+String.valueOf(c));
            article = (Article) q.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return article;
    }
}
