<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
String uname = request.getParameter("uname");
String password = request.getParameter("pass");

con = databasecon.getconnection();
stmt = con.createStatement();

if(uname.equals("privatecloud") && (password.equals("privatecloud"))){
response.sendRedirect("privatecloud_home.jsp?msg=succ");
}else{
response.sendRedirect("privatecloud.jsp?msg1=unsucc");
}
%>