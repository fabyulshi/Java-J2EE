  <%@ include file="dheader.jsp"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Attribute-Based Storage</title>
 <head>

</head>




</head>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null;
int i=0;
byte data[]=null;
%>
 <% 




try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
ResultSet r1=st1.executeQuery("select *from temp1");

if(r1.next()){
fnm=r1.getString(1);
data=r1.getBytes(2);
}
ResultSet r=st.executeQuery("select max(fid) from publiccloud ");
if(r.next())
	{

 i=r.getInt(1);
 System.out.println("i="+i);
if(i>=0)
	{
i++;
	}
}
}catch(Exception e11)
{
e11.printStackTrace();
}

%>
<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">Data Provider</h2>
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
          <form name="sentMessage"  method="post" action="upload2.jsp" id="demoForm" class="demoForm">
	       <h3><a href="" style="text-decoration:none">File_Uploading</a></h3>
		   <label>File_Id</label><div class="control-group">
                    <div class="controls">
			<input type="text" class="form-control" 
			   	   placeholder="Name" id="name" name="fid" value=<%=i%> required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div>
		 <label>File Name</label><div class="control-group">
                    <div class="controls">
			<input type="text" class="form-control" 
			   	  value=<%=fnm%> id="name" name="fname" required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div> 	
               <label>File Data</label> <div class="control-group">
                  <div class="controls">
			 <textarea rows="10" cols="100" class="form-control" 
                      name="file" id="message" required
		        style="resize:none"><%=new String(data)%></textarea>
					    <p class="help-block"></p>
		</div>
	    </div> 	
			  <label>Public Parameter</label><div class="control-group">
                    <div class="controls">
			<input type="text" class="form-control" 
			   	  readonly id="name" name="smkey"  required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div>
	     <div id="success"> </div> <!-- For success/fail messages -->
		 <br>
	    <button type="submit" class="btn btn-primary pull-right">Get pars</button><br />
          </form>

								</div>
								<div class="col-md-6">

								</div>
							</div>
	</div>
 
	</section>
	<br><br><br><br><br>
 