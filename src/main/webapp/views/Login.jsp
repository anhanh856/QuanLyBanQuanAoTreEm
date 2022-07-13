<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/Ass_Java5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/Ass_Java5/fontawesome-free-6.0.0-beta3-web/css/all.min.css">
	
</head>
<body>
	<div class="row">
		<div class="col">
			<c:if test="${ !empty message}">
				<div class="alert alert-success">${message}</div>
			</c:if>
			<c:if test="${ !empty error}">
				<div class="alert alert-danger">${error}</div>
			</c:if>
		</div>
	</div>
	<div class="container" style="width: 500px; border: 1px solid gray;">
		<form:form class="container" name="form_Login"
			action="/Ass_Java5/login/login" method="POST" modelAttribute ="login">
			<div class="row">
				<div class="col-11">
					<h5 class="modal-title fs-3" id="exampleModalLabel">Đăng nhập</h5>
				</div>
				<div class="col-1 ">
					<button type="button" class="btn-close align-middle"
						data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
			</div>
			<div class="row mt-5">
				<div class="col-12">
					<label >Tài khoản</label> 
					<form:input path="email" class="form-control mt-1"  />
					<form:errors path="email" style="color: red"/>

				</div>
				<div class="col-12 mt-4">
					<label>Mật khẩu</label> 
					<form:input path="password" class="form-control mt-1" />
					<form:errors path="password" style="color: red"/>
				</div>
			</div>
			<div class="row mt-4 mb-4">
				<div class="col-6">
					<button class="btn btn-primary form-control"
						
						type="submit">Đăng nhập</button>
				</div>
				<div class="col-6">
					<a href="/Ass_Java5/views/signup.jsp" class="btn form-control bg-primary"
						style="color: white;"> Đăng kí </a>
				</div>
			</div>
			
		</form:form>
	</div>
	<script src="/Ass_Java5/js/jquery.min.js"></script>
	<script src="/Ass_Java5/js/popper.min.js"></script>
	<script src="/Ass_Java5/js/bootstrap.min.js"></script>
</body>
</html>