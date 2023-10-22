package com.biddingsystem.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.biddingsystem.model.Bid;

import DataInfoImpl.Datainfo;

import java.io.IOException;
import java.util.List;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String searchTerm = request.getParameter("searchTerm");
        Datainfo d = new Datainfo();
        String id = (String) request.getSession().getAttribute("aid");
        List<Bid> searchResults = d.searchBids(Integer.parseInt(id), searchTerm);
        request.setAttribute("bids", searchResults);
        request.getRequestDispatcher("ProductAlloted.jsp").forward(request, response);
        
    }
}
