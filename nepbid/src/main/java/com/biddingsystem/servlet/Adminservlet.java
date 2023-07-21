package com.biddingsystem.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.biddingsystem.model.Admin;
import com.biddingsystem.utill.DBConnect;

import DataInfoImpl.Datainfo;
import DataInfoImpl.LoginData;
/**
 * Servlet implementation class Adminservlet
 */
@WebServlet("/Adminservlet")
public class Adminservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Datainfo datainfo;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminservlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    

    @Override
    public void init() {
     datainfo = new Datainfo();
    }
    
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action  = request.getParameter("action");
		
		if(action ==null) {
			action = "default";
		}
		
		switch(action) {
		case "sellerdetails":
					response.getWriter().append("server at:" ).append(request.getContextPath());
	        		RequestDispatcher requestDispatcher  = request.getRequestDispatcher("sellerdetail.jsp");
	        		request.setAttribute("transactions", datainfo.getAllTransactions());
	        		requestDispatcher.forward(request, response);
	        	break;
	        	
		case "bidderDetails":
					response.getWriter().append("server at:" ).append(request.getContextPath());
    				requestDispatcher  = request.getRequestDispatcher("bidderdetail.jsp");
    				request.setAttribute("Bidders", datainfo.getAllBidders());
    				requestDispatcher.forward(request, response);
    			break;
    		
		case "productDetails":
			response.getWriter().append("server at:" ).append(request.getContextPath());
			requestDispatcher  = request.getRequestDispatcher("ProductDetails.jsp");
			request.setAttribute("products", datainfo.getAllProducts());
			requestDispatcher.forward(request, response);
		break;
		
		
			
	        
	        default:
	        	response.getWriter().append("server at:" ).append(request.getContextPath());
		        requestDispatcher  = request.getRequestDispatcher("adminpanel.jsp");
		        requestDispatcher.forward(request, response);
		       break;
			
		}
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 RequestDispatcher dispatcher = null;
	        Connection conn = null;
		LoginData loginData = new LoginData();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		boolean isvalid = loginData.admin(username, password);

		
		
		if(isvalid == true) {
			 dispatcher = request.getRequestDispatcher("adminpanel.jsp");
		     dispatcher.forward(request, response);
		}
		else {
			 
			 username="";
			 password="";
			 dispatcher = request.getRequestDispatcher("Adminlogin.jsp");
			 dispatcher.forward(request, response);
		}
		

		
	
	
	
	}

}
