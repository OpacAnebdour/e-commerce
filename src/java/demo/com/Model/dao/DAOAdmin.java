/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.com.Model.dao;

import demo.com.Model.bo.Admin;
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
public class DAOAdmin implements ICreate<Admin>, IRetreive<Admin>{

    @Override
    public void create(Admin C) {
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
    public List<Admin> retreive() {
        List<Admin> li = null;
        
        Transaction tx = null;
        
        try{
            Session session = NewHibernateUtil.getSessionFactory().getCurrentSession();
            try{
                tx = session.beginTransaction();
            }catch(TransactionException e){
                tx = session.getTransaction();
            
            }
            Query q = session.createQuery("from Admin");
            li = q.list();
            tx.commit();
               
        }
        catch(HibernateException e){
            e.printStackTrace();
            tx.rollback();
        }
        
        return li;
    }
    
    public void AddArticle(Article c){
        DAOArticle daoo = new DAOArticle();
        daoo.create(c);
    }
    
    public void DeleteArticle(int c){
        DAOArticle daoo = new DAOArticle();
        daoo.delete(c);
    }
    
    public void UpdateArticle(Article c){
        DAOArticle daoo = new DAOArticle();
        daoo.update(c);
    }
    
    public List<Article> showArticle(){
        DAOArticle daoo = new DAOArticle();
        return daoo.retreive();
    }
}
