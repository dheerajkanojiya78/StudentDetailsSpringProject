<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Title Page-->
    <title>Student Entry Data</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <!-- Icons font CSS-->
    <link href="${pageContext.request.contextPath}/resources/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="${pageContext.request.contextPath}/resources/css/select2.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" media="all">
</head>


<body>

    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Create Student Entry</h2>
                    <form:form id="studentForm" modelAttribute="student" action="createStudentRecord" method="post">
                    	<div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                <label class="label"><a class="linkCol" href="index.jsp">Home</a> | <a class="linkCol" href="search">Search</a></label>
                                </div>
                            </div>
                        </div>
                        <span class="errormessage"></span>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="studentRollNumber"  class="label">Student Roll Number</form:label>
                                    <form:input path="studentRollNumber" name="studentRollNumber" id="studentRollNumber" class="input--style-4"
												maxlength="5" onkeypress="return onlyNumeric(event,this);"/>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                <form:label path="studentFirstName" class="label">First Name</form:label>
                                <form:input path="studentFirstName" name="studentFirstName" id="studentFirstName" class="input--style-4"
												onkeypress="return onlyAlphabets(event,this);"/>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="studentLastName" class="label">Last Name</form:label>
                                    <form:input path="studentLastName" name="studentLastName" id="studentLastName" class="input--style-4"
												onkeypress="return onlyAlphabets(event,this);"/>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="percent" class="label">Percent</form:label>
									<form:input path="percent" name="percent" id="percent" class="input--style-4" onkeypress="return onlyNumeric(event,this);"/>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
								<div class="input-group">
									<form:label path="stream" class="label">Select Stream</form:label>
									<div class="rs-select2 js-select-simple select--no-search">
									<form:select path="stream" class="select2-selection__rendered">
										<form:option disabled="disabled" selected="selected" value="">Choose option</form:option>
   										<form:options items="${streamList}" />
									</form:select>
									<div class="select-dropdown"></div>
									</div>
								</div>
							</div>
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="age" class="label">Age</form:label>
									<form:input path="age" name="age" id="age" class="input--style-4" onkeypress="return onlyNumeric(event,this);"/>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="emailId" class="label">Email-Id</form:label>
									<form:input path="emailId" name="emailId" id="emailId" class="input--style-4" onkeypress="return onlyEmail(event,this);"/>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="mobileNumber" class="label">Mobile Number</form:label>
									<form:input path="mobileNumber" name="mobileNumber" id="mobileNumber" class="input--style-4" 
										maxlength="10" minlength="10" onkeypress="return onlyNumeric(event,this);"/>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="address" class="label">Address</form:label>
									<form:input path="address" name="address" id="address" class="input--style-4"/>
                                </div>
                            </div>
                            <div class="col-2">	
                                <div class="input-group">
                                    <form:label path="sports" class="label">Sports</form:label>
                                    <div class="p-t-10">
                                    	<form:checkboxes items = "${sportsList}" path = "sports" class="radio-container m-r-45"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-t-15">
                            <form:button id="studentSave" name="studentSave" class="studentSave btn btn--radius-2 btn--blue">Submit</form:button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="${pageContext.request.contextPath}/resources/js/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/moment.min.js"></script>
    <script type="text/javascript" 
	src="${pageContext.request.contextPath}/resources/js/student.js"></script>
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
</body>
</html>