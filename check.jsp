  <%@ include file="dheader.jsp"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Attribute-Based Storage</title>
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

</head>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*,SHA.*,CME.*,cryptographic.*,cpabe.*,it.unisa.dia.gas.jpbc.Element"%>
<%! int rno=0;
String s=null;String filedata=null;%>
<%

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();Statement st3=con.createStatement();
String fid=request.getParameter("fid");

ResultSet r2=st2.executeQuery("select *from privatecloud where Tags=(select Tag from temp where fid="+fid+") ");
if(r2.next())
{
st3.executeUpdate("update temp set sts='duplicate' where fid="+fid+" ");
response.sendRedirect("equalitytest.jsp?msg1=duplicate");
}
else{
ResultSet r1=st.executeQuery("select filedata,Tag,Label,pf,fname,owner,pubkey,access from temp where fid="+fid+" ");
if(r1.next())
	{
 PreparedStatement p=con.prepareStatement("insert into publiccloud values(?,?,?,?,?,?,?)");
p.setInt(1,Integer.parseInt(fid));
p.setString(2,r1.getString(5));
p.setBytes(3,r1.getBytes(1));
p.setString(4,r1.getString(8));
p.setString(5,r1.getString(6));
p.setBytes(6,r1.getBytes(7));
p.setBytes(7,r1.getBytes(3));
int i=p.executeUpdate();
if(i>0){

PreparedStatement p1=con.prepareStatement("insert into privatecloud values(?,?,?)");
p1.setInt(1,Integer.parseInt(fid));
p1.setBytes(2,r1.getBytes(2));
p1.setBytes(3,r1.getBytes(3));
int j=p1.executeUpdate();

if(j>0){

st1.executeUpdate("update request set status='finish',proof='1' where uid='"+r1.getString(6)+"' ");
st1.executeUpdate("delete from temp");
response.sendRedirect("equalitytest.jsp?msg=upload");

}

}
}
}
 %>

	 