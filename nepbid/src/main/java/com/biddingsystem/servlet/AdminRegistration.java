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

/**
 * Servlet implementation class AdminRegistration
 */
@WebServlet("/AdminRegistration")
public class AdminRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminRegistration() {
        super();
        // TODO Auto-generated constructor stub
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 RequestDispatcher dispatcher = null;
	        Connection conn = null;
		//retrieve data
	    String name = request.getParameter("name");
        String nic = request.getParameter("nic");
        String contact = request.getParameter("contact");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       

        // Create a Bidder object and set its properties
       Admin admin = new Admin();
       admin.setName(name);
       admin.setNIC(nic);
       admin.setContact(contact);
       admin.setUsername(username);
       admin.setPassword(password);
       

        try {
        	  // Insert the bidder into the database
            conn = DBConnect.getConnection();
            String sql = "INSERT INTO admin (Adminname, AdminTelephone, AdminNIC, Adminusername,Adminpassword) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, name);
            statement.setString(2, contact);
            statement.setString(3, nic);
            statement.setString(4, username);
            statement.setString(5, password);

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
        
        dispatcher = request.getRequestDispatcher("AdminRegistration.jsp");
        dispatcher.forward(request, response);
	}

}
