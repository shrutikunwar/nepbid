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

import com.biddingsystem.model.Bidder;
import com.biddingsystem.utill.DBConnect;

@WebServlet("/RegBidder")
public class RegBidder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	 public RegBidder() {
	        super();
	    }

	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
	    	
	        // Retrieve form data
	        String name = request.getParameter("name");
	        String email = request.getParameter("email");
	        int contact = Integer.valueOf(request.getParameter("contact"));
	        String password = request.getParameter("password");
	        RequestDispatcher dispatcher = null;
	        Connection conn = null;

	        // Create a Bidder object and set its properties
	        Bidder bidder = new Bidder();
	        bidder.setName(name);
	        bidder.setEmail(email);
	        bidder.setContact(contact);
	        bidder.setPassword(password);

	        try {
	        	  // Insert the bidder into the database
	            conn = DBConnect.getConnection();
	            String sql = "INSERT INTO Bidder (name, email, password, contact) VALUES (?, ?, ?, ?)";
	            PreparedStatement statement = conn.prepareStatement(sql);

	            statement.setString(1, name);
	            statement.setString(2, email);
	            statement.setString(3, password);
	            statement.setInt(4, contact);

	            int rowsInserted = statement.executeUpdate();
	            
	            if (rowsInserted > 0) {
	                request.setAttribute("message", "Your account has been created");
	                
	            } else {
	                request.setAttribute("message", "Your request has failed");
	            }
	            
	            statement.close();
	            conn.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        
	        dispatcher = request.getRequestDispatcher("registrationU.jsp");
	        dispatcher.forward(request, response);
	    }
	}
