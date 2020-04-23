/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.com.Model.bo;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

/**
 *
 * @author Opac
 */
@Entity
public class Client implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name="ID", unique=true, nullable=false, precision=22, scale=0)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column(name="NAME", length=100)
    private String name;
    @Column(name="CIN", length=100)
    private String cin;
    @Column(name="EMAIL", length=100)
    private String email;
    @Column(name="PASSWORD", length=100)
    private String password;
    @Column(name="ADRESSE", length=500)
    private String adresse;
    @Column(name="PHONE", length=100)
    private String phone;
    @OneToOne(cascade = {CascadeType.ALL}, fetch=FetchType.EAGER)
    private Panier panier;
    
    public Client(){}
    public Client(String name, String cin, String email, String password, String adresse, String phone){
        this.name= name;
        this.cin = cin;
        this.email = email;
        this.password = password;
        this.adresse = adresse;
        this.phone = phone;
        this.panier = new Panier();
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Panier getPanier() {
        return panier;
    }

    public void setPanier(Panier panier) {
        this.panier = panier;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Client{" + "id=" + id + ", name=" + name + ", cin=" + cin + ", email=" + email + ", password=" + password + ", adresse=" + adresse + ", phone=" + phone + ", panier=" + panier + '}';
    }
}
