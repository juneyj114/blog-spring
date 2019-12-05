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
<link rel="icon" href="/img/favicon.png">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/css/bootstrap.min.css">
<!-- animate CSS -->
<link rel="stylesheet" href="/css/animate.css">
<!-- owl carousel CSS -->
<link rel="stylesheet" href="/css/owl.carousel.min.css">
<!-- themify CSS -->
<link rel="stylesheet" href="/css/themify-icons.css">
<!-- flaticon CSS -->
<link rel="stylesheet" href="/css/liner_icon.css">
<link rel="stylesheet" href="/css/search.css">
<!-- style CSS -->
<link rel="stylesheet" href="/css/style.css">
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css"
	rel="stylesheet">
<style>
.popover {
	display: none;
}
</style>
</head>

<body>
	<%@include file="./component/header.jsp"%>

	<section class="blog_area single-post-area all_post section_padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 posts-list">




					<div class="comment-form" style="margin: 0px">
						<h4>Posting</h4>

						<form class="form-contact comment_form" action="/post/createPost"
							id="commentForm" method="post">
							<div class="row">
								<div class="col-12">
									<input type="text" placeholder="title"
										style="width: 100%; margin-bottom: 20px;" name="title" />
									<div class="form-group">
										 <textarea id="summernote" name="content"></textarea>
									</div>
								</div>
							</div>
							<div class="load_btn">
							<button type="submit" value="submit" class="btn_1" style="border: none;">Posting</button>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>
	</section>

	<%@include file="./component/footer.jsp"%>

	<!-- jquery plugins here-->
	<!-- jquery -->
	<script src="/js/jquery-1.12.1.min.js"></script>
	<!-- popper js -->
	<script src="/js/popper.min.js"></script>
	<!-- bootstrap js -->
	<script src="/js/bootstrap.min.js"></script>
	<!-- custom js -->
	<script src="/js/custom.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.js"></script>
	<script>
		$(document).ready(function() {
			$('#summernote').summernote();
		});
	</script>

</body>
</html>