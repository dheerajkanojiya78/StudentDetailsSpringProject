<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>

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
								<legend>Student Details</legend>
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<label class="control-label col-sm-4"><a href="search">Search Student Record</a>
											</label> <label class="control-label col-sm-4"><a href="create">Create Student Entry</a></label>
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


</body>
</html>