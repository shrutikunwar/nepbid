package com.biddingsystem.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataInfoImpl.Datainfo;

/**
 * Servlet implementation class UpdateAdmin
 */
@WebServlet("/UpdateAdmin")
public class UpdateAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Datainfo datainfo;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }
    
 


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		int id =Integer.valueOf(request.getParameter("id")) ;
		String password = request.getParameter("password");
		String newpassword = request.getParameter("newpassword");
		String confirmnewpassword = request.getParameter("confirmnewpassword");
		
		datainfo = new Datainfo();
		boolean t = false;
		
		String string =(datainfo.match(datainfo.fetchpassword(id), password) == false) ? "Old password didnt matched":(datainfo.match(newpassword, confirmnewpassword)==true) ? "pass" :"Password misMatched"; 
		if("pass".equals(string)) {
			 datainfo.Updatepass(newpassword, id);
			 request.setAttribute("message","Password Updation success");
		}
		else {
			request.setAttribute("message", string);
		}
		
		dispatcher = request.getRequestDispatcher("UpdateAdmin.jsp");
        dispatcher.forward(request, response);
		
	}

}
