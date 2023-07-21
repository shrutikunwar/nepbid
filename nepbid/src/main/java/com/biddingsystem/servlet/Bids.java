package com.biddingsystem.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.biddingsystem.utill.DBConnect;

import DataInfoImpl.Datainfo;


/**
 * Servlet implementation class Bids
 */
@WebServlet("/Bids")
public class Bids extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Datainfo datainfo;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bids() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	// TODO Auto-generated method stub
    	super.init();
    	datainfo = new Datainfo();
    }
    
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		handlerequest(request, response);
	}
	
 public void handlerequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 int id = Integer.parseInt(request.getParameter("pid"));
		int bidderid = Integer.parseInt(request.getParameter("bidderid"));
		int bidamount = Integer.parseInt(request.getParameter("bidamount"));
		
		
	    try {
	    	Connection connection = DBConnect.getConnection();
	    	
	    	if( datainfo.findid(id)==false && "pending".equals(datainfo.status(id))==false) {
	    	    String	sqlString= "insert into bids(productid,bidderid,bidamount,status)values(?,?,?,?)";
	    		PreparedStatement preparedStatement = connection.prepareStatement(sqlString);
	        	preparedStatement.setInt(1, id);
	        	preparedStatement.setInt(2, bidderid);
	        	preparedStatement.setInt(3, bidamount);
	        	preparedStatement.setString(4, "pending");
	        	preparedStatement.executeUpdate();
	    	}
	    	else {
	    		if(datainfo.amount(bidamount, id) == true  && "pending".equals(datainfo.status(id))==true ) {
	    	    String sqlString="update bids set bidderid =?,bidamount=? where productid=?";
	    		PreparedStatement preparedStatement = connection.prepareStatement(sqlString);
	        	preparedStatement.setInt(1, bidderid);
	        	preparedStatement.setInt(2, bidamount);
	        	preparedStatement.setInt(3, id);
	        	preparedStatement.executeUpdate();
			}
	    	}
	    	
	    	if( datainfo.findid(id)==true && "pending".equals(datainfo.status(id))==false) {
	    	    String	sqlString= "insert into bids(productid,bidderid,bidamount,status)values(?,?,?,?)";
	    		PreparedStatement preparedStatement = connection.prepareStatement(sqlString);
	        	preparedStatement.setInt(1, id);
	        	preparedStatement.setInt(2, bidderid);
	        	preparedStatement.setInt(3, bidamount);
	        	preparedStatement.setString(4, "pending");
	        	preparedStatement.executeUpdate();
	    	}
			
		} catch (SQLException e) {
			// TODO: handle exception
		}
	 
 }

}
