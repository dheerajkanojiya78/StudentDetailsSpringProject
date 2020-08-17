<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- Title Page-->
    <title>Students Record</title>
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
<div class="page-wrapper bg-gra-02 font-poppins">
        <div class="wrapper wrapper--w680">
                <div class="card-body">
                    <h1 class="title" Style="color: tomato">Create Student Entry</h1>
                    	<div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                <h3><label class="label"><a class="linkCol" href="index.jsp">Home</a> | <a class="linkCol" href="create">Create New Entry </a> | <a class="linkCol" href="search">Search</a></label></h3>
                                </div>
                            </div>
                        </div>
                </div>
        </div>
        <table class="table tableDesg" border=1>
            <tr> 
            	 <th> Id </th>
           		 <th> Roll Number </th> 
           		 <th> First Name </th> 
           		 <th> Last Name </th> 
            	 <th> Percent </th> 
            	 <th> Age </th> 
           		 <th> Email Id </th> 
           		 <th> Mobile Number </th> 
            	 <th> Address </th>
            	 <th> Stream </th>
            	 <th> Sports </th>
            	 <th> Create date </th>
            	 <th> Update </th>
            	 <th> Delete </th>
            	 
            </tr>
            <c:forEach var="stud" items="${studentBeanList}">
   				<tr> 
   					<td> ${stud.studentId} </td>
   					<td> ${stud.studentRollNumber} </td> 
   					<td> ${stud.studentFirstName} </td> 
   					<td> ${stud.studentLastName} </td> 
   					<td> ${stud.percent} </td> 
   					<td> ${stud.age} </td> 
   					<td> ${stud.emailId} </td> 
   					<td> ${stud.mobileNumber} </td> 
   					<td> ${stud.address} </td>
   					<td> ${stud.stream} </td>
   					<td>
   						<c:forEach items="${stud.sports}" var="sport" varStatus="loop">
   								 ${sport}
  					 		<c:if test="${!loop.last}">,</c:if>
   						</c:forEach>
   					</td>
   					<td> ${stud.createDate} </td>
   					<td> <a href="${pageContext.request.contextPath}/updateStudentRecord/${stud.studentRollNumber}" class="update">Update</a> </td>
   					<td> <a href="${pageContext.request.contextPath}/deleteStudentRecord/${stud.studentRollNumber}" class="delete">Delete</a> </td>
   				</tr>
			</c:forEach>
        </table>
    </div>
</body>
</html>