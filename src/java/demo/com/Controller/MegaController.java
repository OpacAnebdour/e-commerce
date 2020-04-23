/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo.com.Controller;

import demo.com.Model.bo.Admin;
import demo.com.Model.bo.Article;
import demo.com.Model.bo.Client;
import demo.com.Model.dao.DAOAdmin;
import demo.com.Model.dao.DAOArticle;
import demo.com.Model.dao.DAOClient;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Opac
 */
public class MegaController extends HttpServlet {
    DAOClient daoClient = new DAOClient();
    //public static Client cl = null;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MegaController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MegaController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        HttpSession session = request.getSession();

        if(request.getServletPath().contains("ByCategory")){
            String category = request.getParameter("data");
            session.setAttribute("KingCategory", category);

            response.sendRedirect("../Product.jsp");
        }
        
        if(request.getServletPath().contains("AdminShowArticle")){
            session.setAttribute("itemList", new DAOArticle().retreive());
            response.sendRedirect("../itemList.jsp");    
        }
        
        if(request.getServletPath().contains("AdminDeleteArticle")){
            String id = request.getParameter("id");
            new DAOAdmin().DeleteArticle(Integer.valueOf(id));
            response.sendRedirect("../AdminSpace.jsp");    
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
            
        if(request.getServletPath().contains("Auth")){
            String login = request.getParameter("login");  
            String password = request.getParameter("pwd"); 
            
            boolean done = false;
           
            for(Client c : daoClient.retreive()){
                if(c.getEmail().equals(login) && c.getPassword().equals(password)){
                    session.setAttribute("King", c);
     //               cl = c;
                    done = true;
                    break;                    
                }
            }
            if(done == true){
                response.sendRedirect("../ClientPage.jsp");
            }else{
                response.sendRedirect("../index.jsp");
            }
        }
        
        if(request.getServletPath().contains("SignIn")){
            String name = request.getParameter("name");  
            String cin = request.getParameter("cin");  
            String email = request.getParameter("email");  
            String password = request.getParameter("password");  
            String passwordConfirm = request.getParameter("passwordConfirm");  
            String adresse = request.getParameter("adresse");  
            String phone = request.getParameter("phone");
            
            if(password.equals(passwordConfirm)){
                Client client = new Client(name, cin, email, password, adresse, phone);
                daoClient.create(client);
                response.sendRedirect("../index.jsp");
            }
            
        }
        
        if(request.getServletPath().contains("Admin")){
            String name = request.getParameter("loginAdmin");  
            String pws = request.getParameter("pwdAdmin");  
            
            for(Admin c : new DAOAdmin().retreive()){
                if(c.getEmail().equals(name) && c.getPassword().equals(pws)){
                    session.setAttribute("Admin", c);
                    response.sendRedirect("../AdminSpace.jsp");
                }
            }
        }
        
        if(request.getServletPath().contains("AdminAddArticle")){
            String name = request.getParameter("pwdAdmin");
            String description = request.getParameter("description");
            String quantity = request.getParameter("quantity");
            String img = request.getParameter("img");
            String category = request.getParameter("category");
            String price = request.getParameter("price");
            String sold = request.getParameter("sold");
            
            Article ar = new Article(name, description, Integer.valueOf(quantity), img, category, Float.valueOf(price)); 
            ar.setSold(Integer.valueOf(sold));
            System.out.println(ar);
            new DAOArticle().create(ar);
        }
        
        if(request.getServletPath().contains("LogOut")){
            session.removeAttribute("King");
            
            session = request.getSession();
            Client cl = (Client) session.getAttribute("King");
            
            response.sendRedirect("../index.jsp");
        }
        
        if(request.getServletPath().contains("Panier")){
                response.sendRedirect("../Panier.jsp");
        }
        
        if(request.getServletPath().contains("AddPanier")){
            String id = request.getParameter("id");
            Article Art = new DAOArticle().retreiveById(Integer.valueOf(id));
          
            session = request.getSession();
            
            Client cl = null;
            cl = (Client) session.getAttribute("King");
            cl.getPanier().getItems().add(Art);
            
            daoClient.update(cl);
            System.out.println(id);
        }
        
        if(request.getServletPath().contains("Done")){
            session = request.getSession();
            
            Client cl = null;
            cl = (Client) session.getAttribute("King");
            if(!cl.getPanier().getItems().isEmpty()){
                cl.getPanier().getItems().clear();
                daoClient.update(cl);
                response.sendRedirect("../payment.jsp");
            }else{
                response.sendRedirect("../Panier.jsp");
            }
            
        }
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
