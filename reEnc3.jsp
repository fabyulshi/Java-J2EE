  <%@ include file="privateheader.jsp"%>
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

<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,pkey=null;
int i=0;
byte data[]=null;
%>
<%
try{
		 String fid=request.getParameter("fid");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();
Statement st4=con.createStatement();
Statement st5=con.createStatement();
String pars=null;
String pubfid=null,access=null;
ResultSet rss1=st1.executeQuery("select *from keygen");
if(rss1.next()){
pars=rss1.getString(2);
}


ResultSet r1=st.executeQuery("select filedata,Tag,Label,pf,fname,trapdrkey,access,owner from temp where fid="+fid+" ");
if(r1.next())
	{

ResultSet r2=st3.executeQuery("select fid from privatecloud where Tags='"+r1.getString(2)+"'");
if(r2.next()){
 pubfid=r2.getString(1);
}

ResultSet r3=st4.executeQuery("select access from publiccloud where fid='"+pubfid+"'");
if(r3.next()){
 access=r3.getString(1);
access="("+access+")"+"||"+"("+r1.getString(7)+")";
System.out.println("aces="+access);

PreparedStatement p=con.prepareStatement("update publiccloud set access=? where fid="+pubfid+" ");
p.setString(1,access);
p.executeUpdate();

}

st5.executeUpdate("update request set status='finish',proof='1' where uid='"+r1.getString(8)+"' ");
st5.executeUpdate("delete from temp");
response.sendRedirect("reEnc.jsp?msg=updated");

}
}catch(Exception e){e.printStackTrace();}

	
%>

	 