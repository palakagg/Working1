package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.Transaction;
import com.operations.CompanyOperations;
import com.operations.TransactionOperations;
import com.operations.impl.CompanyOperationsImpl;
import com.operations.impl.TransactionOperationsImpl;

/**
 * Servlet implementation class ChartServlet
 */
@WebServlet("/chart")
public class ChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session2=request.getSession(false);
		String name = (String) session2.getAttribute("name");
		CompanyOperations cop = new CompanyOperationsImpl();
		String companyId=cop.getCompanyId(name);
		TransactionOperations transop = new TransactionOperationsImpl();
		List<Float> trans = transop.findTransactionByBuyerSec(companyId);
		List<Float> trans1 = transop.findTransactionBySellerSec(companyId);
		//List<Transaction> trans = transop.findTransactionByBuyerSec(companyId);
		request.setAttribute("table", trans);
		request.setAttribute("table1", trans1);
		RequestDispatcher dispatcher = request.getRequestDispatcher("chart.jsp");
		dispatcher.forward(request, response);
	}

}
