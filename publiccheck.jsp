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

if(uname.equals("publiccloud") && (password.equals("publiccloud"))){
response.sendRedirect("publiccloud_home.jsp?msg=succ");
}else{
response.sendRedirect("publiccloud.jsp?msg1=unsucc");
}
%>