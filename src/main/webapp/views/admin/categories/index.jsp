<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
			<th colspan="3">Action</th>
		</thead>
		<tbody>
			<c:forEach items="${ data.content }" var="cate">
			<tr>
				<td>${ cate.id }</td>
				<td>${ cate.name }</td>
				<td><a class="btn btn-danger"
							href="/Ass_Java5/admin/categories/create">Add
								</a></td>
				<td>
					<a class="btn btn-primary" href="/Ass_Java5/admin/categories/edit/${ cate.id }">Update</a>
				</td>
				<td>
					<a class="btn btn-warning" href="/Ass_Java5/admin/categories/delete/${ cate.id }">
						Delete
					</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<div class="d-flex justify-content-center">
		<ul class="pagination">
			<li class="page-item">
				<a class="page-link" href="/Ass_Java5/admin/categories/index">
					First page
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="/Ass_Java5/admin/categories/index?page=${ data.number - 1 }">
					Previos page
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="/Ass_Java5/admin/categories/index?page=${ data.number + 1 }">
					Next page
				</a>
			</li>
			<li class="page-item">
				<a class="page-link" href="/Ass_Java5/admin/categories/index?page=${ data.totalPages - 1 }">
					Last page
				</a>
			</li>
		</ul>
	</div>
	<script src="/Ass_Java5/js/jquery.min.js"></script>
	<script src="/Ass_Java5/js/popper.min.js"></script>
	<script src="/Ass_Java51/js/bootstrap.min.js"></script>
</body>
</html>