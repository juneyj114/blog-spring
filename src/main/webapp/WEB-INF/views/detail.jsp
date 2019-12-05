<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
</head>
<body>
<%@include file="./component/header.jsp"%>
 <!-- breadcrumb start-->
    <section class="breadcrumb breadcrumb_bg align-items-center">
        <div class="container">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-6">
                    <div class="breadcrumb_tittle text-left">
                        <h2>blog details</h2>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="breadcrumb_content text-right">
                        <p>Home<span>/</span>blog details</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb start-->
   <!--================Blog Area =================-->
   <section class="blog_area single-post-area all_post section_padding">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 posts-list">
               <div class="single-post">
                  <div class="feature-img">
                     <img class="img-fluid" src="/img/blog/single_blog_1.png" alt="">
                  </div>
                  <div class="blog_details">
                     <h2>${post.title}
                     </h2>
                     <ul class="blog-info-link mt-3 mb-4">
                        <li><a href="#"><i class="far fa-user"></i> Author: ${user.username}</a></li>
                     </ul>
                     <p>${post.content}</p>
                     <a href="/" class="genric-btn default circle arrow">Home<span class="lnr lnr-arrow-right"></span></a>
                     <c:choose>
                     <c:when test="${user.username eq sessionScope.user.username}">
                     <div style="display:flex">
                     <a href="/post/update/${post.id}" class="genric-btn default circle" style="margin-left:530px;">Update</a>
                     <a href="/post/delete/${post.id}" class="genric-btn default circle" style="margin-left:20px;">Delete</a>
                     </div>
                     </c:when>
                     </c:choose>
                  </div>
               </div>
               
               
               
               
            </div>
            
         </div>
      </div>
   </section>
   <!--================Blog Area end =================-->
   <%@include file="./component/footer.jsp"%>
   
   <!-- jquery plugins here-->
      <script src="/js/jquery-1.12.1.min.js"></script>
      <!-- popper js -->
      <script src="/js/popper.min.js"></script>
      <!-- bootstrap js -->
      <script src="/js/bootstrap.min.js"></script>
      <!-- custom js -->
      <script src="/js/custom.js"></script>
</body>
</html>