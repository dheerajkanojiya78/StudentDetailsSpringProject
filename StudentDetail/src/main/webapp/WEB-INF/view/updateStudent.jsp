<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.util.ArrayList" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Title Page-->
    <title>Update Entry Record</title>
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

<% 
List list = (List)request.getAttribute("sportsList");
String selectedSports = (String)request.getAttribute("selectedSports");
List<String> selectSportList = new ArrayList<String>(); 
List<String> unSelectSportList = new ArrayList<String>(); 
	for(int i=0 ;i< list.size() ;i++){
		String sportStr = (String)list.get(i);
			if(selectedSports.contains(sportStr)){
				selectSportList.add(sportStr);
			}else{
				unSelectSportList.add(sportStr);
		}
}

	request.setAttribute("selSports", selectSportList);
	request.setAttribute("unSelSports", unSelectSportList);
	System.out.println(selectSportList);
	System.out.println(unSelectSportList);
 %>
</head>
<body>

<div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Update Student Record</h2>
                    <form:form id="updateStudentForm" modelAttribute="updatedStudentRecord" action="updateExistingStudentRecord" method="post">
                    	<div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                <label class="label"><a class="linkCol" href="${pageContext.request.contextPath}/index.jsp">Home</a> | <a class="linkCol" href="${pageContext.request.contextPath}/create">Create new Entry</a> | <a class="linkCol" href="${pageContext.request.contextPath}/search">Search</a></label>
                                </div>
                            </div>
                        </div>
                        <span class="errormessage"></span>
                        <form:hidden path="studentId" name="studentId" id="studentId" value="${studentId}"/>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="studentRollNumber"  class="label">Student Roll Number</form:label>
                                    <form:input path="studentRollNumber" name="studentRollNumber" id="studentRollNumber" class="input--style-4" value="${rollNo}" 
                                    	readonly="true" onkeypress="return onlyNumeric(event,this);"/>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                <form:label path="studentFirstName" class="label">First Name</form:label>
                                <form:input path="studentFirstName" name="studentFirstName" id="studentFirstName" class="input--style-4" value="${firstName}" 
												onkeypress="return onlyAlphabets(event,this);"/>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="studentLastName" class="label">Last Name</form:label>
                                    <form:input path="studentLastName" name="studentLastName" id="studentLastName" class="input--style-4" value="${lastName}"
												onkeypress="return onlyAlphabets(event,this);"/>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="percent" class="label">Percent</form:label>
									<form:input path="percent" name="percent" id="percent" class="input--style-4" value="${percent}" readonly="true"
											onkeypress="return onlyNumeric(event,this);"/>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
								<div class="input-group">
									<form:label path="stream" class="label">Select Stream</form:label>
									<form:input path="stream" name="stream" id="streams" class="input--style-4" value="${streams}" readonly="true"/>
								</div>
							</div>
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="age" class="label">Age</form:label>
									<form:input path="age" name="age" id="age" class="input--style-4" value="${age}" onkeypress="return onlyNumeric(event,this);"/>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="emailId" class="label">Email-Id</form:label>
									<form:input path="emailId" name="emailId" id="emailId" class="input--style-4" value="${emailId}" 
											onkeypress="return onlyEmail(event,this);"/>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="mobileNumber" class="label">Mobile Number</form:label>
									<form:input path="mobileNumber" name="mobileNumber" id="mobileNumber" class="input--style-4" value="${mobileNo}"
										maxlength="10" minlength="10" onkeypress="return onlyNumeric(event,this);"/>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="address" class="label">Address</form:label>
									<form:input path="address" name="address" id="address" class="input--style-4" value="${address}"/>
                                </div>
                            </div>
                            <div class="col-2">	
                                <div class="input-group">
                                    <form:label path="sports" class="label">Sports</form:label>
                                    <div class="p-t-10">
                                    	<c:choose>
											<c:when test="${not empty selSports}">
												  	<form:checkboxes items = "${selSports}" path = "sports" checked="checked"/>
											</c:when>
											<c:otherwise>
												<c:if test="${not empty selSports && not empty unSelSports}">
												  	<form:checkboxes items = "${sportsList}" path = "sports"/>
												</c:if>
											</c:otherwise>
										</c:choose>
										<c:if test="${not empty unSelSports}">
											<form:checkboxes items = "${unSelSports}" path = "sports"/>
										</c:if>
                                    
                                    	<%-- <form:checkboxes items = "${sportsList}" path = "sports" class="radio-container m-r-45"/> --%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="p-t-15">
                            <form:button id="studentUpdate" name="studentUpdate" class="studentUpdate btn btn--radius-2 btn--blue">Submit</form:button>
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
$('.studentUpdate').on('click',function(e){
	
	var fname = $('#studentFirstName').val();
	var lname = $('#studentLastName').val();
	var age = $('#age').val();
	var mob = $('#mobileNumber').val();
	var email = $('#emailId').val();
	var add = $('#address').val();
	
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


<%-- <div class="container cs-border-light-blue">

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
												<label class="control-label col-sm-4"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></label>
												<label class="control-label col-sm-4"><a href="${pageContext.request.contextPath}/create">Create new Entry</a></label>
												<label class="control-label col-sm-4"><a href="${pageContext.request.contextPath}/search">Search</a></label>
											</div>
										</div>
										</div>
										<span class="errormessage"></span>
									<div class="row">
									<div class="col-sm-6">
											<div class="form-group">
											 <form:label path="studentId"  class="control-label col-sm-4">Student Id</form:label>
												<div class="col-sm-8">
												<form:input path="studentId" name="studentId" id="studentId" class="form-control" value="${studentId}" readonly="true"/>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
											 <form:label path="studentRollNumber"  class="control-label col-sm-4">Student Roll Number</form:label>
												<div class="col-sm-8">
												<form:input path="studentRollNumber" name="studentRollNumber" id="studentRollNumber" class="form-control"
														value="${rollNo}" onkeypress="return onlyNumeric(event,this);" readonly="true"/>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<form:label path="studentFirstName" class="control-label col-sm-4">First Name</form:label>
												<div class="col-sm-8">
												<form:input path="studentFirstName" name="studentFirstName" id="studentFirstName" class="form-control" value="${firstName}"
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
												<form:input path="studentLastName" name="studentLastName" id="studentLastName" class="form-control" value="${lastName}"
												onkeypress="return onlyAlphabets(event,this);"/>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
                    							 <form:label path="percent" class="control-label col-sm-4">Percent</form:label>
												<div class="col-sm-8">
												 <form:input path="percent" name="percent" id="percent" class="form-control" value="${percent}"
												 	 onkeypress="return onlyNumeric(event,this);"/>
												</div>
											</div>
										</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
											<div class="form-group">
												<form:label path="stream" class="control-label col-sm-4">Select Stream</form:label>
												<div class="col-sm-8">
												 <form:input path="stream" name="stream" id="stream" class="form-control" value="${streams}" readonly="true"/>
													
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
												<form:label path="age" class="control-label col-sm-4">Age</form:label>
												<div class="col-sm-8">
														 <form:input path="age" name="age" id="age" class="form-control" value="${age}"
														 	onkeypress="return onlyNumeric(event,this);"/>
												</div>
											</div>
										</div>
										</div>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<form:label path="emailId" class="control-label col-sm-4">Email-Id</form:label>
												<div class="col-sm-8">
												<form:input path="emailId" name="emailId" id="emailId" class="form-control" value="${emailId}" 
														onkeypress="return onlyEmail(event,this);"/>
													
												</div>
											</div>
										</div>
											<div class="col-sm-6">
											<div class="form-group">
											
												<form:label path="mobileNumber" class="control-label col-sm-4">Mobile Number</form:label>
												<div class="col-sm-8">
												<form:input path="mobileNumber" name="mobileNumber" id="mobileNumber" class="form-control" value="${mobileNo}"
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
													<form:input path="address" name="address" id="address" class="form-control" value="${address}"/>
												</div>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="form-group">
											<form:label path="sports" class="control-label col-sm-4">Sports</form:label>
												<div class="col-sm-8">
												
												  <c:choose>
												  	<c:when test="${not empty selSports}">
												  		<form:checkboxes items = "${selSports}" path = "sports" checked="checked"/>
												  	</c:when>
												  	<c:otherwise>
												  	<c:if test="${not empty selSports && not empty unSelSports}">
												  		<form:checkboxes items = "${sportsList}" path = "sports"/>
												  	</c:if>
												  	</c:otherwise>
												  </c:choose>
												<c:if test="${not empty unSelSports}">
												<form:checkboxes items = "${unSelSports}" path = "sports"/>
												</c:if>
													
												</div>
											</div>
										</div>
									</div>
								</div>
							<div class="row">
								<div class="col-sm-12">
									<div class="form-group">
										<div class="col-sm-10 col-sm-offset-2">
										 <form:button id="studentUpdate" name="studentUpdate" 
										 class="studentUpdate btn btn-primary btn-lg" style="display: inline-block; vertical-align: middle; vert-align: middle; float: none;">Update</form:button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> --%>
</body>
</html>