<header class="header">

	<a href="trang-chu" class="logo"> <img src="images/logo.png" alt="">
	</a>

	<form action="" class="search-form">
		<input type="search" name="" placeholder="search here..."
			id="search-box"> <label for="search-box"
			class="fas fa-search"></label>
	</form>

	<div class="icons">
		<div id="menu-btn" class="fas fa-bars"></div>
		<div id="search-btn" class="fas fa-search"></div>
		<a href="#" class="fas fa-heart"></a> 
		<a href='<c:url value="/trang-chu?action=cart"/>' class="fas fa-shopping-cart"></a> 
			
		<div class="login">
			<a class="fas fa-user"></a>
			
			<ul class="login-menu">
				<c:if test="${not empty USERMODEL}">
					<li><span>Name: ${USERMODEL.fullName}</span></li>
					<li><a class="nav-link"
						href='<c:url value="/thoat?action=logout"/>'>Logout</a></li>
				</c:if>
	
				<c:if test="${empty USERMODEL}">
					<li>
						<a class="nav-link" href='<c:url value="/dang-nhap?action=login"/>'>Login</a>
					</li>
					
					<li>
						<a class="nav-link" href='<c:url value="/dang-nhap?action=register"/>'>Register</a>
					</li>
				</c:if>
			</ul>
		</div>
		
	</div>

</header>

<!-- navbar section  -->

<nav class="navbar">
	<div id="close-navbar" class="fas fa-times"></div>
	<a href="<c:url value="/trang-chu?action=shop"/>">shop</a> 
	<a href="#gallery">gallery</a>
	<a href="#team">team</a> 
	<a href="#arrivals">arrivals</a> 
	<a href="#blogs">blogs</a>
	<a href="<c:url value="/trang-chu?action=contact"/>">contact</a>
</nav>

<!-- navbar section  -->

<!-- header section ends -->