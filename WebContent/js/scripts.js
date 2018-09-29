$(document).ready(function() {
	$("#row").load("table1.jsp");
	console.log("hello");
	$("#settle").click(function() {
	    $("#nav1").load("settlement.jsp");
	  });
	$("#funds").click(function(){
		$("#row").hide();
		/*console.log("hello");*/
		$("#settledTables").load();
	});
	$("#securities").click(function(){
		$("#row").hide();
		$("#settledTables").load();
	});
	$("#cost").click(function(){
		$("#row").hide();
		$("#settledTables").load();
	});
	$("#pdf").click(function(){
		$("#row").hide();
		$("#settledTables").load();
	});
});