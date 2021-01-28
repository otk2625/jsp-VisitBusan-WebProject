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

body::before {
	content: '';
	position: fixed;
	top: 0;
	left: 0;
	z-index: -1;
	width: 100%;
	height: 100%;
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
</style>

<div class="outer">
	<div class="jb-text">
		<p style="font-size: xx-large; color: white;">부산에 가면</p>
	</div>
</div>





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
					<img src="images/read.png"> : ${dto.readCount }
				</div>
				<div class="likeView">
					<img src="images/like.png"> : ${dto.likeCount }
				</div>
				<div class="replyView">
					<img src="images/reply.png"> : 0
				</div>
			</div>

			<div>
				<a href="/busanWeb/board?cmd=like&id=${dto.id}">좋아요 :
					${dto.likeCount }</a>
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

			<div>
				<p>${detail.ITEMCNTNTS }</p>
			</div>
			<div>메뉴2</div>
			<div>메뉴3</div>
			<div>메뉴4</div>
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
											<div class="star-rating">
												<a href="#"><i class="icofont-ui-rating active"></i></a> <a
													href="#"><i class="icofont-ui-rating active"></i></a> <a
													href="#"><i class="icofont-ui-rating active"></i></a> <a
													href="#"><i class="icofont-ui-rating active"></i></a> <a
													href="#"><i class="icofont-ui-rating"></i></a> <b
													class="text-black ml-2">평가한 개수적는판</b>
											</div>
											<p class="text-black mb-4 mt-2">여기 평가점수 평균내는판</p>
										</div>
										<div class="graph-star-rating-body">
											<div class="rating-list">
												<div class="rating-list-left text-black">5 Star</div>
												<div class="rating-list-center">
													<div class="progress">
														<div style="width: 90% /*퍼센트집어넣는칸*/" aria-valuemax="5"
															aria-valuemin="0" aria-valuenow="5" role="progressbar"
															class="progress-bar bg-primary">
															<span class="sr-only">80% Complete (danger)</span>
														</div>
													</div>
												</div>
												<div class="rating-list-right text-black">56%</div>
											</div>
											<div class="rating-list">
												<div class="rating-list-left text-black">4 Star</div>
												<div class="rating-list-center">
													<div class="progress">
														<div style="width: 23%" aria-valuemax="5"
															aria-valuemin="0" aria-valuenow="5" role="progressbar"
															class="progress-bar bg-primary">
															<span class="sr-only">80% Complete (danger)</span>
														</div>
													</div>
												</div>
												<div class="rating-list-right text-black">23%</div>
											</div>
											<div class="rating-list">
												<div class="rating-list-left text-black">3 Star</div>
												<div class="rating-list-center">
													<div class="progress">
														<div style="width: 11%" aria-valuemax="5"
															aria-valuemin="0" aria-valuenow="5" role="progressbar"
															class="progress-bar bg-primary">
															<span class="sr-only">80% Complete (danger)</span>
														</div>
													</div>
												</div>
												<div class="rating-list-right text-black">11%</div>
											</div>
											<div class="rating-list">
												<div class="rating-list-left text-black">2 Star</div>
												<div class="rating-list-center">
													<div class="progress">
														<div style="width: 2%" aria-valuemax="5" aria-valuemin="0"
															aria-valuenow="5" role="progressbar"
															class="progress-bar bg-primary">
															<span class="sr-only">80% Complete (danger)</span>
														</div>
													</div>
												</div>
												<div class="rating-list-right text-black">02%</div>
											</div>
										</div>
										<div class="graph-star-rating-footer text-center mt-3 mb-3">
											<button type="button" class="btn btn-outline-primary btn-sm"></button>
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
														src="http://bootdey.com/img/Content/avatar/avatar1.png"
														class="mr-3 rounded-pill"></a>
													<div class="media-body">
														<div class="reviews-members-header">
														<c:set var="likePoint" value="${review.likePoint}"  />
														<div class="starRev2 float-right">
														<%
														String star = (String)(pageContext.getAttribute("likePoint"));
														System.out.println("star : " + star);
														int a = 2;
														
														for(int i=0; i<a; i++){%>
														<span class="starR2 on " >별</span>

														<% } %>
														<%for(int j = 0; j < 5-a; j++){%>
															<span class="starR2" >별</span>
														<%}%>
														
														
														
														</div>
															<!-- <div class="starRev2 float-right">
																<span class="starR2 on " >별1</span> <span
																	class="starR2" >별2</span> <span
																	class="starR2" >별3</span> <span
																	class="starR2" >별4</span> <span
																	class="starR2" >별5</span>

															</div> -->
															<h6 class="mb-1">
																<a class="text-black" href="#">${review.username} </a>
															</h6>
															<p class="text-gray">${review.createDate}</p>
														</div>
														<div class="reviews-members-body">
															<p>${review.title}</p>
															<br>
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

													<a class="btn btn-primary pull-right"
														onClick="alert('로그인 후 이용가능합니다')">댓글쓰기</a>
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
</c:forEach>


<%@ include file="../layout/footer.jsp"%>


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
	
	
</script>
</body>
</html>