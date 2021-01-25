<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<style>
.img {
	position: relative;
	background-image: "../layout/images/새해.jpg";
	height: 250px;
	background-size: cover;
}

.img-cover {
	position: absolute;
	height: 100%;
	width: 100%;
	background-color: rgba(0, 0, 0, 0.7);
	z-index: 1;
}

.img .content {
	position: absolute;
	top: 70%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-size: 5rem;
	color: white;
	z-index: 2;
	text-align: center;
}

.container {
	position: relative;
	width: 1050px;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	transition:0.5s;
}

.container .card {
	position: relative;
	width: 300px;
	height: 400px;
	background: #fff;
	transition:0.5s
}

.container .card:hover {
	transform: translateY(-40px);
}

.container .card .imgBx{
	position: relative;
	width: 300px;
	height: 200px;
	background: #00c7ff;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.container .card .imgBx img {
	max-width: 100px;
}

.container .card .imgBx h3 {
	position: relative;
	color: #fff;
	margin-top: 10px;
}

.container .card .content {
	position: relative;
	width: 100%;
	height: 200px;
	padding: 20px;
	color: #777;
	text-align: center;
}
</style>

<div class="img">
	<div class="content">
		<h1>유용한 정보</h1>
	</div>
	<div class="img-cover"></div>
</div>

<h1 style="margin-top: 100px; text-align: center;"><b>여행 공유</b></h1>

<div class="container">
	<div class="card">
		<div class="imgBx">
			<img src="../layout/images/새해.jpg">
			<h3>디자인1</h3>
		</div>
		<div class="content">
			디자인 어렵네~
		</div>
	</div>
	
	<div class="card">
		<div class="imgBx">
			<img src="../layout/images/새해.jpg">
			<h3>디자인2</h3>
		</div>
		<div class="content">
			디자인 어렵네~
		</div>
	</div>
	
	<div class="card">
		<div class="imgBx">
			<img src="../layout/images/새해.jpg">
			<h3>디자인3</h3>
		</div>
		<div class="content">
			디자인 어렵네~
		</div>
	</div>

</div>

</body>
</html>