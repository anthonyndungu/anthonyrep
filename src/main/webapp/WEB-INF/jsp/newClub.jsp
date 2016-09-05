
<%
	if ((session.getAttribute("chairId") == null) || (session.getAttribute("chairId") == "")) {
%>
<%@include file="validateLoginHeader.jsp"%>
<br />
<div class="container">
	<div class="panel panel-info">
		<div class="panel-heading">
			<span class="lead col-lg-offset-4">AUTHENTICATION REQUIRED!!!</span>
		</div>
		<center>
			<h3 style="color: red;">You are not logged in!!</h3>
			<h3>
				Please click <a href="loginform.do">here</a> to Login.
			</h3>
		</center>
	</div>
</div>
<br />
<br />
<br />
<br />
<br />
<br />
<%@include file="footer.jsp"%>
<%
	} else {
%>
<%@include file="taglib_includes.jsp"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Iterator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="keywords"
	content="dkutclubs,dkut,kuct,kit,dedan kimathi university,dedan kimathi university of technology,kimathi university college,kimathi university of technology" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description"
	content="Dedan Kimathi University of Technology" />
<meta name="generator"
	content="Joomla! - Open Source Content Management" />
<title>Club Registration | DeKUT Clubs Manager</title>
<!--Images icon-->
<link rel="shortcut icon" href="images/favcon.PNG" />
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/animate.css">
<link href="/templates/shaper_university/favicon.ico"
	rel="shortcut icon" type="image/vnd.microsoft.icon" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!--Reseting all fields in a form after submission-->
<!--Styling for  map-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap core CSS -->
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.2/css/bootstrap.css"
	rel="stylesheet" media="screen">

<%-- Rev Slider--%>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<!-- jQuery REVOLUTION Slider  -->
<script type="text/javascript"
	src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript"
	src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<!-- REVOLUTION BANNER CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="rs-plugin/css/slider.css"
	media="screen" />
<link rel="stylesheet" type="text/css" href="css/dekutclubs.css">
<link rel="stylesheet" type="text/css"
	href="font-awesome/css/font-awesome.css">
<link rel="stylesheet" href="css/jquery-ui.css">
<!--  Datepicker-->
<script src="js/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
<!--End datepicker  -->
</head>
<body data-spy="scroll" data-target="#my-navbar">
	<%@include file="top.jsp"%>
	<nav class="navbar navbar-default navbar-inverse" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle Navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp"><i class="fa fa-home"
							aria-hidden="true"></i>&nbsp;HOME</a></li>
					<li><a href="chair.do">DASHBOARD</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="logout.do"><span
							class="glyphicon glyphicon-log-in"></span> LOGOUT</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<br>
	<div class="container">
		<center>
			<h3>
				<font style="color: red;">${successMess}</font>
			</h3>
		</center>
		<div class="panel panel-info">
			<div class="panel-heading">
				<span class="lead col-lg-offset-4">CLUB REGISTRATION FORM</span>
			</div>
			<center>
				<h4>
					<font style="color: red;">N/B.All fields with (*) are
						mandatory fields.</font>
				</h4>
			</center>
			<form:form action="saveClub.do" method="post" commandName="newClub">
				<table class="table">
					<tr>
						<td>
							<div class="form-group col-md-12">
								<div class="col-md-7">
									<label for="Chairperson Name">Chairperson Name<font
										style="color: red">*</font></label> <input class="form-control"
										name="chairperson" value="${chair}" readonly="true" />
									<form:errors path="chairperson" cssStyle="color:red"></form:errors>
								</div>
							</div>
						</td>
						<td>
							<div class="form-group col-md-12">
								<div class="col-md-7">
									<label for="Chairperson Contact">Chairperson Contact<font
										style="color: red">*</font></label> <input class="form-control"
										name="chairpersoncontact" value="${contact}" readonly="true" />
									<form:errors path="chairpersoncontact" cssStyle="color:red"></form:errors>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<div class="row">
							<td>
								<div class="form-group col-md-12">
									<div class="col-md-7">
										<label for="Chairperson Email">Chairperson Email<font
											style="color: red">*</font></label>
										<div class="input-group margin-bottom-sm">
											<span class="input-group-addon"><i
												class="fa fa-envelope-o fa-fw"></i></span> <input type="email"
												class="form-control" name="chairpersonemail"
												value="${email}" readonly="true" />
										</div>
										<form:errors path="chairpersonemail" cssStyle="color:red"></form:errors>
									</div>
								</div>
							</td>
							<td>
								<div class="form-group col-md-12">
									<div class="col-md-7">
										<label for="Club Name">Club Name<font
											style="color: red">*</font></label> <input class="form-control"
											name="clubname" value="${clubs}" readonly="true" />
										<form:errors path="clubname" cssStyle="color:red"></form:errors>
									</div>
								</div>
							</td>
						</div>
					</tr>
					<tr>
						<div class="row">
							<td>
								<div class="form-group col-md-12">
									<div class="col-md-7">
										<label for="Club Patron">Club Patron<font
											style="color: red">*</font></label> <input class="form-control"
											name="clubpatron" placeholder="Club Patron" />
										<form:errors path="clubpatron" cssStyle="color:red"></form:errors>
									</div>
								</div>
							</td>
							<td>
								<div class="form-group col-md-12">
									<div class="col-md-7">
										<label for="Formation Date">Patron Email<font
											style="color: red">*</font></label>
										<div class="input-group margin-bottom-sm">
											<span class="input-group-addon"><i
												class="fa fa-envelope-o fa-fw"></i></span> <input type="email"
												class="form-control" name="patronEmail"
												placeholder="Patron email eg xyz@gmail.com" />
										</div>
										<form:errors path="patronEmail" cssStyle="color:red"></form:errors>
									</div>
								</div>
							</td>
						</div>
					</tr>
					<tr>
						<div class="row">
							<td>
								<div class="form-group col-md-12">
									<div class="col-md-7">
										<label for="Club Patron">Patron Contact<font
											style="color: red">*</font></label> <input class="form-control"
											name="patronContact"
											placeholder="Patron contact eg 07XXXXXXXX" />
										<form:errors path="patronContact" cssStyle="color:red"></form:errors>
									</div>
								</div>
							</td>
							<td>
								<div class="form-group col-md-12">
									<div class="col-md-7">
										<label for="Formation Date">Formation Date<font
											style="color: red">*</font></label> <input class="form-control"
											name="formationdate" placeholder="Formation date"
											id="datepicker" />
										<form:errors path="formationdate" cssStyle="color:red"></form:errors>
									</div>

								</div>
						</div>
						</td>
						</div>
					</tr>
					<tr>
						<div class="row">
							<td>
								<div class="form-group col-md-12">
									<div class="col-md-7">
										<label for="Meeting Venue">Meeting Venue<font
											style="color: red">*</font></label> <input class="form-control"
											name="meetingvenue" placeholder="Meeting venue" />
										<form:errors path="meetingvenue" cssStyle="color:red"></form:errors>
									</div>
								</div>
							</td>
							<td>
								<div class="form-group col-md-12">
									<div class="col-md-7">
										<label for="Club Category">Club Category<font
											style="color: red">*</font></label>
										<form:select cssClass="form-control" path="category">
											<form:option value="NONE" label="--Select Club Category--" />
											<form:options items="${category}" />
										</form:select>
										<form:errors path="category" cssStyle="color:red"></form:errors>
									</div>
								</div>
							</td>
						</div>
					</tr>
					<tr>
						<td colspan="3" align="center"><input class="btn btn-danger"
							type="submit" name="" value="Save"> &nbsp;&nbsp; <input
							type="reset" name="" value="Clear" class="btn btn-warning">
						</td>
					</tr>
				</table>
			</form:form>
		</div>
		<nav>
			<ul class="pager">
				<li class="previous"><a href="chair.do"><span
						aria-hidden="true">&larr;</span>Previous</a></li>
				<li class="next"><a href="saveReport.do">Next<span
						aria-hidden="true">&rarr;</span></a></li>
			</ul>
		</nav>
	</div>
	<%@include file="footer.jsp"%>
	<%
		}
	%>