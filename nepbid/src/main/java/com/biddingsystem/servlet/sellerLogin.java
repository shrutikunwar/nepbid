package com.biddingsystem.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataInfoImpl.Datainfo;
import DataInfoImpl.LoginData;

/**
 * Servlet implementation class sellerLogin
 */
@WebServlet("/sellerLogin")
public class sellerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Datainfo datainfo;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sellerLogin() {
        super();
       
        // TODO Auto-generated constructor stub
    }
 

    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher=null;
		
		 LoginData loginData = new LoginData();
		    String email= request.getParameter("email");
		    String password= request.getParameter("password");
		
		
		   boolean isvalidSeller = loginData.isSeller(email, password);

		
		
		if(isvalidSeller == true) {
			 dispatcher = request.getRequestDispatcher("sellerpanel.jsp");
		     dispatcher.forward(request, response);
		}
		else {
			 
			 email="";
			 password="";
			 dispatcher = request.getRequestDispatcher("SellerLogin.jsp");
			 dispatcher.forward(request, response);
		}
	}

}
