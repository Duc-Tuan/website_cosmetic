<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
</head>
<body>
	<div class="center">
		
		<h1>Login</h1>
		<c:if test="${not empty message}">
			<div class="alert alert-${alert}">${message}</div>
		</c:if>
		<form method="post" action="<c:url value='/dang-nhap'/>"
			id="formLogin">
			<div class="txt_field">
				<input type="text" required class="form-control" id="userName"
					name="userName"> <span></span> <label>Username</label>
			</div>
			<div class="txt_field">
				<input type="password" required class="form-control" id="password"
					name="password"> <span></span> <label>Password</label>
			</div>
			<div class="pass">Forgot Password?</div>
			<input type="hidden" value="login" name="action" />
			<button type="submit" class="btn btn-primary">login</button>
			<a class="exit btn btn-primary" href="<c:url value='/trang-chu'/>">Exit</a>
			<div class="signup_link">
				Not a member? <a href="<c:url value="/dang-nhap?action=register"/>">Signup</a>
			</div>
		</form>
	</div>


</body>
</html>