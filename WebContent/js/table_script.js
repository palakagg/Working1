function edit_row(no)
{
 document.getElementById("edit_button"+no).style.display="none";
 document.getElementById("save_button"+no).style.display="block";
	
 var trade=document.getElementById("tradeid_row"+no);
 var security=document.getElementById("security_row"+no);
 var quantity=document.getElementById("quantity_row"+no);
 var price=document.getElementById("price_row"+no);
 var buyer=document.getElementById("buyer_row"+no);
 var seller=document.getElementById("seller_row"+no);
 
 var trade_data=trade.innerHTML;
 var security_data=security.innerHTML;
 var quantity_data=quantity.innerHTML;
 var price_data=price.innerHTML;
 var buyer_data=buyer.innerHTML;
 var seller_data=seller.innerHTML;
	
 trade.innerHTML="<input type='text' name='trade_text"+no+"' value='"+trade_data+"'>";
 security.innerHTML="<input type='text' name='security_text"+no+"' value='"+security_data+"'>";
 quantity.innerHTML="<input type='text' name='quantity_text"+no+"' value='"+quantity_data+"'>";
 price.innerHTML="<input type='text' name='price_text"+no+"' value='"+price_data+"'>";
 buyer.innerHTML="<input type='text' name='buyer_text"+no+"' value='"+buyer_data+"'>";
 seller.innerHTML="<input type='text' name='seller_text"+no+"' value='"+seller_data+"'>";
}


function save_row(no)
{
 var trade_val=document.getElementById("trade_text"+no).value;
 var security_val=document.getElementById("security_text"+no).value;
 var quantity_val=document.getElementById("quantity_text"+no).value;
 var price_val=document.getElementById("price_text"+no).value;
 var buyer_val=document.getElementById("buyer_text"+no).value;
 var seller_val=document.getElementById("seller_text"+no).value;

 document.getElementById("trade_row"+no).innerHTML=trade_val;
 document.getElementById("security_row"+no).innerHTML=security_val;
 document.getElementById("quantity_row"+no).innerHTML=quantity_val;
 document.getElementById("price_row"+no).innerHTML=price_val;
 document.getElementById("buyer_row"+no).innerHTML=buyer_val;
 document.getElementById("seller_row"+no).innerHTML=seller_val;

 document.getElementById("edit_button"+no).style.display="block";
 document.getElementById("save_button"+no).style.display="none";
}


function delete_row(no)
{
 document.getElementById("row"+no+"").outerHTML="";
}


function add_row()
{
 var new_trade=document.getElementById("new_trade").value;
 var new_security=document.getElementById("new_security").value;
 var new_quantity=document.getElementById("new_quantity").value;
 var new_price=document.getElementById("new_price").value;
 var new_buyer=document.getElementById("new_buyer").value;
 var new_seller=document.getElementById("new_seller").value;
	
 var table=document.getElementById("table_format");
 var table_len=(table.rows.length)-1;
 var row = table.insertRow(table_len).outerHTML="<tr id='row"+table_len+"'><td id='trade_row"+table_len+"'>"+new_trade+"</td><td id='security_row"+table_len+"'>"+new_security+"</td><td id='quantity_row"+table_len+"'>"+new_quantity+"</td><td id='price_row"+table_len+"'>"+new_price+"</td><td id='buyer_row"+table_len+"'>"+new_buyer+"</td><td id='seller"+table_len+"'>"+new_seller+"</td><td><input type='button' id='edit_button"+table_len+"' value='Edit' class='edit' onclick='edit_row("+table_len+")'> <input type='button' id='save_button"+table_len+"' value='Save' class='save' onclick='save_row("+table_len+")'> <input type='button' value='Delete' class='delete' onclick='delete_row("+table_len+")'></td></tr>";
document.getElementById("save_button"+no).style.display="block";
 document.getElementById("new_trade").value="";
 document.getElementById("new_security").value="";
 document.getElementById("new_quantity").value="";
 document.getElementById("new_price").value="";
 document.getElementById("new_buyer").value="";
 document.getElementById("new_seller").value="";
}
