<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/bootstrap3.min.js"></script>


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
<title>Search Student Data</title>
</head>
<body>

<form:form id="studentSearchForm" modelAttribute="studentSearch" action="getStudentRecord" method="post">


<div class="container cs-border-light-blue">

		<!-- first line -->
		<div class="row pad-top"></div>
		<!-- end first line -->

		<div class="equalheight row" style="padding-top: 10px;">
			<div id="cs-main-body" class="cs-text-size-default pad-bottom">
				<div class="col-sm-9  equalheight-col pad-top">
					<div style="padding-bottom: 50px;">
						<div class="row">
							<div class="col-sm-12">
								<legend>Search Student Details</legend>
								<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label col-sm-4"><a href="index.jsp">Home</a></label>
												<label class="control-label col-sm-4"><a href="create">Create New Entry </a></label>
											</div>
										</div>
										</div>
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
												<form:label path="emailId" class="control-label col-sm-4">Email-Id</form:label>
												<div class="col-sm-8">
												<form:input path="emailId" name="emailId" id="emailId" class="form-control" onkeypress="return onlyEmail(event,this);;"/>
													
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
								<div class="col-sm-12">
									<div class="form-group">
										<div class="col-sm-10 col-sm-offset-2">
										 <form:button id="studentSearch" name="studentSearch" 
										 class="studentSearch btn btn-primary btn-lg" style="display: inline-block; vertical-align: middle; vert-align: middle; float: none;">Search</form:button>
											
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
	</div>
 
</form:form>
     
</body>
</html>