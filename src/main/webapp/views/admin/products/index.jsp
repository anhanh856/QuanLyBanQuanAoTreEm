<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Ass_Java5/css/bootstrap.min.css">
</head>
<body>
	<table class="table table-bordered my-3 p-0">
		<thead>
			<th>Id</th>
			<th>Name</th>
			<th>Image</th>
			<th>Price</th>
			<th>Created_date</th>
			<th>Available</th>
			<th>Category_id</th>
			<th colspan="4">Action</th>
		</thead>
		<tbody>
			<c:forEach items="${ data.content }" var="pro">
				<tr>
					<td>${ pro.id }</td>
					<td>${ pro.name }</td>
					<td><img style="width: 100px" src="${ pro.image }" /></td>
					<td>${ pro.price }</td>
					<td>${ pro.createdDate }</td>
					<td>${ pro.available }</td>
					<td>${ pro.category.name}</td>

					<td><a class="btn btn-danger"
							href="/Ass_Java5/admin/products/create">Add
								</a></td>
				<td>
					<a class="btn btn-primary" href="/Ass_Java5/admin/products/edit/${ pro.id }">Update</a>
				</td>
				<td>
					<a class="btn btn-warning" href="/Ass_Java5/admin/products/delete/${ pro.id }">
						Delete
					</a>
				</td>
				<td>
					<a class="btn btn-primary" href="/Ass_Java5/admin/products/}">Add to card</a>
				</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<div class="d-flex justify-content-center">
		<ul class="pagination">
			<li class="page-item"><a class="page-link"
				href="/Ass_Java5/admin/products/index"> First page </a></li>
			<li class="page-item"><a class="page-link"
				href="/Ass_Java5/admin/products/index?page=${ data.number - 1 }">
					Previos page </a></li>
			<li class="page-item"><a class="page-link"
				href="/Ass_Java5/admin/products/index?page=${ data.number + 1 }">
					Next page </a></li>
			<li class="page-item"><a class="page-link"
				href="/Ass_Java5/admin/products/index?page=${ data.totalPages - 1 }">
					Last page </a></li>
		</ul>
	</div>
	<script src="/Ass_Java5/js/jquery.min.js"></script>
	<script src="/Ass_Java5/js/popper.min.js"></script>
	<script src="/Ass_Java51/js/bootstrap.min.js"></script>
</body>
</html>

