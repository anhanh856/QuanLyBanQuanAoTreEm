<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="row">
	
</div>

<table class="table table-bordered my-3 p-0">
	<thead>
		<tr>
			<th scope="col">ID</th>
			<th scope="col">User</th>
			<th scope="col">Created Date</th>
			<th scope="col">Address</th>
			
			<th scope="col" colspan="3">Thao tác</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="order" items="${ data.content }">
			<tr>
				<td>${ order.id }</td>
				<td>${ order.account.fullname }</td>
				<td>${ order.createDate }</td>
				<td>${ order.address }</td>
				<td><a class="btn btn-danger"
							href="/Ass_Java5/admin/orders/create">Add
								</a></td>
				<td>
				<td>
					<a class="btn btn-primary" href="/Ass_Java5/admin/orders/edit/${ order.id }">Update</a>
				</td>
				<td>
					<a class="btn btn-warning" href="/Ass_Java5/admin/orders/delete/${ order.id }">
						Delete
					</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="d-flex justify-content-center">
	<ul class="pagination">
		<li class="page-item"><a class="page-link"
			href="/Ass_Java5/admin/orders/index"> First page </a></li>
		<li class="page-item"><a class="page-link"
			href="/Ass_Java5/admin/orders/index?page=${ order.number - 1 }">
				Previos page </a></li>
		<li class="page-item"><a class="page-link"
			href="/Ass_Java5/admin/orders/index?page=${ order.number + 1 }">
				Next page </a></li>
		<li class="page-item"><a class="page-link"
			href="/Ass_Java5/admin/orders/index?page=${ order.totalPages - 1 }">
				Last page </a></li>
	</ul>
</div>
<div class="text-center">
	<a href="/Ass_Java5/admin/order-details/index"
		class="btn btn-success">Order-details</a>
</div>