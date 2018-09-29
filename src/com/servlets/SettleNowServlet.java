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

import com.beans.Company;
import com.beans.Manages;
import com.beans.Transaction;
import com.operations.CompanyOperations;
import com.operations.ManagesOperations;
import com.operations.TransactionOperations;
import com.operations.impl.CompanyOperationsImpl;
import com.operations.impl.ManagesOperationsImpl;
import com.operations.impl.TransactionOperationsImpl;

/**
 * Servlet implementation class SettleNowServlet
 */
@WebServlet("/settlenow")
public class SettleNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SettleNowServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		TransactionOperations dao= new TransactionOperationsImpl();
		CompanyOperations dao1 = new CompanyOperationsImpl();
		ManagesOperations dao2 = new ManagesOperationsImpl();
		boolean bool1= dao.NettingFunds();
		//List<Company> list1= dao1.fundsShortage();
		boolean bool2 = dao.NettingShares();
		HttpSession session2=request.getSession(false);
	//	List<Manages> list2= dao2.securitiesShortage();
		
		List<Transaction> list= dao.findAll();
		request.setAttribute("transactions", list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("admin2.jsp");
		dispatcher.forward(request, response);
		
	}

}
