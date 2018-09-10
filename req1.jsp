<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<%								


Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
Statement st=con.createStatement();

st1.executeUpdate("delete from request");
st1.executeUpdate("insert into request(uid,status) values('"+session.getAttribute("unm")+"','request')");
response.sendRedirect("req2.jsp?uid="+session.getAttribute("unm")+"");

%>
