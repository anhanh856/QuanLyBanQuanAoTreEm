<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row ">
		<c:forEach items="${ list }" var="list">
			<div class="row">

				<div class="card " style="text-align: center;">
					<div class=" card-headed text-center mt-2">
						<h4 style="color: #DF3739;">SẢN PHẨM BÁN CHẠY NHẤT</h4>
						<span>Thời trang cao cấp dành cho bé</span>
						<hr>
						</hr>
					</div>

					<div class="col-12 P-2 ">
						<div class="container">
							<div class="row " style="margin-bottom: 30px;">

								<div class="col-12 col-md-4 ">
									<div class="card"
										style="border: 1px solid #DF3739; text-align: center; border-radius: 10px 10px 10px 10px; text-align: center; color: black;">
										<div class="card-body">
											<img src="/Ass_Java5/img/anh1.webp"
												style="height: 270px; width: 100%;" class="img-fluid" alt="">
										</div>
										<div class="" style="text-align: center">
											<ul style="list-style-type: none;">
												<a href="" style="text-decoration: none; color: #F751A7;">Áo
													Phông Có Cổ Áo Polo Trẻ Em</a>
												<br>

											</ul>
										</div>
										<div>
											<h6 style="color: #DF3739;">562 000đ</h6>
										</div>
										<div style="margin-bottom: 10px;">
											<a href=""
												style="text-decoration: none; background-color: #DF3739; color: white; border-radius: 10px 10px 10px 10px; border: 1px solid #DF3739;"
												role="button">Mua ngay</a>
										</div>

									</div>
								</div>
								<div class="col-12 col-md-4 ">
									<div class="card"
										style="border: 1px solid #DF3739; text-align: center; border-radius: 10px 10px 10px 10px; text-align: center; color: black;">
										<div class="card-body">
											<img src="/Ass_Java5/img/anh2.webp"
												style="height: 270px; width: 100%;" class="img-fluid" alt="">
										</div>
										<div class="" style="text-align: center">
											<ul style="list-style-type: none;">
												<a href="" style="text-decoration: none; color: #F751A7;">Váy
													Công Chúa Phiên Bản Cao Cấp</a>
												<br>

											</ul>
										</div>
										<div>
											<h6 style="color: #DF3739;">562 000đ</h6>
										</div>
										<div style="margin-bottom: 10px;">
											<a href=""
												style="text-decoration: none; background-color: #DF3739; color: white; border-radius: 10px 10px 10px 10px; border: 1px solid #DF3739;"
												role="button">Mua ngay</a>
										</div>

									</div>
								</div>
								<div class="col-12 col-md-4 ">
									<div class="card"
										style="border: 1px solid #DF3739; text-align: center; border-radius: 10px 10px 10px 10px; text-align: center; color: black;">
										<div class="card-body">
											<img src="/Ass_Java5/img/anh3.webp"
												style="height: 270px; width: 100%;" class="img-fluid" alt="">
										</div>
										<div class="" style="text-align: center">
											<ul style="list-style-type: none;">
												<a href="" style="text-decoration: none; color: #F751A7;">Quần
													Khaki Cạp Chun Bé Trai </a>
												<br>

											</ul>
										</div>
										<div>
											<h6 style="color: #DF3739;">562 000đ</h6>
										</div>
										<div style="margin-bottom: 10px;">
											<a href=""
												style="text-decoration: none; background-color: #DF3739; color: white; border-radius: 10px 10px 10px 10px; border: 1px solid #DF3739;"
												role="button">Mua ngay</a>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</c:forEach>
		<nav class="offset-5 mt-5" aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>
	</div>
</body>
</html>