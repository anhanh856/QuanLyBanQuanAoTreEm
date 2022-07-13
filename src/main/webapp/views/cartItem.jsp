<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/Ass_Java5/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h2>List Products</h2>
		<div class="rows">
			<div class="col-sm-9">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Id</th>
							<th>Name</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Amount</th>
							<th></th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="item" items="${listOrDet}">
							<form action="/shopping-cart/update" method="post">
								<input type="hidden" name="id" value="${item.product.id}" />
							<tr>
								<td>${item.product.id}</td>
								<td>${item.product.name}</td>
								<td>${item.price}</td>
								<td><input name="quantity" value="${item.quantity}"
									onblur="this.form.submit()" style="width: 50px;"></td>
								<td>${item.price*item.quantity}</td>
								<td><a class="btn btn-primary btn-sm"
									href="/shopping-cart/del/${item.product.id }">Remove</a></td>
							</tr>
							</form>
						</c:forEach>


					</tbody>
				</table>
				<p>Tong Tien:${TOTAL}</p>
				<hr />
				<a class="btn btn-primary btn-sm" href="/shopping-cart/clear">Clear
					Cart</a> <a class="btn btn-primary btn-sm" href="/product/views">Add
					more</a>
			</div>
		</div>

	</div>
	<script src="/Ass_Java5/js/jquery.min.js"></script>
	<script src="/Ass_Java5/js/popper.min.js"></script>
	<script src="/Ass_Java5/js/bootstrap.min.js"></script>
</body>
</html>