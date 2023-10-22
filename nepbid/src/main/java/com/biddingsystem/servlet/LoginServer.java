package com.biddingsystem.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DataInfoImpl.LoginData;


@WebServlet("/LoginServer")
public class LoginServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	LoginData loginData;
    public LoginServer() {
        super();
        loginData = new LoginData();

    }

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String action = request.getParameter("action");


		HttpSession session = null;
		// check for the valid user.
		
		
		switch (action) {
		case "admin":
			if(loginData.admin(id, password)) 
			{
				session = request.getSession();
				session.setAttribute("aid",id);
				session.setAttribute("userRole", "admin");
				response.sendRedirect("adminpanel.jsp");
			}
			
			else{
				id="";
			    password="";
			    action="";
			    response.sendRedirect("Adminlogin.jsp");
			}
			
			break;
			
		case "seller":
			
			if(loginData.isSeller(id, password)) {
				session = request.getSession();
				session.setAttribute("aid",id);
				session.setAttribute("userRole", "seller");
				
				
				response.sendRedirect("sellerpanel.jsp");
				
			}
			else {
				id="";
			    password="";
			    action="";
			    response.sendRedirect("SellerLogin.jsp");
			}
			break;
		
		    case "bidder":
			if(loginData.isSeller(id, password)) {
				session = request.getSession();
				session.setAttribute("aid",id);
				session.setAttribute("userRole", "bidder");
				response.sendRedirect("CustomerPanel.jsp");
				
			}
			else {
				id="";
			    password="";
			    action="";
			    response.sendRedirect("UserLogin.jsp");
			}
			break;

		default:
			
		}	
	}
	
	



}