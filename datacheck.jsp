<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>
<%!int count=0;%>
<% String unm=request.getParameter("uname");
String pwd=request.getParameter("pass");
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();
ResultSet r=st.executeQuery("select * from register where uid='"+unm+"' and pass='"+pwd+"'  ");
if(r.next())
	{

//ResultSet r2=st2.executeQuery("select * from register where status='wait' and Name='"+unm+"' ");
//if(!r2.next())
	//{


	String sts=r.getString(1);
	session.setAttribute("unm",unm);
	response.sendRedirect("dataowner_home.jsp");
	
// }
 //else{
	 //response.sendRedirect("user.jsp?atrbt=notGenerated");
 
   //}
	}else{
	response.sendRedirect("dataprovider.jsp?msg1=fail");
	}
}catch(Exception e){e.printStackTrace();}

%>