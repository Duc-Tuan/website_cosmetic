<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title><dec:title default="Trang chủ" /></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<!-- font awesome cdn link  -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/css/lightgallery.min.css">

<!-- css -->
<link href="<c:url value='/template/web/css/style.css' />"
	rel="stylesheet" type="text/css" media="all" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<style>
.card-info .price__info {
	height: 54px;
	overflow: hidden;
}

.card-info .price__info h4 {
	display: -webkit-box;
	-webkit-box-orient: vertical;
	-webkit-line-clamp: 2;
	line-height: 1.2;
}
@media (min-width: 768px) {
  .footer .box-container .box .link:hover {
    color: #e84393;
  }
  
  .footer .box-container .box .link:hover i {
    padding-right: 2rem;
  }
}

@media (min-width: 768px) {
  .blogs .slide:hover .image img {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
  
  .blogs .slide:hover .image .icons {
    -webkit-transform: translateY(0);
            transform: translateY(0);
  }
}

@media (min-width: 768px) {
  .team .box-container .box:hover .image img {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
  
  .team .box-container .box:hover .image .share {
    left: 0;
  }
}

@media (min-width: 768px) {
  .shop .slide:hover .image img {
    -webkit-transform: scale(1.1);
            transform: scale(1.1);
  }
  
  .shop .slide:hover .image .icons {
    right: 1rem;
  }
}
</style>
</head>

<body>
	<!-- header -->
	<%@ include file="/common/web/header.jsp"%>
	<!-- header -->

	<dec:body />

	<!-- footer -->
	<%@ include file="/common/web/footer.jsp"%>
	<!-- footer -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/js/lightgallery.min.js"></script>

	<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

	<!-- custom js file link      -->
	<script src="<c:url value='/template/web/css/script.js' />"></script>

	<script>
		lightGallery(document.querySelector('.gallery .lightbox'));
	</script>
</body>
</html>