<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Title Page-->
    <title>Welcome</title>
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
                    <h2 class="title">Create And Search Student Record</h2>
                    	<div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                <label class="label"><a href="search">Search</a> | <a href="create">Create</a></label>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>