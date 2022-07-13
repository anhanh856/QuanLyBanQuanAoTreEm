<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="/Ass_Java5/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/Ass_Java5/fontawesome-free-6.0.0-beta3-web/css/all.min.css">
</head>
<body>
	<div class="container">
		<!-- phần header -->
		<header class="row bg-danger">
			<div id="carouselExampleFade"
				class="carousel slide carousel-fade p-0" data-bs-ride="carousel">
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="/Ass_Java5/img/slideshow_1.webp"
							class="d-block w-100" style="width: 500px; height: 400px;"
							alt="...">
					</div>
					<div class="carousel-item">
						<img src="/Ass_Java5/img/slideshow_2.webp"
							class="d-block w-100" style="width: 500px; height: 400px;"
							alt="...">
					</div>
					<div class="carousel-item">
						<img src="/Ass_Java5/img/slideshow_3.webp"
							class="d-block w-100" style="width: 500px; height: 400px;"
							alt="...">
					</div>
					<div class="carousel-item">
						<img src="/Ass_Java5/img/slideshow_4.webp"
							class="d-block w-100" style="width: 500px; height: 400px;"
							alt="...">
					</div>
				</div>
				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleFade" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleFade" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
		</header>
		<!-- phần nav -->
		<nav class=" row">
			<div class="col-md-1 " style="background-color: #f08db2;">
				<img src="/Ass_Java5/img/logo.webp"
					style="width: 100px; margin-left: 0px; height: 90px;" alt="">
			</div>
			<div class="col-md-4 "
				style="background-color: #f08db2; padding-top: 23px;">
				<div class="row">
					<form action="" class="mt-1 input-group">
						<input type="text" placeholder="Tìm kiếm" required
							class="form-control"
							style="margin-right: 3px; padding: 5px; border: 1px solid rgb(193, 191, 191); background-color: while; border-radius: 20px 20px 20px 20px;">
						<button type="submit"
							style="border: 2px solid white; background-color: while; border-radius: 10px 10px 10px 10px;">
							<i class="fas fa-search"></i>Tìm kiếm
						</button>
					</form>
				</div>
			</div>
			<div class="col-md-7"
				style="background-color: #f08db2; padding-top: 21px;">
				<nav class="navbar navbar-expand-lg navbar-dark sticky-top p-1 row">
					<div class="container-fluid">
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
							aria-controls="navbarNavDropdown" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarNavDropdown">
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link "
									aria-current="page" href="/Ass_Java5/home"><i class="fas fa-home"></i>
										Trang chủ <span class="sr-only"></span> </a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> <i
										class="fas fa-user"></i>Sản phẩm
								</a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item "
											href="/Ass_Java5/LoginServlet/Logout">Dành
												cho nam</a></li>

										<li><a class="dropdown-item "
											href="/Ass_Java5/users/index">Dành
												cho nữ</a></li>

									</ul></li>
								<li class="nav-item"><a class="nav-link" href="#"><i
										class="fas fa-phone"></i> Liên hệ</a></li>
								<li class="nav-item"><a class="nav-link" href="#"> <i
										class="fas fa-mail-bulk"></i> Góp ý
								</a></li>

								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									id="navbarDropdownMenuLink" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> <i
										class="fas fa-user"></i> Tài khoản <c:if
											test="${ !empty userLogin }">
												${ userLogin.username }
										</c:if>

								</a>
									<ul class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<c:if test="${ empty userLogin}">
											<li><a class="dropdown-item "
												href="/Ass_Java5/login/login1">Đăng
													nhập</a></li>
										</c:if>

										<li><a class="dropdown-item "
											href="/Ass_Java5/login/Logout">Đăng
												xuất</a></li>
										<c:if test="${userLogin.admin == 1}">
											<li><a class="dropdown-item "
												href="/Ass_Java5/admin/accounts/index">Quản
													lý Account</a></li>
											<li><a class="dropdown-item "
												href="/Ass_Java5/admin/products/index">Quản
													lý product</a></li>
											<li><a class="dropdown-item "
												href="/Ass_Java5/admin/categories/index">Quản lý
													category</a></li>
											<li><a class="dropdown-item "
												href="/Ass_Java5/admin/orders/index">Quản lý
													order</a></li>
											<li><a class="dropdown-item "
												href="/Ass_Java5/admin/order-details/index">Quản lý
													orderDetail</a></li>
										</c:if>
									</ul></li>
								<li class="nav-item"><a class="nav-link"
									href="Giohang.html"> <i class="fas fa-cart-plus"></i></i> Giỏ
										hàng
								</a></li>
							</ul>
						</div>

					</div>
				</nav>
			</div>

		</nav>
		<div class="p-0">
				<jsp:include page="${view}"></jsp:include>
		</div>

		<!-- Phần <article></article> -->
		<!-- <article class="row" style="background-color: rgb(255, 234, 234);">
			sanr phaamr trang
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
												Khaki Cạp Chun Dành Cho Bé Trai </a>
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
			theem sanr phaam
			<div class="card" style="text-align: center;">
				<p>
					<button class="btn btn-primary"
						style="background-color: white; color: #DF3739; border-radius: 10px 10px 10px 10px; border: 1px solid #DF3739; font-size: 20px; margin-top: 10px; text-align: center;"
						type="button" data-bs-toggle="collapse"
						data-bs-target="#collapseExample" aria-expanded="false"
						aria-controls="collapseExample">Xem thêm</button>
				</p>
				<div class="collapse" id="collapseExample">
					<div class="col-12 P-5 ">
						<div class="container  ">
							<div class="row " style="margin-bottom: 30px;">

								<div class="col-12 col-md-4 ">
									<div class="card"
										style="border: 1px solid #DF3739; text-align: center; border-radius: 10px 10px 10px 10px; text-align: center; color: black;">
										<div class="card-body">
											<img src="/Ass_Java5/img/anh4.webp"
												style="height: 270px; width: 100%;" class="img-fluid" alt="">
										</div>
										<div class="" style="text-align: center">
											<ul style="list-style-type: none;">
												<a href="" style="text-decoration: none; color: #F751A7;">Bộ
													đồ ngủ cao cấp</a>
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
													Khaki Cạp Chun Dành Cho Bé Trai </a>
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
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</article> -->
		<aside class="row" style="border: 1px solid rgb(255, 234, 234);">

			<div class="row" style="background-color: white;">
				<div class="col-1 "></div>
				<div class="col-3 p-3" style="color: black;">
					<div class="row">

						<p style="font-size: 18px; color: #252a2b;">Thông tin liên hệ</p>
						<br>
						<p style="color: rgb(138, 135, 136);">
							<i class="fas fa-map-marker"></i> Địa chỉ: Tầng 24, Ngọc Khánh
							Plaza, 1 Phạm Huy Thông, Ba Đình, Hà Nội
						</p>
						<p style="color: rgb(138, 135, 136)">
							<i class="far fa-envelope-open"></i> Email: ecom@crownuk.com.vn
						</p>
						<p style="color: rgb(138, 135, 136);">
							<i class="fas fa-phone-volume"></i> Hotline: 0947 23 99 66
						</p>
					</div>
				</div>
				<div class="col-4  p-3" style="color: black;">
					<div class="row">

						<p style="font-size: 18px; color: #252a2b;">Giới thiệu</p>
						<br>
						<p style="color: rgb(138, 135, 136);">Crown Space trang mua
							sắm trực tuyến của thương hiệu thời trang Crown UK, thời trẻ em
							cao cấp phong cách Anh Quốc. Tại đây, ba mẹ có thể chọn mua giày
							dép, quần áo, phụ kiện cho bé.</p>
						<img src="/Ass_Java5/img/logo_bct.webp" alt=""
							style="width: 200px;"><br>

					</div>
				</div>
				<div class="col-3 p-3" style="color: white;">
					<div class="row">
						<p style="font-size: 18px; color: #252a2b;">Fanpage</p>
						<br> <img
							src="/Ass_Java5/img/277571380_5309031432465307_5261375987960988220_n.jpg"
							alt="" style="width: 270px; height: 150px;">
					</div>
				</div>
				<div class="col-1"></div>
			</div>
		</aside>
		<footer class="row text-center" style="background-color: white;">
			<div class="card">anhptph13761@fpt.edu.vn</div>
		</footer>
	</div>

	<script src="/Ass_Java5/js/jquery.min.js"></script>
	<script src="/Ass_Java5/js/popper.min.js"></script>
	<script src="/Ass_Java5/js/bootstrap.min.js"></script>
</body>


</html>