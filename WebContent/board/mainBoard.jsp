<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<style>
main {
	position: relative;
	z-index: 1;
}

.carousel-inner {
	width: 100%;
	height: 700px;
}

.carousel-item {
	height: 700px;
}

.carousel-caption {
	color: pink;
}

.detail-btn {
	
}
</style>

<main class="main">
	<div id="carouselExampleCaptions" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleCaptions" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="용두산.jpg" class="d-block w-100">
				<div class="carousel-caption d-none d-md-block">
					<h5>누가봐도 용두산 ㅇㅈ?</h5>
					<p>아무리봐도 용두산이지롱~</p>
					<div class="detail-btn">
						<button>자세히 보기</button>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="찐광안리.jpg" class="d-block w-100">
				<div class="carousel-caption d-none d-md-block">
					<h5>이게 찐 광안리지</h5>
					<p>광안리 가고 싶다... 데이트하러 가야하는데</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="찐막해운대.jpg" class="d-block w-100">
				<div class="carousel-caption d-none d-md-block">
					<h5>오호... 해운대</h5>
					<p>해운대 안 간지 오래됐네 해운대도 가고싶네</p>
				</div>
			</div>
		</div>

		<span class="carousel-control-prev-icon" aria-hidden="true"> </span>
		<span class="sr-only">Previous </span>
		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		<span class="sr-only">Next </span>
	</div>
</main>


	
<%@ include file="../layout/footer.jsp"%>