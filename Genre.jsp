<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<style>
div {
  height: 1000px;
  width: 100%;
  background-color: #eac8ea;
}
a.button {
  background-color:#eac8ea ; 
  border: 2px solid #eac8ea ;
  border-radius: 50px; 
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin:4px 2px;
  cursor: pointer;
  transition-duration: 0.4s;
  
}

a.button:hover {
  background-color:white;
  color: black;
  border: 11px solid white;
}
</style>  

<%
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "library";
String userId = "root";
String password = "Welcome123#";
try {
    Class.forName(driverName);
} catch (Exception e) {
System.out.println(e);
}
Connection con = null;
Statement s = null;
ResultSet resultSet = null;
%>
<div>
<a class="button button5";  href="http://localhost:8080/webaplication/index.jsp">Home</a>
<h2 align="center"><font><strong>Enter Book genre to show the List of Books available in this Library</strong></font></h2>
	<form align="center" method="GET">
		BOOK NAME: <input type="text" name="Genre"> &nbsp
		<input type="submit" value="Search"/>
	</form>
	<%
	String n;
	n=request.getParameter("Genre");
	%>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="#DEB887">
<td><b>genre</b></td>
<td><b>BOOK ID</b></td>
<td><b>BOOK NAME</b></td>
</tr>

<%
try{ 
  con =DriverManager.getConnection(connectionUrl+dbName, userId, password);
  if(con!= null){System.out.println("connected Succesfully");}
   s = con.createStatement();
   String reset_n ="\'" + n +"%"+"\'";
   String q = "select * from Books_Category WHERE genre LIKE"+reset_n; 
   resultSet = s.executeQuery(q);
while(resultSet.next()){
out.println("<tr>");
out.println("<td>"+resultSet.getString("genre")+"</td>");
out.println("<td>"+resultSet.getInt("Book_id")+"</td>");
out.println("<td>"+resultSet.getString("Book_name")+"</td>");
out.println("<tr>");
}
} catch (Exception e) {
System.out.println("Not connected");
}
%>
</div>