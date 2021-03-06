<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.Format"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<link rel="stylesheet"
	href="https://allyoucan.cloud/cdn/icofont/1.0.1/icofont.css"
	integrity="sha384-jbCTJB16Q17718YM9U22iJkhuGbS0Gd2LjaWb4YJEZToOPmnKDjySVa323U+W7Fv"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>


<style>
.p1 {
    margin: 25px 0;
    padding: 0;
    font-size: 15px;
    color: #000000;
    line-height: 28px;
}
/*
*
* ==========================================
* CUSTOM UTIL CLASSES
* ==========================================
*/
.nav-pills-custom .nav-link {
	color: #aaa;
	background: #fff;
	position: relative;
}

.nav-pills-custom .nav-link.active {
	color: #45b649;
	background: #fff;
}

/*  Add indicator arrow for the active tab */
@media ( min-width : 992px) {
	.nav-pills-custom .nav-link::before {
		content: '';
		display: block;
		border-top: 8px solid transparent;
		border-left: 10px solid #fff;
		border-bottom: 8px solid transparent;
		position: absolute;
		top: 50%;
		right: -10px;
		transform: translateY(-50%);
		opacity: 0;
	}
}

/* .nav-pills-custom .nav-link.active::before {
    opacity: 1;
 */
@import url('https://fonts.googleapis.com/css?family=Abel');

.modal-backdrop {
	position: static;
}

#star_grade a.on {
	color: red;
}

.starR {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 30px;
	height: 30px;
	display: inline-block;
	text-indent: -9999px;
	cursor: pointer;
}

.starR.on {
	background-position: 0 0;
	color: yellow;
}

.starR2 {
	background:
		url('http://miuu227.godohosting.com/images/icon/ico_review.png')
		no-repeat right 0;
	background-size: auto 100%;
	width: 30px;
	height: 30px;
	display: inline-block;
	text-indent: -9999px;
}

.starR2.on {
	background-position: 0 0;
	color: yellow;
}

* {
	padding: 0;
	margin: 0;
}

a {
	text-decoration: none;
	color: #666;
}

li {
	list-style: none;
}

body {
	background-size: cover;
	font-family: 'Abel', sans-serif;
	font-size: 14px;
	line-height: 1.6em;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

#tab-menu {
	margin-top: 100px;
	width: 1200px;
	margin-left: 50%;
	margin-bottom: 200px;
	transform: translatex(-50%);
	border-radius: 4px;
}

#tab-btn ul {
	display: flex;
	justify-content: space-around;
	overflow: hidden;
}

#tab-btn li {
	float: left;
	width: 200px;
	text-align: center;
}

#tab-btn li a {
	display: block;
	color: #2b210e;
	padding: 15px 20px;
	font-weight: bold;
}

#tab-btn li.active a {
	border-bottom: 3px solid #2b210e;
	color: #2b210e;
}

#tab-cont {
	width: 100%;
	background: #fff;
	padding: 20px;
	box-sizing: border-box;
	border-radius: 0 0 4px 4px;
}

.card-title {
	text-align: center;
	padding: 30px;
}

.viewCount {
	display: flex;
	justify-content: flex-start;
}

.viewCount div {
	padding: 20px;
	margin-right: 20px;
}

/*리뷰*/
.total-like-user-main a {
	display: inline-block;
	margin: 0 -17px 0 0;
}

.total-like {
	border: 1px solid;
	border-radius: 50px;
	display: inline-block;
	font-weight: 500;
	height: 34px;
	line-height: 33px;
	padding: 0 13px;
	vertical-align: top;
}

.restaurant-detailed-ratings-and-reviews hr {
	margin: 0 -24px;
}

.graph-star-rating-header .star-rating {
	font-size: 17px;
}

.progress {
	background: #f2f4f8 none repeat scroll 0 0;
	border-radius: 0;
	height: 30px;
}

.rating-list {
	display: inline-flex;
	margin-bottom: 15px;
	width: 100%;
}

.rating-list-left {
	height: 16px;
	line-height: 29px;
	width: 10%;
}

.rating-list-center {
	width: 80%;
}

.rating-list-right {
	line-height: 29px;
	text-align: right;
	width: 10%;
}

.restaurant-slider-pics {
	bottom: 0;
	font-size: 12px;
	left: 0;
	z-index: 999;
	padding: 0 10px;
}

.restaurant-slider-view-all {
	bottom: 15px;
	right: 15px;
	z-index: 999;
}

.offer-dedicated-nav .nav-link.active, .offer-dedicated-nav .nav-link:hover,
	.offer-dedicated-nav .nav-link:focus {
	border-color: #3868fb;
	color: #3868fb;
}

.offer-dedicated-nav .nav-link {
	border-bottom: 2px solid #fff;
	color: #000000;
	padding: 16px 0;
	font-weight: 600;
}

.offer-dedicated-nav .nav-item {
	margin: 0 37px 0 0;
}

.restaurant-detailed-action-btn {
	margin-top: 12px;
}

.restaurant-detailed-header-right .btn-success {
	border-radius: 3px;
	height: 45px;
	margin: -18px 0 18px;
	min-width: 130px;
	padding: 7px;
}

.text-black {
	color: #000000;
}

.icon-overlap {
	bottom: -23px;
	font-size: 74px;
	opacity: 0.23;
	position: absolute;
	right: -32px;
}

.menu-list img {
	width: 41px;
	height: 41px;
	object-fit: cover;
}

.restaurant-detailed-header-left img {
	width: 88px;
	height: 88px;
	border-radius: 3px;
	object-fit: cover;
	box-shadow: 0 .125rem .25rem rgba(0, 0, 0, .075) !important;
}

.reviews-members .media .mr-3 {
	width: 56px;
	height: 56px;
	object-fit: cover;
}

.rounded-pill {
	border-radius: 50rem !important;
}

.total-like-user {
	border: 2px solid #fff;
	height: 34px;
	box-shadow: 0 .125rem .25rem rgba(0, 0, 0, .075) !important;
	width: 34px;
}

.total-like-user-main a {
	display: inline-block;
	margin: 0 -17px 0 0;
}

.total-like {
	border: 1px solid;
	border-radius: 50px;
	display: inline-block;
	font-weight: 500;
	height: 34px;
	line-height: 33px;
	padding: 0 13px;
	vertical-align: top;
}

.restaurant-detailed-ratings-and-reviews hr {
	margin: 0 -24px;
}

.graph-star-rating-header .star-rating {
	font-size: 17px;
}

.progress {
	background: #f2f4f8 none repeat scroll 0 0;
	border-radius: 0;
	height: 30px;
}

.rating-list {
	display: inline-flex;
	margin-bottom: 15px;
	width: 100%;
}

.rating-list-left {
	height: 16px;
	line-height: 29px;
	width: 10%;
}

.rating-list-center {
	width: 80%;
}

.rating-list-right {
	line-height: 29px;
	text-align: right;
	width: 10%;
}

.restaurant-slider-pics {
	bottom: 0;
	font-size: 12px;
	left: 0;
	z-index: 999;
	padding: 0 10px;
}

.restaurant-slider-view-all {
	bottom: 15px;
	right: 15px;
	z-index: 999;
}

.progress {
	background: #f2f4f8 none repeat scroll 0 0;
	border-radius: 0;
	height: 30px;
}

.modal-backdrop {
	position: static;
}

.link-container {
	margin-left: 25%;
	margin-bottom: 20px;
	width: 600px;
	margin-bottom: 20px;
}

.link-container h2 {
	background-color: #abd5ea;
	color: #333;
	font-size: 18px;
	line-height: 30px;
	margin: 0;
	padding-left: 10px;
}

.link-container ul {
	font-size: 13px;
	list-style-type: none;
	padding-left: 0;
	margin: 0;
}

.link-container ul li {
	margin-bottom: 50px;
	background-image: url('http://i.msdn.microsoft.com/dynimg/IC688534.png');
	background-repeat: no-repeat;
	background-position: center left;
	border-bottom: #777 1px solid;
	padding-left: 20px;
	line-height: 30px;
	background-image: url('http://i.msdn.microsoft.com/dynimg/IC688534.png');
}

.link-container ul li a {
	text-decoration: none;
}
</style>


<div class="outer">
	<div class="jb-text">
		<p style="font-size: xx-large; color: white;">부산에 가면</p>
	</div>
</div>
<section id="nav2">
	<div class="navInner boxing2">
		<div class="left">
			<ul style="list-style: none;">
				<li class="home"><a href="<%=request.getContextPath()%>/board?cmd=main&page=0" title="부산에가면으로 갑니다">부산에가면</a></li>
				<li class="depth1"><a href="<%=request.getContextPath()%>/board?cmd=sightForm2&page=0" title="명소으로 갑니다">명소</a></li>
				<li class="depth2">명소상세보기</li>
			</ul>
		</div>

	</div>
</section>


<div class="container">
	<div class="card-title">
		<h2>
			<b>${dto.title }</b>
		</h2>
		<br />
		<p>${dto.subTitle }</p>
	</div>
	<div class="card" style="width: 100%">

		<div class="card-body">
			<img src="${dto.mainImg }" style="width: 100%">

			<div class="viewCount">
				<div class="readView">
					<img src="images/read.png"><b> : ${dto.readCount }</b>
				</div>
				<div class="likeView">
					<img src="images/like.png"><b> : ${dto.likeCount }</b>
				</div>
				<div class="replyView">
					<img src="images/reply.png"><b> ${dto.reviewCount }</b>
				</div>
			</div>

			<div>
				<a class="btn btn-danger float-right" onClick="like(${dto.id})"
					style="color: white;"
					<%-- href="/busanWeb/board?cmd=like&id=${dto.id}" --%> type="button">좋아요
				</a>
			</div>

		</div>
	</div>
	<br>
</div>





<c:forEach var="detail" items="${detail}" varStatus="status">
	<div id="tab-menu">
		<div id="tab-btn">
			<ul>
				<li class="active"><a href="#">상세정보</a></li>
				<li><a href="#">지도/주변관광지</a></li>
				<li><a href="#">이용안내</a></li>
				<li><a href="#">여행사진</a></li>
				<li><a href="#">리뷰</a></li>
			</ul>
		</div>
		<hr />
		<div id="tab-cont">

			<!-- 상세정보 -->
			<div>
			<h3>${detail.TITLE }</h3>
			<hr>
				<p class="p1">${detail.ITEMCNTNTS }</p>
				<img alt="" src="${detail.MAINIMGTHUMB }">
			</div>
			
			<!-- 지도 -->
			<div>

			
			<div id="map-lat" style="display: none;">${detail.LAT }</div>
			<div id="map-lng" style="display: none;">${detail.LNG }</div>
<div id="map" style="width:1200px;height:400px;"></div>
			
			</div>

			

			<div>
				<section class="py-5 headerprofile">
					<div class="container py-4">

						<div class="row">
							<div class="col-md-3">
								<!-- Tabs nav -->
								<div class="nav flex-column nav-pills nav-pills-custom"
									id="v-pills-tab" role="tablist" aria-orientation="vertical">
									<a class="nav-link mb-3 p-3 shadow active"
										id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home"
										role="tab" aria-controls="v-pills-home" aria-selected="true">
										<i class="fa fa-user-circle-o mr-2"></i> <span
										class="font-weight-bold small text-uppercase">주소</span>
									</a> <a class="nav-link mb-3 p-3 shadow" id="v-pills-profile-tab"
										data-toggle="pill" href="#v-pills-profile" role="tab"
										aria-controls="v-pills-profile" aria-selected="false"> <i
										class="fa fa-calendar-minus-o mr-2"></i> <span
										class="font-weight-bold small text-uppercase">전화번호</span></a> <a
										class="nav-link mb-3 p-3 shadow" id="v-pills-messages-tab"
										data-toggle="pill" href="#v-pills-messages" role="tab"
										aria-controls="v-pills-messages" aria-selected="false"> <i
										class="fa fa-star mr-2"></i> <span
										class="font-weight-bold small text-uppercase">홈페이지</span></a> <a
										class="nav-link mb-3 p-3 shadow" id="v-pills-settings-tab"
										data-toggle="pill" href="#v-pills-settings" role="tab"
										aria-controls="v-pills-settings" aria-selected="false"> <i
										class="fa fa-check mr-2"></i> <span
										class="font-weight-bold small text-uppercase">교통정보</span></a>
										<a
										class="nav-link mb-3 p-3 shadow" id="v-pills-jang-tab"
										data-toggle="pill" href="#v-pills-jang" role="tab"
										aria-controls="v-pills-jang" aria-selected="false"> <i
										class="fa fa-check mr-2"></i> <span
										class="font-weight-bold small text-uppercase">장애인시설</span></a>
								</div>
							</div>


							<div class="col-md-9">
								<!-- Tabs content -->
								<div class="tab-content" id="v-pills-tabContent">
									<div
										class="tab-pane fade shadow rounded bg-white show active p-5"
										id="v-pills-home" role="tabpanel"
										aria-labelledby="v-pills-home-tab">
										<h4 class="font-italic mb-4">주소</h4>
										<p class="font-italic text-muted mb-2">${detail.ADDR1 }</p>
									</div>

									<div class="tab-pane fade shadow rounded bg-white p-5"
										id="v-pills-profile" role="tabpanel"
										aria-labelledby="v-pills-profile-tab">
										<h4 class="font-italic mb-4">전화번호</h4>
										<p class="font-italic text-muted mb-2">${detail.CNTCTTEL }</p>
									</div>

									<div class="tab-pane fade shadow rounded bg-white p-5"
										id="v-pills-messages" role="tabpanel"
										aria-labelledby="v-pills-messages-tab">
										<h4 class="font-italic mb-4">홈페이지</h4>
										<a href="${detail.HOMEPAGEURL }"><p class="font-italic text-muted mb-2">${detail.HOMEPAGEURL }</p></a>
									</div>

									<div class="tab-pane fade shadow rounded bg-white p-5"
										id="v-pills-settings" role="tabpanel"
										aria-labelledby="v-pills-settings-tab">
										<h4 class="font-italic mb-4">교통정보</h4>
										<p class="font-italic text-muted mb-2">${detail.TRFCINFO }</p>
										

									</div>
									<div class="tab-pane fade shadow rounded bg-white p-5"
										id="v-pills-jang" role="tabpanel"
										aria-labelledby="v-pills-jang-tab">
										<h4 class="font-italic mb-4">장애인시설</h4>
										<p class="font-italic text-muted mb-2">${detail.MIDDLESIZERM1 }</p>
										

									</div>
								</div>
							</div>
						</div>
					</div>
				</section>

			</div>


			<!-- 메뉴4 -->
			<div></div>
			<!-- 메뉴4 end-->
			<div class="review">
				<div class="container">
					<div class="col-md-12">
						<div class="offer-dedicated-body-left">
							<div class="tab-content" id="pills-tabContent">




								<div class="tab-pane fade active show" id="pills-reviews"
									role="tabpanel" aria-labelledby="pills-reviews-tab">

									<div
										class="bg-white rounded shadow-sm p-4 mb-4 clearfix graph-star-rating">
										<h5 class="mb-0 mb-4">평가 및 리뷰</h5>
										<div class="graph-star-rating-header">

											<c:set var="avg" value="${avg}" />
											<c:set var="count" value="${count}" />
											<c:set var="star5" value="${star5}" />
											<c:set var="star4" value="${star4}" />
											<c:set var="star3" value="${star3}" />
											<c:set var="star2" value="${star2}" />
											<c:set var="star1" value="${star1}" />
											<div class="starRev2">
												<%
												int star5 = (int) pageContext.getAttribute("star5");
												System.out.println(pageContext.getAttribute("star5"));
												int star4 = (int) pageContext.getAttribute("star4");
												System.out.println(pageContext.getAttribute("star4"));
												int star3 = (int) pageContext.getAttribute("star3");
												int star2 = (int) pageContext.getAttribute("star2");
												int star1 = (int) pageContext.getAttribute("star1");

												int count = (int) pageContext.getAttribute("count");
												
												double b = (double) (pageContext.getAttribute("avg"));
												DecimalFormat format = new DecimalFormat("0.0");
												DecimalFormat format2 = new DecimalFormat("0");
												int aa = (int) b;
												for (int i = 0; i < aa; i++) {
												%>
												<span class="starR2 on ">별</span>

												<%
												}
												%>
												<%
												for (int j = 0; j < 5 - aa; j++) {
												%>
												<span class="starR2">별</span>
												<%
												}
												%>
												<b class="text-black ml-2"> ${count}</b>
											</div>

											<br> <b class="text-black mb-4 mt-2">평군점수 : <%out.print(format.format(b));%></b> <br>
										</div>
										<div class="graph-star-rating-body">
											<div class="rating-list">
												<div class="rating-list-left text-black">5 Star</div>
												<div class="rating-list-center">
													<div class="progress">
														<div
															style="width: <%if(count != 0){out.print(star5 / count * 100);}%>% /*퍼센트집어넣는칸*/"
															aria-valuemax="5" aria-valuemin="0" aria-valuenow="5"
															role="progressbar" class="progress-bar bg-primary">
															<span class="sr-only">80% Complete (danger)</span>
														</div>
													</div>
												</div>
												<div class="rating-list-right text-black">
													<%
													if(count != 0){out.print(format2.format(star5 / count * 100));}
													%>%
												</div>
											</div>
											<div class="rating-list">
												<div class="rating-list-left text-black">4 Star</div>
												<div class="rating-list-center">
													<div class="progress">
														<div style="width: <%if(count != 0){out.print(star4 / count * 100);}%>%"
															aria-valuemax="5" aria-valuemin="0" aria-valuenow="5"
															role="progressbar" class="progress-bar bg-primary">
															<span class="sr-only">80% Complete (danger)</span>
														</div>
													</div>
												</div>
												<div class="rating-list-right text-black">
													<%
													if(count != 0){out.print(format2.format(star4 / count * 100));}
													%>%
												</div>
											</div>
											<div class="rating-list">
												<div class="rating-list-left text-black">3 Star</div>
												<div class="rating-list-center">
													<div class="progress">
														<div style="width: <%if(count != 0){out.print(star3 / count * 100);}%>%"
															aria-valuemax="5" aria-valuemin="0" aria-valuenow="5"
															role="progressbar" class="progress-bar bg-primary">
															<span class="sr-only">80% Complete (danger)</span>
														</div>
													</div>
												</div>
												<div class="rating-list-right text-black">
													<%
													if(count != 0){out.print(format2.format(star3 / count * 100));}
													%>%
												</div>
											</div>
											<div class="rating-list">
												<div class="rating-list-left text-black">2 Star</div>
												<div class="rating-list-center">
													<div class="progress">
														<div style="width: <%if(count != 0){out.print(star2 / count * 100);}%>%"
															aria-valuemax="5" aria-valuemin="0" aria-valuenow="5"
															role="progressbar" class="progress-bar bg-primary">
															<span class="sr-only">80% Complete (danger)</span>
														</div>
													</div>
												</div>
												<div class="rating-list-right text-black">
													<%
													if(count != 0){out.print(format2.format(star2 / count * 100));}
													%>%
												</div>
											</div>
											<div class="rating-list">
												<div class="rating-list-left text-black">1 Star</div>
												<div class="rating-list-center">
													<div class="progress">
														<div style="width: <%if(count != 0){out.print(star1 / count * 100);}%>%"
															aria-valuemax="5" aria-valuemin="0" aria-valuenow="5"
															role="progressbar" class="progress-bar bg-primary">
															<span class="sr-only">80% Complete (danger)</span>
														</div>
													</div>
												</div>
												<div class="rating-list-right text-black">
													<%
													if(count != 0){out.print(format2.format(star1 / count * 100));}
													%>%
												</div>
											</div>
										</div>
										<div class="graph-star-rating-footer text-center mt-3 mb-3">
											<button type="button" class="btn btn-outline-primary btn-sm">이
												구역의 별점 수치는?</button>
										</div>
									</div>
									<div
										class="bg-white rounded shadow-sm p-4 mb-4 restaurant-detailed-ratings-and-reviews">
										<a href="#" class="btn btn-outline-primary btn-sm float-right">Top
											Rated</a>
										<h5 class="mb-1">리뷰</h5>
										<br>
										<hr>

										<c:forEach items="${reviews}" var="review" varStatus="status">
											<!-- 리뷰 시작점 -->
											<div class="reviews-members pt-4 pb-4">
												<div class="media">
													<a href="#"><img alt="Generic placeholder image"
														src="https://lh3.googleusercontent.com/proxy/lWhV5caBDIZK6UWJxO1Pn_4Dd5qgkegOvMF-R7y5zUu7WDyGLBL7JjMRsp0pVJwBzGJ1DQsuE-gdbrdQIeCp4VW7Swce8kQ_Jb26eJpiQSfY7RbMsA3RzeEZfaHSthVJYgXXlO7wlgxbkWGuc1jdDP59V7KrYPZCavq4C4Tlkds"
														class="mr-3 rounded-pill"></a>
													<div class="media-body">
														<div class="reviews-members-header">
															<c:set var="likePoint" value="${review.likePoint}" />
															<div class="starRev2 float-right">
																<%
																int a = (int) pageContext.getAttribute("likePoint");

																for (int i = 0; i < a; i++) {
																%>
																<span class="starR2 on ">별</span>

																<%
																}
																%>
																<%
																for (int j = 0; j < 5 - a; j++) {
																%>
																<span class="starR2">별</span>
																<%
																}
																%>

															</div>

															<h6 class="mb-1">
																<a class="text-black" href="#">${review.username} </a>
															</h6>
															<p class="text-gray">${review.createDate}</p>
														</div>
														<div class="reviews-members-body">
															<b>${review.title}</b> <br>
															<p>${review.content}</p>
														</div>
														<div class="reviews-members-footer">
															<a class="total-like" href="#"><i
																class="icofont-thumbs-up"></i> 좋아요 숫자</a> <a
																class="total-like" href="#"><i
																class="icofont-thumbs-down"></i>싫어요 숫자</a>
														</div>
													</div>
												</div>
											</div>
											<hr>
										</c:forEach>

										<a class="text-center w-100 d-block mt-4 font-weight-bold"
											href="#">See All Reviews</a>
									</div>
									<div
										class="bg-white rounded shadow-sm p-4 mb-5 rating-review-select-page">
										<h5 class="mb-4">리뷰를 작성해 보세요</h5>
										<p class="mb-2">이 장소는 어떠셨나요?</p>
										<div class="mb-4">


											<div class="starRev">
												<span class="starR on " onclick="mark(1)">별1</span> <span
													class="starR" onclick="mark(2)">별2</span> <span
													class="starR" onclick="mark(3)">별3</span> <span
													class="starR" onclick="mark(4)">별4</span> <span
													class="starR" onclick="mark(5)">별5</span>

											</div>
											<input type="hidden" name="star" id="star">
										</div>

										<div class="form-group">

											<div class="form-group">
												<div class="form-group">
													<label for="title">제목</label> <input type="text"
														class="form-control" placeholder="title" id="title"
														name="title">
												</div>

												<label>내용</label>
												<textarea id="summernote" class="form-control"
													name="content2">
     												
     											</textarea>

											</div>
											<div class="form-group">
												<!-- <button class="btn btn-primary btn-sm" type="button">
													등록</button> -->

												<c:choose>
													<c:when test="${sessionScope.principal.id != null}">
														<button
															onClick="replySave(${sessionScope.principal.id}, ${detail.UCSEQ})"
															class="btn btn-primary btn-sm" type="button">등록</button>
													</c:when>
													<c:otherwise>

														<a class="btn btn-primary btn-sm" type="button"
															onClick="alert('로그인 후 이용가능합니다')">등록</a>
													</c:otherwise>
												</c:choose>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=debe45815b202892f970e43978920753
"></script>

<script>
$('#summernote').summernote({
	placeholder : '리뷰작성칸',
	tabsize : 2,
	height : 400
});



$('.starRev span').click(function(){
	  $(this).parent().children('span').removeClass('on');
	  $(this).addClass('on').prevAll('span').addClass('on');
	  return false;
	});
</script>
<script>
	var tabBtn = $("#tab-btn > ul > li"); //각각의 버튼을 변수에 저장
	var tabCont = $("#tab-cont > div"); //각각의 콘텐츠를 변수에 저장
	//컨텐츠 내용을 숨겨주세요!
	tabCont.hide().eq(0).show();
	tabBtn.click(function() {
		var target = $(this); //버튼의 타겟(순서)을 변수에 저장
		var index = target.index(); //버튼의 순서를 변수에 저장
		tabBtn.removeClass("active"); //버튼의 클래스를 삭제
		target.addClass("active"); //타겟의 클래스를 추가
		tabCont.css("display", "none");
		tabCont.eq(index).css("display", "block");
	});

	
function mark(star) {
	document.getElementById("star").value = star;
	console.log($("#star").val());
}
function like(id) {
	console.log(id);
	$.ajax({
		type: "post",
		url: "/busanWeb/board?cmd=like&id="+id,
		contentType: "application/json; charset=utf-8",
		dataType: "json"
	}).done(function(result){
		if(result.statusCode == 1){

			location.reload(); 
		}else{
			alert("좋아요 실패");
		}
	});
}
	
function replySave(userId, sightId){
		console.log($("#summernote").val());
		var data = {
			userId: userId,
			sightId: sightId,
			content: $("#summernote").val(),
			title: $("#title").val(),
			likePoint: $("#star").val()
		}
		$.ajax({
			type: "post",
			url: "/busanWeb/review?cmd=save",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(result){
			if(result.statusCode == 1){
				/*addReply(result.data[0]);*/
				alert("리뷰 등록 완료!");
				location.reload(); 
			}else{
				alert("댓글쓰기 실패");
			}
		});
	};





	



	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(parseFloat($("#map-lat").text()), parseFloat($("#map-lng").text())), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };
    
var map = new kakao.maps.Map(mapContainer, mapOption);





// 마커가 표시될 위치입니다 
var markerPosition  = new kakao.maps.LatLng(parseFloat($("#map-lat").text()), parseFloat($("#map-lng").text())); 

// 마커를 생성합니다
var marker = new kakao.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

var iwContent = '<div>${dto.title}<br><a href="https://map.kakao.com/link/map/${dto.title},${dto.sightlat},${dto.sightlng}" style="color:blue" target="_blank">큰지도보기</a><a href="https://map.kakao.com/link/to/${dto.title},${dto.sightlat},${dto.sightlng}" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(parseFloat($("#map-lat").text()), parseFloat($("#map-lng").text())); //인포윈도우 표시 위치입니다

// 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});
  
// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
infowindow.open(map, marker); 

setTimeout(function() {
    map.relayout();
    map.setCenter(new kakao.maps.LatLng(parseFloat($("#map-lat").text()), parseFloat($("#map-lng").text())));
    // map.setLevel(2); 필요하면 레벨조정
}, 2000);



		
</script>

<%@ include file="../layout/footer.jsp"%>>

</body>
</html>
