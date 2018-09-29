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

import com.operations.TransactionOperations;
import com.operations.impl.TransactionOperationsImpl;

/**
 * Servlet implementation class AdminChartServlet
 */
@WebServlet("/adminchart")
public class AdminChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminChartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		TransactionOperations tao = new TransactionOperationsImpl();
		List<Integer> trans = tao.findAllGroupCompany();
		List<Integer> trans1 = tao.findAllGroupCompany1();
		List<Integer> trans2 = tao.findAllGroupSecurity();
		request.setAttribute("table", trans);
		request.setAttribute("table1", trans1);
		request.setAttribute("table2", trans2);
		HttpSession session2=request.getSession(false);
		RequestDispatcher dispatcher = request.getRequestDispatcher("chart1.jsp");
		dispatcher.forward(request, response);
	}

}
