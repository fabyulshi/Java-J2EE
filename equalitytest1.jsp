  <%@ include file="privateheader.jsp"%>
  <head>
  <meta charset="utf-8">
  <%! String Cpabe_enc="AES_ENCRYPT";%>
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
		 String fid=request.getParameter("fid");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
String pars=null;
ResultSet rss1=st1.executeQuery("select *from keygen");
if(rss1.next()){
pars=rss1.getString(2);
}

ResultSet r1=st.executeQuery("select filedata,Tag,Label,pf,fname from temp where fid="+fid+" ");
if(r1.next())
	{
data=r1.getBytes(1);

	
%>
<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">Equality-Test</h2>
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
          <form name="sentMessage"  method="post" action="check.jsp" id="demoForm" class="demoForm">
	       <h3>
		   <label>File_Id</label><div class="control-group">
                    <div class="controls">
			<input type="text" class="form-control" 
			   	   placeholder="Name" id="name" name="fid" value=<%=fid%> required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div>
		 <label>public parameter ( pars )</label><div class="control-group">
                    <div class="controls">
			<input type="text" value=<%=pars%> class="form-control" 
			   	  id="name" name="fnm" required
			          />
			  <p class="help-block"></p>
		   </div>
	         </div> 	
               <label>Ciphertext ( ct )</label> <div class="control-group">
                  <div class="controls">
			 <textarea rows="10" cols="100" class="form-control" 
                      name="ct" id="message" required
		      
                       data-validation-minlength-message="Min 5 characters" 
                        maxlength="999" style="resize:none"><%=new String(data)%></textarea>
					    <p class="help-block"></p>
		</div>
	    </div> 	
			   <label>Tag ( T )</label><div class="control-group">
                    <div class="controls">
			<input type="text" value=<%=r1.getString(2)%> class="form-control" 
			   	  id="name" name="tag" required
			           />
			  <p class="help-block"></p>
		   </div>
	         </div> 
			  <label>Label ( L )</label><div class="control-group">
                    <div class="controls">
			<input type="text" value="<%=r1.getString(3)%>" class="form-control" 
			   	  id="name" name="label" required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div> 
			 
			 
			 
	     <div id="success"> </div> <!-- For success/fail messages -->
		 <br>
	    <button type="submit" class="btn btn-primary pull-right">Check Equality</button><br />
          </form>

								</div>
								<div class="col-md-6">

								</div>
							</div>
	</div>
 
	</section>
	<%}%>
	<br><br><br><br><br>
	 