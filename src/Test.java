import java.util.List;

import com.beans.Company;
import com.beans.Transaction;
import com.operations.CompanyOperations;
import com.operations.TransactionOperations;
import com.operations.impl.CompanyOperationsImpl;
import com.operations.impl.TransactionOperationsImpl;

public class Test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
      CompanyOperations cop = new CompanyOperationsImpl();
      Company c = cop.findByCompanyId("C01");
      TransactionOperations top1 = new TransactionOperationsImpl();
		boolean trans1 = top1.NettingFunds();
      System.out.println(c.getAvailableFunds());
      
	}

}
