<%@ include file="privateheader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Attribute-Based Storage </title>
<body>
<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">Tags - Labels </h2>
			</div>
		</div>
	</div>
	</section>
    <div ><br><br><br>
<font size="" color="ff6600"><h2></h3></font>
<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
%>
<table  align="center">
<tr><th width="5%"><h4></th><th width="5%"><h4>Tags ( T )</th><th width="5%"><h4>Labels ( L )</th></tr>
<tr></tr>
<%
ResultSet r=st.executeQuery("select *from privatecloud ");
while(r.next()){%>
<tr height="20"></strong></td><td></td><td><strong><%=r.getString(2)%></td><td><strong><%=r.getString(3)%></td>
</tr><tr></tr><tr></tr>	
<%}%>
<%}catch(Exception e){e.printStackTrace();}%>
</div ></table>
</body>
<br><br><br><br><br><br>
 