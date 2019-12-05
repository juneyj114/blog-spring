<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>lifeleck BLOG || HOME</title>
<link rel="icon" href="./img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="./css/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="./css/owl.carousel.min.css">
<!-- themify CSS -->
<link rel="stylesheet" href="./css/themify-icons.css">
<!-- flaticon CSS -->
<link rel="stylesheet" href="./css/liner_icon.css">
<link rel="stylesheet" href="./css/search.css">
<!-- style CSS -->
<link rel="stylesheet" href="./css/style.css">
</head>

<body>
	<%@include file="./component/header.jsp"%>
	<!-- feature_post start-->
	<section class="all_post section_padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="row">
						<c:forEach var="post" items="${posts}">
							<div class="col-lg-6 col-sm-6">
								<div class="single_post post_1">
									<div class="single_post_img">
										<img src="./img/post/post_18.png" alt="">
									</div>
									<div class="single_post_text text-center">
										<a href="#"><h5>Fashion / Life style</h5></a> <a
											href="/post/detail/${post.id}"><h2>${post.title }</h2></a>
										<p>Posted on ${post.createDate}</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="page_pageniation">
						<nav aria-label="Page navigation example">
							<ul class="pagination justify-content-center">
								<li class="page-item disabled"><a class="page-link"
									href="#" tabindex="-1" aria-disabled="true">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	<!-- feature_post end-->

	<!-- social_connect_part part start-->
	<section class="social_connect_part">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xl-12"></div>
			</div>
		</div>
	</section>
	<!-- social_connect_part part end-->

	<%@include file="./component/footer.jsp"%>

	<!-- jquery plugins here-->
	<!-- jquery -->
	<script src="./js/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="./js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="./js/bootstrap.min.js"></script>
	<!-- custom js -->
	<script src="./js/custom.js"></script>

</body>
</html>