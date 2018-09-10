<%@ page import="java.sql.*"%>
<%@ page  import="java.sql.*" import="databaseconnection.*,cpabe.*"%>

<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,doj,branch,dept,subdept,eid,cno,adrs,etype;
	int i=0,exp=0,q=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

String pk=request.getParameter("pk");
String msk=request.getParameter("msk");
String atrbt=request.getParameter("atrbt");
Cpabe e=new Cpabe();
String SK=e.getPrivateKey(atrbt);
//System.out.println(pwd);
%>
<%
Statement st1=con.createStatement();
String id=(String)session.getAttribute("id");

st1.executeUpdate("update register set sk='"+SK+"',status='Active' where uid='"+request.getParameter("id")+"' ");

	response.sendRedirect("Userslist1.jsp?key=done");
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
