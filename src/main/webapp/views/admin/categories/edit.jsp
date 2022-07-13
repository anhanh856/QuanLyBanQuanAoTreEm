<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="text-center">
			<h2>Cập nhật loại sản phẩm</h2>
		</div>
		<div class="col-md-5 col-12 m-auto">
			<form:form method="post"
				action="/Ass_Java5/admin/categories/update/${cateEdit.id }"
				modelAttribute="cateEdit">
				<div class="col-12 mt-3">

					<label>Name</label>
					<form:input path="name" name="name" class="form-control" />
					<form:errors path="name" style="color: red" />
				</div>
				<div class="text-center mt-3 mb-3">
					<button class="btn-danger">Save</button>
				</div>
			</form:form>
		</div>
	</div>

</body>
</html>