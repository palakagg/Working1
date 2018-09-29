package com.operations;
import java.util.List;
import com.beans.Transaction;

public interface TransactionOperations {
  boolean Login(String username, String password);
  boolean NettingFunds();
  boolean NettingShares();
  List<Transaction> findAll();
  List<Transaction> findTransactionBySecurity(String securityId);
  List<Transaction> findTransactionByBuyer(String buyerCompanyId);
  List<Transaction> findTransactionBySeller(String sellerCompanyId);
  List<Integer> findAllGroupCompany();
  List<Integer> findAllGroupCompany1() ;
  List<Integer> findAllGroupSecurity() ;
  List<Float> findTransactionByBuyerSec(String buyerCompanyId);
  List<Float> findTransactionBySellerSec(String sellerCompanyId);
  void addTransaction(Transaction transaction);
  boolean deleteTransaction(int TransId);
  Transaction findTransactionByID(int TransID);
  void updateTransaction(Transaction transaction);
void dropTransaction();
List<Transaction> filterquantity();
List<Transaction> filterprice();
 
}
