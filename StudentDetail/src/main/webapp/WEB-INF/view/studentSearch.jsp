<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Title Page-->
    <title>Search Student Record</title>
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
                    <h2 class="title">Search Student Record</h2>
                    <form:form id="studentSearchForm" modelAttribute="studentSearch" action="getStudentRecord" method="post">
                    	<div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                <label class="label"><a href="index.jsp">Home</a> | <a href="create">Create New Entry </a></label>
                                </div>
                            </div>
                        </div>
                        <span class="errormessage"></span>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="studentRollNumber"  class="label">Student Roll Number</form:label>
                                    <form:input path="studentRollNumber" name="studentRollNumber" id="studentRollNumber" class="input--style-4"
															onkeypress="return onlyNumeric(event,this);"/>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="emailId" class="label">Email-Id</form:label>
									<form:input path="emailId" name="emailId" id="emailId" class="input--style-4" onkeypress="return onlyEmail(event,this);"/>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                	<form:label path="mobileNumber" class="label">Mobile Number</form:label>
									<form:input path="mobileNumber" name="mobileNumber" id="mobileNumber" class="input--style-4" 
										maxlength="10" minlength="10" onkeypress="return onlyNumeric(event,this);"/>
                                </div>
                            </div>
                        </div>
                        <div class="p-t-15">
                            <form:button id="studentSearch" name="studentSearch" class="studentSearch btn btn--radius-2 btn--blue">Search</form:button>
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
</body>
</html>