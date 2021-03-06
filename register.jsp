<%@ include file ="header.jsp"%>
<style type="text/css">

form.demoForm {
    margin: 2em 0 3em;
}

form.demoForm select {
    vertical-align: top;
    margin-right: 1em;
}

select#choices {
    min-width: 140px;
}

</style>
<% if(request.getParameter("exist")!=null){
	  out.println("<script>alert('User_Id or Email already exist')</script>");
}%>
<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">User Registration</h2>
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
          <form name="sentMessage"  method="post" action="reginsert.jsp" id="demoForm" class="demoForm">
	       <h3><a href="" style="text-decoration:none">User Registration</a></h3>
		   <label>Name</label><div class="control-group">
                    <div class="controls">
			<input type="text" class="form-control" 
			   	   placeholder="Name" id="name" name="uname" pattern="[A-Za-z]+" title="Enter Chars only" required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div>
		 <label>User_Id</label><div class="control-group">
                    <div class="controls">
			<input type="text" class="form-control" 
			   	   placeholder="UserId" id="name" name="uid" required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div> 	
               <label>Password</label> <div class="control-group">
                  <div class="controls">
			<input type="Password" class="form-control" placeholder="Password" name="pass"
			   	            id="email" required
			   		   data-validation-required-message="Please enter your email" />
					    <p class="help-block"></p>
		</div>
	    </div> 	
			  <label>Email</label><div class="control-group">
                    <div class="controls">
			<input type="email" class="form-control" 
			   	   placeholder="Email" id="name" name="email"  required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div>
			 <label>Mobile Number</label><div class="control-group">
                    <div class="controls">
			<input type="text" class="form-control" 
			   	   placeholder="Mobile Number" pattern="[0-9]{10}" title="10 Digit Mobile Number" id="name" name="mobile" required
			           data-validation-required-message="Please enter your name" />
			  <p class="help-block"></p>
		   </div>
	         </div>
			 <label>Branch</label><div class="control-group">
                    <div class="controls">
			<select  name="branch" style="width:100%; min-height:40px;font-size:13px; border-box;box-sizing: border-box;">
				<option value="Atlanta">Atlanta</option>
				<option value="Dallas">Dallas</option>
				<option value="Alpharetta">Alpharetta</option>
				<option value="Texas">Texas</option>
				</select>
			  <p class="help-block"></p>
		   </div>
	         </div>
			 <label>Department</label><div class="control-group">
                    <div class="controls">
			<select name="category" style="width:100%; min-height:40px;font-size:13px; border-box;box-sizing: border-box;">
				<option value="Engineering">Engineering</option>
				<option value="Accounting">Accounting</option>
				<option value="Marketing">Marketing</option>
				
			</select>
			  <p class="help-block"></p>
		   </div>
	         </div>
			 <label>SubDepartment</label><div class="control-group">
                    <div class="controls">
			<select name="choices[]" id="choices" style="width:100%; min-height:40px;font-size:13px; border-box;box-sizing: border-box;" >
			</select>
			  <p class="help-block"></p>
		   </div>
	         </div>
			 <label>JobRole :</label><div class="control-group">
                    <div class="controls">
			<select name="job"  style="width:100%; min-height:40px;font-size:13px; border-box;box-sizing: border-box;">
	<option value="Java">Java</option>
	 <option value="DotNet">DotNet</option>
	 <option value="SAP">SAP</option>
	 <option value="Android">Android</option>
	 <option value="Saller">Saller</option>
	 
</select>
			  <p class="help-block"></p>
		   </div>
	         </div>
              		 
	     <div id="success"> </div> <!-- For success/fail messages -->
		 <br>
	    <button type="submit" class="btn btn-primary pull-right">Register</button><br />
          </form>

								</div>
								<div class="col-md-6">

								</div>
							</div>
	</div>
 
	</section>
	<br><br><br><br><br>



<script type="text/javascript">
/*
From JavaScript and Forms Tutorial at dyn-web.com
Find information and updates at http://www.dyn-web.com/tutorials/forms/
*/

// removes all option elements in select list 
// removeGrp (optional) boolean to remove optgroups
function removeAllOptions(sel, removeGrp) {
    var len, groups, par;
    if (removeGrp) {
        groups = sel.getElementsByTagName('optgroup');
        len = groups.length;
        for (var i=len; i; i--) {
            sel.removeChild( groups[i-1] );
        }
    }
    
    len = sel.options.length;
    for (var i=len; i; i--) {
        par = sel.options[i-1].parentNode;
        par.removeChild( sel.options[i-1] );
    }
}

function appendDataToSelect(sel, obj) {
    var f = document.createDocumentFragment();
    var labels = [], group, opts;
    
    function addOptions(obj) {
        var f = document.createDocumentFragment();
        var o;
        
        for (var i=0, len=obj.text.length; i<len; i++) {
            o = document.createElement('option');
            o.appendChild( document.createTextNode( obj.text[i] ) );
            
            if ( obj.value ) {
                o.value = obj.value[i];
            }
            
            f.appendChild(o);
        }
        return f;
    }
    
    if ( obj.text ) {
        opts = addOptions(obj);
        f.appendChild(opts);
    } else {
        for ( var prop in obj ) {
            if ( obj.hasOwnProperty(prop) ) {
                labels.push(prop);
            }
        }
        
        for (var i=0, len=labels.length; i<len; i++) {
            group = document.createElement('optgroup');
            group.label = labels[i];
            f.appendChild(group);
            opts = addOptions(obj[ labels[i] ] );
            group.appendChild(opts);
        }
    }
    sel.appendChild(f);
}

// anonymous function assigned to onchange event of controlling select list
document.forms['demoForm'].elements['category'].onchange = function(e) {
    // name of associated select list
    var relName = 'choices[]';
    
    // reference to associated select list 
    var relList = this.form.elements[ relName ];
    
    // get data from object literal based on selection in controlling select list (this.value)
    var obj = Select_List_Data[ relName ][ this.value ];
    
    // remove current option elements
    removeAllOptions(relList, true);
    
    // call function to add optgroup/option elements
    // pass reference to associated select list and data for new options
    appendDataToSelect(relList, obj);
};

// object literal holds data for optgroup/option elements
var Select_List_Data = {
    
    // name of associated select list
    'choices[]': {
        
        // names match option values in controlling select list
       Engineering: {
            // optgroup labe
                text: ['Designing','Programming','Testing'],
                value: ['Designing','Programming','Testing']
            },
   
       Accounting: {
            // example without optgroups
            text: ['Payroll','Investment'],
            value: ['Payroll', 'Investment']
        },
			Marketing: {
            // example without optgroups
            text: ['Financial','H.R'],
            value: ['Financial','H.R']
        },
		
		
        mrktaaaaa: {
            'Download Demos': {
                // example without values
                text: ['Iframes', 'PHP to JS', 'Unobtrusive JS']
            },
            
            'No Download': {
                text: ['Object Literals', 'Initializing JS', 'JS Errors']
            }
        }
    }
    
};

// populate associated select list when page loads
window.onload = function() {
    var form = document.forms['demoForm'];
    
    // reference to controlling select list
    var sel = form.elements['category'];
    sel.selectedIndex = 0;
    
    // name of associated select list
    var relName = 'choices[]';
    // reference to associated select list
    var rel = form.elements[ relName ];
    
    // get data for associated select list passing its name
    // and value of selected in controlling select list
    var data = Select_List_Data[ relName ][ sel.value ];
    
    // add options to associated select list
    appendDataToSelect(rel, data);
};

</script>



 