<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-bordered my-3 p-0">
	<thead>
		<tr>
			<th scope="col">Order id</th>
			<th scope="col">Products</th>
			<th scope="col">Price</th>
			<th scope="col">Quantity</th>
			<th scope="col" colspan="3">Thao tác</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="orderdetails" items="${ orderdetails.content }">
			<tr>
				<td>${ orderdetails.order.id }- ${ orderdetails.order.account.fullname }</td>
				<td>${ orderdetails.product.category.name }${ khoangTrang }${ orderdetails.product.name }</td>
				<td>${ orderdetails.price }</td>
				<td>${ orderdetails.quantity }</td>
				
				<td><a class="btn btn-danger"
							href="/Ass_Java5/admin/order-details/create">Add
								</a></td>
				<td>
					<a class="btn btn-primary" href="/Ass_Java5/admin/order-details/edit/${ orderdetails.id }">Update</a>
				</td>
				<td>
					<a class="btn btn-warning" href="/Ass_Java5/admin/order-details/delete/${ orderdetails.id }">
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
			href="/Ass_Java5/admin/order-details/index"> First page </a></li>
		<li class="page-item"><a class="page-link"
			href="/Ass_Java5/admin/order-details/index?page=${ orderdetails.number - 1 }">
				Previos page </a></li>
		<li class="page-item"><a class="page-link"
			href="/Ass_Java5/admin/order-details/index?page=${ orderdetails.number + 1 }">
				Next page </a></li>
		<li class="page-item"><a class="page-link"
			href="/Ass_Java5/admin/order-details/index?page=${ orderdetails.totalPages - 1 }">
				Last page </a></li>
	</ul>
</div>