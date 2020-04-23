/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.com.Model.dao;

import demo.com.Model.bo.Admin;
import demo.com.Model.bo.Client;
import demo.com.Model.bo.Article;

/**
 *
 * @author Opac
 */

public class data {
    
    public static void main(String arg[]){
        DAOAdmin dao = new DAOAdmin();
        DAOArticle daooo = new DAOArticle();
        
        Admin C = new Admin("admin@gmail.com", "root", "EE47785");
        
        Article a1 = new Article("Rolex", "watch lux", 145, "https://cdn2.chrono24.com/images/uhren/images_24/s2/11912224_xxl_v1565096700310.jpg", "watch", 1654f); 
        Article a2 = new Article("Omega", "watch lux", 174, "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.montredo.com%2Ffr-fr%2Fmontres%2Fomega%2Fseamaster%2F220-10-41-21-03-002%2F15417%2F&psig=AOvVaw1sg7OLOjXekPZvsPdLcUmb&ust=1585768158884000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCLCn7vG0xegCFQAAAAAdAAAAABAI", "watch", 1642f); 
        Article a3 = new Article("Tag heuer", "watch lux", 213, "https://www.montredo.com/fr-fr/wp-content/uploads/sites/5/tagheuer-carrera-calibre-5-day-date-war201efc6292-7161-2.jpg", "watch", 1794f); 
        Article a4 = new Article("Puma Air", "shoes lux", 16, "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/373428/01/sv01/fnd/EEA/fmt/png/Basket-PUMA-x-RUBIK'S-RS-X", "shoes", 300f); 
        Article a5 = new Article("Nike air", "shoes lux", 74, "https://www.footkorner.com/media/catalog/product/cache/1/image/600x/9df78eab33525d08d6e5fb8d27136e95/f/o/footkorner-chaussures-nike-airmax-270-noir-jaune.jpg", "shoes", 300f); 
        Article a6 = new Article("Adidas Gazelle", "shoes lux", 33, "https://photos6.spartoo.com/photos/365/3654061/3654061_500_A.jpg", "shoes", 700f);
        Article a7 = new Article("Swatch", "watch lux", 49, "https://i0.wp.com/www.montre-lunette.ma/wp-content/uploads/2019/07/GE714-a.jpg?fit=900%2C900&ssl=1", "watch", 464f); 
        Article a8 = new Article("Air Max", "shoes lux", 63, "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto/c9fkeibhmcs26fnt44yx/chaussure-air-max-270-react-pour-GCcKSq.jpg", "shoes", 452f);
        Article a9 = new Article("iphone", "smart phone", 85, "https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-11-pro-select-2019-family_GEO_EMEA?wid=882&amp;hei=1058&amp;fmt=jpeg&amp;qlt=80&amp;op_usm=0.5,0.5&amp;.v=1567812929188", "phone", 7951f); 
        Article a10 = new Article("loto", "loto game", 11, "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQG5U-_1VYk_5GqLd5mP96E1rg2k3yfOE6Ulvva9xTaUOmj-pwx&usqp=CAU", "phone", 1534f); 
       
        dao.create(C);
        daooo.create(a1);
        daooo.create(a2);
        daooo.create(a3);
        daooo.create(a4);
        daooo.create(a5);
        daooo.create(a6);
        daooo.create(a7);
        daooo.create(a8);
        daooo.create(a9);
        daooo.create(a10);
        
        System.out.println("done");
        System.exit(0);
    }
}