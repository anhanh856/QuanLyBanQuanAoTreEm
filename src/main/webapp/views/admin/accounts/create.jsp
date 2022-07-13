<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here -Accounts</title>
<link rel="stylesheet" href="/Ass_Java5/css/bootstrap.min.css">
</head>
<body>
	<div class="row">
		<div class="text-center">
			<h2>Thêm mới tài khoản</h2>
		</div>
		<div class="col-md-5 col-12 m-auto">
			<form:form method="post" action="/Ass_Java5/admin/accounts/store"
				modelAttribute="account">
				<div class="col-12 mt-3">
					<label>Fullname</label>
					<form:input path="fullname" name="fullname" class="form-control" />
					<form:errors path="fullname" style="color: red" />
				</div>
				<div class="col-12 mt-3">
					<label>Email</label>
					<form:input path="email" name="email" class="form-control" />
					<form:errors path="email" style="color: red" />
				</div>
				<div class="col-12 mt-3">
					<label>Username</label>
					<form:input path="username" name="username" class="form-control" />
					<form:errors path="username" style="color: red" />
				</div>
				<div class="col-12 mt-3">
					<label>Password</label>
					<form:input path="password" name="password" class="form-control" />
					<form:errors path="password" style="color: red" />
				</div>
				<div class="col-12 mt-3">
					<label>Photo</label>
					<form:input path="photo" name="photo" class="form-control" />
					<form:errors path="photo" style="color: red" />
				</div>
				<div class="col-12 mt-3">
					<label>Role</label>
					<form:select path="admin" name="admin" class="form-select">
						<form:option value="0">User</form:option>
						<form:option value="1">Admin</form:option>
					</form:select>
				</div>
				<div class="text-center mt-3 mb-3">
					<button class="btn-danger">Save</button>
				</div>
			</form:form>
		</div>
	</div>
	<script src="/Ass_Java5/js/jquery.min.js"></script>
	<script src="/Ass_Java5/js/popper.min.js"></script>
	<script src="/Ass_Java5/js/bootstrap.min.js"></script>
</body>

</html>