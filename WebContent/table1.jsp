<%@page import="com.beans.Transaction"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Dropdown Filter/Search by product or items Using jQuery</title>
<!-- <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"> -->
</head>
<body>
<% List<Transaction> list = (List<Transaction>)request.getAttribute("transactions");%>
<div class="container" style="margin-top:0px;">
<h5>End of Day Trade List</h5>
<table id="table_format" class="table table-bordered"><tbody>
<tr>
<th class="tableHead">Trade ID</th>
<th class="tableHead">Security</th>
<th class="tableHead">Quantity</th>
<th class="tableHead">Price</th>
<th class="tableHead">Buyer Clearing Member</th>
<th class="tableHead">Seller Clearing Member</th>
</tr>
<% int i=0;
for(Transaction t: list){
i++;
%>
<tr id="row1">
<td id="tradeid_row1"> <% out.println(i);%> </td>
<td id="security_row1"> <% out.println(t.getSecurityId());%> </td>
<td id="quantity_row1"> <% out.println(t.getQuantity());%> </td>
<td id="price_row1"> <% out.println(t.getPrice());%> </td>
<td id="buyer_row1"> <% out.println(t.getBuyerCompId());%> </td>
<td id="seller_row1"> <% out.println(t.getSellerCompId());%> </td>
<td><input type="button" id="edit_button1" value="Edit" class="edit" onclick="edit_row('transId')">
<input type="button" id="save_button1" value="Save" class="save" onclick="save_row('transId')">
<input type="button" value="Delete" class="delete" onclick="delete_row('transId')">
</td>
</tr>
<%} %>



<tr>
<td><input type="text" id="new_trade"></td>
<td><input type="text" id="new_security"></td>
<td><input type="text" id="new_quantity"></td>
<td><input type="text" id="new_price"></td>
<td><input type="text" id="new_buyer"></td>
<td><input type="text" id="new_seller"></td>
<td><input type="button" class="add" onclick="add_row();" value="Add Row"></td>
</tr>

</tbody></table>
</div>




<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>


<script src="tableShow.js"></script>
<script src="table_script.js"></script>
<script>
jQuery('#table_format').ddTableFilter();
</script>
</body>
</html>