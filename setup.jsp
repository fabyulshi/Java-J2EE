<%@ include file="AAheader.jsp"%><%@ page  import="java.sql.*" import="databaseconnection.*,cpabe.Cpabe"%>


<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">Setup</h2>
			</div>
		</div>
	</div>
	</section>
<div ><br><br>
<center><img src="img/rechten.png" width="297" height="210" border="0" alt=""></center><br><br><br><br><br>

<%

Cpabe test = new Cpabe();
test.setUp();
String pk=test.getPublicKey();
String mk=test.getMasterKey();

Connection con1=databasecon.getconnection();
 Statement st=con1.createStatement();
 ResultSet rst=st.executeQuery("select *from keygen where aid='AA' ");

if(!rst.next()){
 PreparedStatement p=con1.prepareStatement("insert into keygen values(?,?,?)");
p.setString(1,"AA");
p.setString(2,pk);
p.setString(3,mk);
int i=p.executeUpdate();

if(i>0){

 out.println("<script>alert('Keys (pars , msk) are Generated Successfully')</script>");

} 
}else{

 out.println("<script>alert('Keys are Already Generated')</script>");
}
 


 
 %></div>
    