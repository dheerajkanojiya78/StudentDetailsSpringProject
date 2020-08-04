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

<form:form id="searchResult" method="post">

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
									<legend>Searched Records</legend>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label col-sm-4"><a href="index.jsp">Home</a></label> 
												<label class="control-label col-sm-4"><a href="create">Create New Entry </a></label>
												<label class="control-label col-sm-4"><a href="search">Search Record</a></label>
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


		<table class="table" border=1>
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
   					<td> ${stud.createDate} </td>
   					<td> <a href="/StudentDetail/updateStudentRecord/${stud.studentRollNumber}" class="update">Update</a> </td>
   					<td> <a href="/StudentDetail/deleteStudentRecord/${stud.studentRollNumber}" class="delete">Delete</a> </td>
   				</tr>
			</c:forEach>
         
        </table>
</form:form>

</body>
</html>