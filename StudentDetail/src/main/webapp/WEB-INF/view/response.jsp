<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Title Page-->
    <title>Success Failure Page</title>
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
                    <h2 class="title">Success Failure Result</h2>
                    	<div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                <label class="label"><a class="linkCol" href="${pageContext.request.contextPath}/index.jsp">Home</a></label>
                                </div>
                            </div>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                               <label class="label" style="color: green">${message}</label>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </div>



<%-- <div class="container cs-border-light-blue">

			<!-- first line -->
			<div class="row pad-top"></div>
			<!-- end first line -->

			<div class="equalheight row" style="padding-top: 10px;">
				<div id="cs-main-body" class="cs-text-size-default pad-bottom">
					<div class="col-sm-9  equalheight-col pad-top">
						<div style="padding-bottom: 50px;">
							<div class="row">
								<div class="col-sm-12">
									<legend>RESULT PAGE</legend>
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label col-sm-4"><h3>${message}</h3></label><br />
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="row">
										<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label col-sm-4"><a href="${pageContext.request.contextPath}/index.jsp">Home</a></label>
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