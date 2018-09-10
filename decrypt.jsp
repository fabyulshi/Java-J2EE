  <%@ include file="uheader.jsp"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
   <title>Attribute-Based Storage </title>
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*,cpabe.*"%>
<%@ page import="java.sql.*"%>
<%! String aKey=null;
boolean status;%>
<% String fid=request.getParameter("fid");

%>


<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,j,unm=null,fid=null,fnm=null,skey=null,b=null,aces=null,d=null,s;
int i=0;byte data[]=null,Label[]=null;
%>
 <%
try{

Connection con = databasecon.getconnection();

String sk=request.getParameter("sk");
fid=request.getParameter("fid");


Statement st1=con.createStatement();
ResultSet r1=st1.executeQuery("select access from publiccloud where fid="+fid+"  ");
if(r1.next())
	{
	aces=r1.getString(1);
}

Statement st6=con.createStatement();
ResultSet rst1=st6.executeQuery("select branch,dept,subdept,job from register where uid='"+session.getAttribute("unm")+"' ");
if(rst1.next()){
b=rst1.getString(1);
d=rst1.getString(2);
s=rst1.getString(3);
j=rst1.getString(4);
}

Statement st5=con.createStatement();
st5.executeUpdate("delete from verify");
int ii=st5.executeUpdate("insert into verify values('"+b+"','"+d+"','"+s+"','"+j+"')");
Statement st4=con.createStatement();
ResultSet rsn=st4.executeQuery("select *from verify where "+aces+" ");
if(rsn.next()){

Statement st=con.createStatement();
 
ResultSet rr=st1.executeQuery("select "+Cpabe_dec+"(filedata,'"+sk+"'),Label,fname from publiccloud where fid="+fid+" ");

if(rr.next()){
	
	
	data=rr.getBytes(1);
	Label=rr.getBytes(2);
	fnm=rr.getString(3);
}
%>
<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">File Download</h2>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row"> 
							<div class="col-md-12">
								
							</div>
						</div>
	<div class="row">
								<div class="col-md-6">
									
		   <!-- Form itself -->
          <form name="sentMessage"  method="post" action="verifySig.jsp" id="demoForm" class="demoForm">
	       <h3><a href="" style="text-decoration:none">File Downloading</a></h3>
		   <label>File_Id</label><div class="control-group">
                    <div class="controls">
			<input type="text" class="form-control" 
			   	   placeholder="Name" id="name" name="fid" value=<%=fid%> required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div>
		 <label>File Name</label><div class="control-group">
                    <div class="controls">
			<input type="text" class="form-control" 
			   	  name="fname" value=<%=fnm%> id="name"  required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div> 	
               <label>File Data ( M )</label> <div class="control-group">
                  <div class="controls">
			 <textarea rows="10" cols="100" class="form-control" 
                      name="file" id="message" required
		       data-validation-required-message="Please enter your message" minlength="5" 
                       data-validation-minlength-message="Min 5 characters" 
                        maxlength="999" style="resize:none"><%=new String(data)%></textarea>
					    <p class="help-block"></p>
		</div>
	    </div> 	
			  <label>Label ( L )</label><div class="control-group">
                    <div class="controls">
			<input type="text" value=<%=new String(Label)%> class="form-control" 
			   	  id="name" name="label" required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div> 
	     <div id="success"> </div> <!-- For success/fail messages -->
		 <br>
	    <button type="submit" class="btn btn-primary pull-right">Verify</button><br />
          </form>

								</div>
								<div class="col-md-6">

								</div>
							</div>
	</div>
 
	</section>
	<%}else{
	response.sendRedirect("download.jsp?msg=NotAuthorized");
	}
	}
	catch(Exception e){
	e.printStackTrace();
	}%>
	<br><br><br><br><br>
 