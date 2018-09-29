package com.servlets;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;

import com.beans.Transaction;
import com.connections.MyConnection;
import com.operations.TransactionOperations;
import com.operations.impl.TransactionOperationsImpl;

/**
 * Servlet implementation class DefaultTableGeneration
 */
@WebServlet("/defaulttable")
public class DefaultTableGeneration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DefaultTableGeneration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    //String s  = request.getParameter("none");
		try(Connection con =MyConnection.openConnection();) {
            PreparedStatement pstm = null ;
            FileInputStream input = new FileInputStream("C:\\Users\\Grad57\\Downloads\\trade.xls");
            POIFSFileSystem fs = new POIFSFileSystem( input );
            HSSFWorkbook wb = new HSSFWorkbook(fs);
            HSSFSheet sheet = wb.getSheetAt(0);
            String sql1 = "DELETE FROM Transactions";
            pstm = (PreparedStatement) con.prepareStatement(sql1);
            pstm.execute();
            Row row;
            for(int i=0; i<=sheet.getLastRowNum(); i++){
                row = sheet.getRow(i);
                int transId = (int) row.getCell(0).getNumericCellValue();
                String buyerCompId = row.getCell(4).getStringCellValue();
                String securityId = row.getCell(1).getStringCellValue();
                String sellerCompId = row.getCell(5).getStringCellValue();
                int quantity = (int)row.getCell(2).getNumericCellValue();
                float price=(float)row.getCell(3).getNumericCellValue();
                
                String sql = "INSERT INTO Transactions VALUES('"+transId+"','"+buyerCompId+"','"+securityId+"','"+sellerCompId+"','"+quantity+"','"+price+"')";
                pstm = (PreparedStatement) con.prepareStatement(sql);
                pstm.execute();
                System.out.println("Import rows "+i);
            }
            con.commit();
            pstm.close();
            con.close();
            input.close();
            TransactionOperations top1 = new TransactionOperationsImpl();
			List<Transaction> trans1 = top1.findAll();
			request.setAttribute("transactions",trans1);
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp");
			dispatcher.forward(request, response);
           // System.out.println("Success import excel to mysql table");
        }
        catch(SQLException ex){
            System.out.println(ex);
        }catch(IOException ioe){
            System.out.println(ioe);
        }
	}

}
