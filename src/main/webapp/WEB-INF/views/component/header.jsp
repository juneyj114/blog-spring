<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!--::header part start::-->
<header class="main_menu">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-12">
				<nav class="navbar navbar-expand-lg navbar-light">
					<a class="navbar-brand" href="/"> <img
						src="/img/logo.png" alt="logo">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div
						class="collapse navbar-collapse main-menu-item justify-content-center"
						id="navbarSupportedContent">
						<ul class="navbar-nav">
							<li class="nav-item active" style="margin-right: 550px;"><a
								class="nav-link" href="/">Home</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/post/postForm">Post</a></li>

							<c:choose>
								<c:when test="${sessionScope.user eq null}">
									<li class="nav-item"><a class="nav-link"
										href="/user/loginForm">Login</a></li>
								</c:when>
								<c:otherwise>
									<li class="nav-item"><a class="nav-link"
										href="/user/logout">Logout</a></li>
								</c:otherwise>
							</c:choose>

							<li class="nav-item"><a class="nav-link"
								href="/user/joinForm">Join</a></li>

							</li>
						</ul>
					</div>
					<c:set var="avatar" value="../../../uploads/${user.avatar}"/>
					<img src=${user.avatar eq null ? '/img/human.png' : avatar}
						style="width: 50px; height: 50px; border-radius: 100%; border: 1px solid; margin-right: 10px"/>
					<div class="header_social_icon d-none d-lg-block">
						${user.username}</div>
					
						
				</nav>
			</div>
		</div>
	</div>
</header>
<!-- Header part end-->