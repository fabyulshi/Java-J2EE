<%@ include file ="header.jsp"%>
<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">User</h2>
			</div>
		</div>
	</div>
	</section>
	<% if(request.getParameter("msg1")!=null){
	  out.println("<script>alert('Invalid Credentials')</script>");
}%>
<% if(request.getParameter("reg")!=null){
	  out.println("<script>alert('Registered Successfully..!')</script>");
}%>
	<section id="content">
	<div class="container">
		<div class="row"> 
							<div class="col-md-12">
								
							</div>
						</div>
	<div class="row">
								<div class="col-md-6">
									
		   <!-- Form itself -->

          <form name="sentMessage" id="contactForm" method="post" action="usercheck.jsp" >
	       <h3>User Login</h3>
		 <div class="control-group">
                    <div class="controls">
			<input type="text" class="form-control" 
			   	   placeholder="User Id" id="name" name="uname" required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div> 	
                <div class="control-group">
                  <div class="controls">
			<input type="Password" class="form-control" placeholder="Password" name="pass"
			   	            id="email" required
			   		   data-validation-required-message="Please enter your email" />
		</div>
	    </div> 	
			  
              		 
	     <div id="success"> </div> <!-- For success/fail messages -->
		 <br>
	    <button type="submit" class="btn btn-primary pull-right">Login</button><br />
		
          </form>
		  <a href="register.jsp" style="text-decoration:none">Register Here</a>
								</div>
								<div class="col-md-6">

								</div>
							</div>
	</div>
 
	</section>
	<br><br><br><br><br>
	 
