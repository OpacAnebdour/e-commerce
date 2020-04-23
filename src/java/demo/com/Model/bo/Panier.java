/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.com.Model.bo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import javax.persistence.CascadeType;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;

/**
 *
 * @author Opac
 */
@Entity
public class Panier implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @OneToMany(cascade = {CascadeType.ALL}, fetch=FetchType.EAGER)
    private Collection<Article> items = new ArrayList<Article>();
    //@OneToMany(cascade = {CascadeType.ALL}, fetch=FetchType.EAGER)

    public Panier() {}
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Collection<Article> getItems() {
        return items;
    }

    public void setItems(Collection<Article> items) {
        this.items = items;
    }
    
    @Override
    public String toString() {
        String result = "";
        for(Article c : this.items){
            result += c.getName();
            result += " ";
        }
        return result;
    }
    
}
