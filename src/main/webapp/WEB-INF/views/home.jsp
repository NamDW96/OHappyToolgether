<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>OHappyToolgether</title>
<link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
<link href="css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<style>
#full-image {
	width: 100%;
	height: 100%;
	object-fit: cover;
}
</style>
</head>
<body class="sb-nav-fixed">
	<%@ include file="/WEB-INF/views/common/header.jsp"%>
	<div id="layoutSidenav">
		<%@ include file="/WEB-INF/views/common/sidenav.jsp"%>
		<div id="layoutSidenav_content">
			<main>
				<div class="container-fluid px-4">반갑습니다 index페이지입니댱~</div>
				<c:if test="${empty pageContext.request.userPrincipal}">
					<li><a href="${pageContext.request.contextPath}/loginForm.do">로그인</a></li>
				</c:if>

				<c:if test="${not empty pageContext.request.userPrincipal}">
					<li><a href="${pageContext.request.contextPath}/logout"> (${pageContext.request.userPrincipal.name})로그아웃</a></li>
				</c:if>
				<p>
					<img id="full-image" src="/assets/img/together.png">
				</p>
			</main>
			<%@ include file="/WEB-INF/views/common/footer.jsp"%>
		</div>
	</div>
	<script src="js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</body>
</html>
