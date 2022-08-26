<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng ký</title>
</head>
<body>
	<div class="center">
		
		<h1>Register</h1>
		<form method="post" action="<c:url value='/dang-ky'/>"
			id="formLogin">
			<div class="txt_field">
				<input type="text" required class="form-control" id="userName"
					name="userName"> <span></span> <label>Username</label>
			</div>
			<div class="txt_field">
				<input type="password" required class="form-control" id="password"
					name="password"> <span></span> <label>Password</label>
			</div>
			<div class="txt_field">
				<input type="email" required class="form-control" id="password"
					name="email"> <span></span> <label>email</label>
			</div>
			<div class="txt_field">
				<input type="number" required class="form-control" id="password"
					name="phone"> <span></span> <label>phone</label>
			</div>
			<input type="hidden" value="login" name="action" />
			<button type="submit" class="btn btn-primary">Register</button>
			<a class="exit btn btn-primary" href="<c:url value='/dang-nhap?action=login'/>">Login</a>
			<a class="exit btn btn-primary" href="<c:url value='/trang-chu'/>">Exit</a>
			
		</form>
	</div>


</body>
</html>