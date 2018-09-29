package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.beans.Transaction;
import com.operations.TransactionOperations;
import com.operations.impl.TransactionOperationsImpl;

/**
 * Servlet implementation class EditTransactionServlet
 */
@WebServlet("/edittransaction")
public class EditTransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditTransactionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		int transId= Integer.parseInt(request.getParameter("trade_text"));
		String securityId= (request.getParameter("security_text"));
		int quantity= Integer.parseInt(request.getParameter("quantity_text"));
		float price= Float.parseFloat(request.getParameter("price_text"));
		String buyerId= (request.getParameter("buyer_text"));
		String sellerId= (request.getParameter("seller_text"));
		TransactionOperations dao= new TransactionOperationsImpl();
		Transaction t = new Transaction(transId, buyerId, securityId,  sellerId, quantity, price);
		dao.addTransaction(t);
		List<Transaction> trans1 = dao.findAll();
		request.setAttribute("transactions",trans1);
		
		RequestDispatcher dispatcher1 = request.getRequestDispatcher("admin.jsp");
		dispatcher1.forward(request, response);
		
	}

}
