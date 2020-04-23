/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.com.Model.bo;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Transient;

/**
 *
 * @author Opac
 */
@Entity
public class Article implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Column(name="ID", unique=true, nullable=false, precision=22, scale=0)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name="NAME", length=100)
    private String name;
    @Column(name="DESCRIPTION", length=100)
    private String description;
    @Column(name="QUANTITY")
    private int quantity;
    @Column(name="IMG", length=500)
    private String img;
    @Column(name="CATEGORY")
    private String category;
    @Column(name="PRICE")
    private float price;
    @Transient
    private int sold;
   // 
    
    public Article(){}
    public Article(String name, String description, int quantity, String img, String category, float price) {
        this.name = name;
        this.description = description;
        this.quantity = quantity;
        this.img = img;
        this.category = category;
        this.price = price;
        this.sold = 100;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }
    
    public String getName() {
        return name;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    @Override
    public int hashCode() {
        int hash = 7;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Article other = (Article) obj;
        if (this.quantity != other.quantity) {
            return false;
        }
        if (!Objects.equals(this.name, other.name)) {
            return false;
        }
        if (!Objects.equals(this.description, other.description)) {
            return false;
        }
        if (!Objects.equals(this.img, other.img)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Article{" + "id=" + id + ", name=" + name + ", description=" + description + ", quantity=" + quantity + ", img=" + img + ", category=" + category + ", price=" + price + '}';
    }
    
    
}
