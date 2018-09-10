  <%@ include file="dheader.jsp"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Attribute-Based Storage</title>
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->

</head>
<script>
function myFunction() {
    var x = document.getElementById("mySelect").value;
	var sp=x.split(",");
		var s=document.getElementById("ids").value;
		var s1=document.getElementById("idss").value;
	//var s1=document.getElementById("idss").value;
document.getElementById("ids").innerHTML = s+sp[0];
document.getElementById("idss").innerHTML = s1+sp[1];
	 
//	document.getElementById("demo").innerHTML = "You selected: " + x;
}
</script>
<script>
function myFunction2() {
    var x2 = document.getElementById("mySelect2").value;
	var sp1=x2.split(",");
	  var xx=document.getElementById("ids").value;
	   var xx1=document.getElementById("idss").value;
	document.getElementById("ids").innerHTML =xx+sp1[0];
document.getElementById("idss").innerHTML =xx1+sp1[1];
	//document.getElementById("demo").innerHTML = "You selected: " + x2;
}
</script>
<script>
function myFunction3() {
    var x3 = document.getElementById("mySelect3").value;
		var sp2=x3.split(",");
	 var xxx=document.getElementById("ids").value;
	  var xxx1=document.getElementById("idss").value;
    //document.getElementById("ids").innerHTML =xxx+x3;
	document.getElementById("ids").innerHTML =xxx+sp2[0];
document.getElementById("idss").innerHTML =xxx1+sp2[1];
	//document.getElementById("demo").innerHTML = "You selected: " + x3;
}
</script>

<script>
function myFunction4() {
     var x4 = document.getElementById("mySelect4").value;
		var sp3=x4.split(",");
	 var xxx=document.getElementById("ids").value;
	  var xxx1=document.getElementById("idss").value;
    //document.getElementById("ids").innerHTML =xxx+x3;
	document.getElementById("ids").innerHTML =xxx+sp3[0];
document.getElementById("idss").innerHTML =xxx1+sp3[1];
	//document.getElementById("demo").innerHTML = "You selected: " + x3;
}
</script>
<script>
function myFunction5() {
    var x5 = document.getElementById("mySelect5").value;
	 var xxxxx=document.getElementById("ids").value;
	  var xxxxx1=document.getElementById("idss").value;
   // document.getElementById("ids").innerHTML =xxxxx+x5;
	document.getElementById("ids").innerHTML =xxxxx+x5;
document.getElementById("idss").innerHTML =xxxxx1+x5;
   // document.getElementById("ids").innerHTML =xxxxx+x5;
	//document.getElementById("demo").innerHTML = "You selected: " + x3;
}
</script>


<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*,java.util.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,pkey=null,pars;
int i=0;
%>
<% 



	 unm=(String)session.getAttribute("unm");
	 String fid=request.getParameter("fid");
	 String fnm=request.getParameter("fname");
	 String filedata=request.getParameter("file");;
Connection con=databasecon.getconnection();
Statement st=con.createStatement();

ResultSet rst=st.executeQuery("select pars from keygen");
if(rst.next()){

pars=rst.getString(1);
}

%>
<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">File Upload
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
          <form name="sentMessage"  method="post" action="encrypt.jsp" id="demoForm" class="demoForm">
	       <h3><a href="" style="text-decoration:none">File Encrypting</a></h3>
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
			   	  value=<%=fnm%> id="name" name="fnm" required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div> 	
               <label>File Data ( M )</label> <div class="control-group">
                  <div class="controls">
			 <textarea rows="10" cols="100" class="form-control" readonly
                      name="file" id="message" required
                       style="resize:none"><%=filedata%></textarea>
					    <p class="help-block"></p>
		</div>
	    </div> 	
			  <label>Public Parameter ( pars )</label><div class="control-group">
                    <div class="controls">
			<input type="text" class="form-control" 
			   	  readonly id="name"  name="pars" readonly value=<%=pars%>  required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div>
			 <label>Select Attribute</label>
			 <div class="control-group">
			 <div class="controls">
                    <select  id="mySelect" onchange="myFunction()" style="width:100%; min-height:40px;font-size:13px; border-box;box-sizing: border-box;">
				<option value="" selected>Select Branch
				<option value="Atlanta,c='Atlanta'">Atlanta</option>
				<option value="Dallas,c='Dallas'">Dallas</option>
				<option value="Alpharetta,c='Alpharetta'">Alpharetta</option>
				<option value="Texas,c='Texas'">Texas</option>
				</select>
			  <p class="help-block"></p>
		   </div>
	         </div>
			  <label>Select Department</label>
			 <div class="control-group">
			 <div class="controls">
                    <select  id="mySelect2" onchange="myFunction2()" style="width:100%; min-height:40px;font-size:13px; border-box;box-sizing: border-box;">
				<option value="" selected>Select Department
				<option value="Engineering,d='Engineering'">Engineering</option>
				<option value="Accounting,d='Accounting'">Accounting</option>
				<option value="Testing,d='Testing'">Testing</option>
				<option value="Marketing,d='Marketing'">Marketing</option>
					</select>
			  <p class="help-block"></p>
		   </div>
	         </div>
			 <label>Select Sub_Department</label>
			 <div class="control-group">
			 <div class="controls">
                    <select  id="mySelect3" onchange="myFunction3()" style="width:100%; min-height:40px;font-size:13px; border-box;box-sizing: border-box;">
				<option value="" selected>Select SubDepartment
				<option value="Designing,sd='Designing'">Designing</option>
				<option value="Programming,sd='Programming'">Programming</option>
				<option value="Payroll,sd='Payroll'">Payroll</option>
				<option value="Investment,sd='Investment'">Investment</option>
					</select>
			  <p class="help-block"></p>
		   </div>
	         </div>
			 <label>Select JobRole</label>
			 <div class="control-group">
			 <div class="controls">
                    <select  id="mySelect4" onchange="myFunction4()" style="width:100%; min-height:40px;font-size:13px; border-box;box-sizing: border-box;">
					<option value="" selected>Select JobRole
				<option value="Java,job='Java'">Java</option>
	 <option value="DotNet,job='DotNet'">DotNet</option>
	 <option value="SAP,job='SAP'">SAP</option>
	 <option value="Android,job='Android'">Android</option>
	 <option value="Saller,job='Saller'">Saller</option>
					</select>
			  <p class="help-block"></p>
		   </div>
	         </div>
			 <label>Select  Operator</label>
			 <div class="control-group">
			 <div class="controls">
                    <select  id="mySelect5" onchange="myFunction5()" style="width:100%; min-height:40px;font-size:13px; border-box;box-sizing: border-box;">
				<option value="" selected>Select  Operator
				<option value="&&">AND</option>
				<option value="||">OR</option>
				<option value="(">(</option>
				<option value=")">)</option>
			
					</select>
			  <p class="help-block"></p>
		   </div>
	         </div>
			 <label>Access Structure ( A )</label> <div class="control-group">
                  <div class="controls">
			<textarea  rows="3" cols="50" id="ids" readonly  name="ids"  class="special"  required></textarea><textarea  rows="3" cols="50" id="idss" hidden name="idss"  class="special"  required></textarea>
					    <p class="help-block"></p>
		</div>
	    </div> 	


	     <div id="success"> </div> <!-- For success/fail messages -->
		 <br>
	    <button type="submit" class="btn btn-primary pull-right">Encrypt</button><br />
          </form>

								</div>
								<div class="col-md-6">

								</div>
							</div>
	</div>
 
	</section>
	<br><br><br><br><br>
	 