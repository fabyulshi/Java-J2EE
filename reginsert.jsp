<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,doj,hosp,catgry,prof,eid,cno,adrs,etype,uid,mobile,exp,email,Department,branch;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

name=request.getParameter("uname");
uid=request.getParameter("uid");
pasword=request.getParameter("pass");
email=request.getParameter("email");
Department=request.getParameter("category");
prof=request.getParameter("choices[]");
mobile=request.getParameter("mobile");
branch=request.getParameter("branch");
exp=request.getParameter("job");
//System.out.println(pwd);
%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet r2=st2.executeQuery("select email,uid from register where email='"+email+"' or uid='"+uid+"' ");
if(!r2.next())
	{

int q= st.executeUpdate("insert into register values('"+name+"','"+uid+"','"+pasword+"','"+email+"','"+mobile+"','"+branch+"','"+Department+"','"+prof+"','"+exp+"','wait','non')");

if(q>0)
{
	response.sendRedirect("user.jsp?reg=succ");
}

}else{
	 response.sendRedirect("register.jsp?exist=email or uid");
 
   }





}
catch(Exception e)
{
e.printStackTrace();
	}
%>
