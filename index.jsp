<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<style>
div {
  height: 15%;
  width: 100%;
  background-color: white;
}
h1{
  width: 100%;
  background-color: #eac8ea;
  border: 2px solid #eac8ea ;
  border-radius: 10px; 
}
h2{
  height: 100%;
  width: 100%;
  background-color: white;
}
tr{
	border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
}
</style> 
<div>
<h1 class = "container";>&nbsp LIBRARY 
<a  class="button "; style = font-size:20px href="http://localhost:8080/webaplication/index.jsp">Home</a>
<a class="button"; style = font-size:20px  href="http://localhost:8080/webaplication/Insert.jsp	 ">Create</a>
<div1 class ="dropdown">
<a class="button "; style = font-size:20px href="http://localhost:8080/webaplication/SearchBook.jsp">Search </a>
<div1 class="dropdown-content">
<a   href="http://localhost:8080/webaplication/SearchBook.jsp">Book</a><br><br>
<a   href="http://localhost:8080/webaplication/Genre.jsp">Book By Genre</a>
</div1>
</div1>
<a class="button "; style = font-size:20px  href="http://localhost:8080/webaplication/redirectEdit.jsp">Update</a>
<a class="button "; style = font-size:20px  href="http://localhost:8080/webaplication/Delete.jsp">Delete</a>
<div1 class ="dropdown">
<a class="button "; style = font-size:20px>Borrow/Returned</a>
<div1 class="dropdown-content">
<a   href="http://localhost:8080/webaplication/InsertSuccesful.jsp">Insert Borrower Details</a><br><br>
<a   href="http://localhost:8080/webaplication/borrowed/Returned.jsp">Insert Return Date</a><br><br>
<a   href="http://localhost:8080/webaplication/borrowed/viewLibDetails.jsp">View Log Details</a>

</div1>
</div1>
</h1>
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
<br>
<h2 class="container" align="center"><font><strong>List Of Books </strong></font>
<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr bgcolor="#DEB887">
<td><b>BOOK ID</b></td>
<td><b>BOOK NAME</b></td>
<td><b>AUTHOR</b></td>
<td><b>PRICE</b></td>
<td><b>COPIES</b></td>
</tr>
</h2>
</div> 
<%
try{ 
  con =DriverManager.getConnection(connectionUrl+dbName, userId, password);
  if(con!= null){System.out.println("connected Succesfully");}
   s = con.createStatement();
   String q = "select * from Books_Details"; 
   resultSet = s.executeQuery(q);
while(resultSet.next()){
out.println("<tr bgcolor='white'>");
out.println("<td>"+resultSet.getInt("Book_id")+"</td>");
out.println("<td>"+resultSet.getString("Book_name")+"</td>");
out.println("<td>"+resultSet.getString("Author")+"</td>");
out.println("<td>"+resultSet.getString("Price")+"</td>");
out.println("<td>"+resultSet.getString("Copies")+"</td>");
out.println("<tr>");
}
} catch (Exception e) {
System.out.println("Not connected");
}
%> 

  <style>
a.button {
  background-color:#eac8ea ; 
  color: SlateBlues;
  border: 2px solid #eac8ea ;
  border-radius: 50px; 
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 10px;
  margin:10px 25px;
  cursor: pointer;
  transition-duration: 0.4s;	 
}
a.button:hover {
  background-color:white;
  color: black;
  border: 11px solid white;
}
button {
  background-color:#eac8ea ; 
  color: SlateBlues;
  border: 2px solid #eac8ea ;
  border-radius: 50px; 
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 10px;
  margin:10px 25px;
  cursor: pointer;
  transition-duration: 0.4s;	 
}
button:hover {
  background-color:white;
  color: black;
  border: 11px solid white;
}
.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  color: Gray;
  font-size: 18px;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  padding: 12px 16px;
  z-index: 1;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style> 
</div>


  