<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap3.min.js"></script>
<script type="text/javascript" 
	src="${pageContext.request.contextPath}/resources/js/student.js"></script>

<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/student.css"
	rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Entry Data</title>

</head>
<body>

<form:form id="studentForm" modelAttribute="student" action="createStudentRecord" method="post">


		<div class="container cs-border-light-blue">

			<!-- first line -->
			<div class="row pad-top"></div>
			<!-- end first line -->

			<div class="equalheight row" style="padding-top: 10px;">
				<div id="cs-main-body" class="cs-text-size-default pad-bottom">
					<div class="col-sm-9  equalheight-col pad-top">
						<div style="padding-bottom: 50px;">
							<h1 style="text-align: center;">Student Details</h1>
							<div class="row">
								<div class="col-sm-12">
									<legend>Create Student Entry</legend>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label col-sm-4"><a href="index.jsp">Home</a></label>
												<label class="control-label col-sm-4"><a href="search">Search</a></label>
											</div>
										</div>
										</div>
										<span class="errormessage"></span>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
											 <form:label path="studentRollNumber"  class="control-label col-sm-4">Student Roll Number</form:label>
												<div class="col-sm-8">
												<form:input path="studentRollNumber" name="studentRollNumber" id="studentRollNumber" class="form-control"
															onkeypress="return onlyNumeric(event,this);"/>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<form:label path="studentFirstName" class="control-label col-sm-4">First Name</form:label>
												<div class="col-sm-8">
												<form:input path="studentFirstName" name="studentFirstName" id="studentFirstName" class="form-control"
												onkeypress="return onlyAlphabets(event,this);"/>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
                    							<form:label path="studentLastName" class="control-label col-sm-4">Last Name</form:label>
												<div class="col-sm-8">
												<form:input path="studentLastName" name="studentLastName" id="studentLastName" class="form-control"
												onkeypress="return onlyAlphabets(event,this);"/>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
                    							 <form:label path="percent" class="control-label col-sm-4">Percent</form:label>
												<div class="col-sm-8">
												 <form:input path="percent" name="percent" id="percent" class="form-control" onkeypress="return onlyNumeric(event,this);"/>
												</div>
											</div>
										</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
											<div class="form-group">
												<form:label path="stream" class="control-label col-sm-4">Select Stream</form:label>
												<div class="col-sm-8">
												 <form:select path="stream" class="form-control">
   														 <form:options items="${streamList}" />
												 </form:select>
													
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<form:label path="age" class="control-label col-sm-4">Age</form:label>
												<div class="col-sm-8">
														 <form:input path="age" name="age" id="age" class="form-control" onkeypress="return onlyNumeric(event,this);"/>
												</div>
											</div>
										</div>
										</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<form:label path="emailId" class="control-label col-sm-4">Email-Id</form:label>
												<div class="col-sm-8">
												<form:input path="emailId" name="emailId" id="emailId" class="form-control" onkeypress="return onlyEmail(event,this);"/>
													
												</div>
											</div>
										</div>
											<div class="col-sm-6">
											<div class="form-group">
											
												<form:label path="mobileNumber" class="control-label col-sm-4">Mobile Number</form:label>
												<div class="col-sm-8">
												<form:input path="mobileNumber" name="mobileNumber" id="mobileNumber" class="form-control" 
												 maxlength="10" minlength="10" onkeypress="return onlyNumeric(event,this);"/>
												</div>
											</div>
										</div>
										</div>
										<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
											<form:label path="address" class="control-label col-sm-4">Address</form:label>
												<div class="col-sm-8">
													<form:input path="address" name="address" id="address" class="form-control"/>
												</div>
											</div>
										</div>
										</div>
								</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<div class="col-sm-10 col-sm-offset-2">
										 <form:button id="studentSave" name="studentSave" 
										 class="studentSave btn btn-primary btn-lg" style="display: inline-block; vertical-align: middle; vert-align: middle; float: none;">Submit</form:button>
											
										</div>
									</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
 
</form:form>
</body>
<script type="text/javascript">
$('.studentSave').on('click',function(e){
	 
	
	var rollno = $('#studentRollNumber').val();
	var fname = $('#studentFirstName').val();
	var lname = $('#studentLastName').val();
	var stream = $("#stream option:selected").val();
	var percent = $('#percent').val();
	var age = $('#age').val();
	var mob = $('#mobileNumber').val();
	var email = $('#emailId').val();
	var add = $('#address').val();
	
	
	if(!validateForm(rollno)){
		$('.errormessage').empty();
		$('.errormessage').text('Please Enter roll number');
		$('.errormessage').css("color","red");
		e.preventDefault(e);
		return;
	}
	if(!validateForm(fname)){
		$('.errormessage').empty();
		$('.errormessage').text('Please Enter first name');
		$('.errormessage').css("color","red");
		e.preventDefault(e);
		return;
	}
	if(!validateForm(lname)){
		$('.errormessage').empty();
		$('.errormessage').text('Please Enter last name');
		$('.errormessage').css("color","red");
		e.preventDefault(e);
		return;
	}
	if(!validateForm(stream)){
		$('.errormessage').empty();
		$('.errormessage').text('Please Enter select stream');
		$('.errormessage').css("color","red");
		e.preventDefault(e);
		return;
	}
	if(!validateForm(percent)){
		$('.errormessage').empty();
		$('.errormessage').text('Please Enter percent');
		$('.errormessage').css("color","red");
		e.preventDefault(e);
		return;
	}
	if(!validateForm(age)){
		$('.errormessage').empty();
		$('.errormessage').text('Please Enter age');
		$('.errormessage').css("color","red");
		e.preventDefault(e);
		return;
	}
	if(!validateForm(mob)){
		$('.errormessage').empty();
		$('.errormessage').text('Please Enter mobile number');
		$('.errormessage').css("color","red");
		e.preventDefault(e);
		return;
	}
	if(!validateForm(email)){
		$('.errormessage').empty();
		$('.errormessage').text('Please Enter Email-ID');
		$('.errormessage').css("color","red");
		e.preventDefault(e);
		return;
	}
	if(!validateForm(add)){
		$('.errormessage').empty();
		$('.errormessage').text('Please Enter Address');
		$('.errormessage').css("color","red");
		e.preventDefault(e);
		return;
	}
	
}); 

function validateForm(validate){
	if(validate ==0 || validate == undefined || validate == "" || validate == null){
		return false;
	}
	return true;
}

</script>
</html>