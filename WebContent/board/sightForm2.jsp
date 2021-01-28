<%@page import="com.cos.busanWeb.domain.sight.dto.sightDto"%>
<%@page import="com.cos.busanWeb.domain.sight.dto.SightDetailDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.0/css/all.css"
	integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt"
	crossorigin="anonymous">

<style>
.card-box:hover {
	transform: translateY(-40px);
}

.form-control-borderless {
	border: none;
}

.form-control-borderless:hover, .form-control-borderless:active,
	.form-control-borderless:focus {
	border: none;
	outline: none;
	box-shadow: none;
}

.viewCount {
	display: flex;
	justify-content: flex-start;
}

.viewCount div {
	padding: 20px;
	margin-right: 20px;
}
</style>


<div class="outer">
	<div class="jb-text">
		<p style="font-size: xx-large; color: white;">부산에 가면</p>
	</div>
</div>


<br />


<div class="container">
	<br />

	<div class="row justify-content-center">
		<div class="col-12 col-md-10 col-lg-8">
			<form class="card card-sm" action="/busanWeb/board?cmd=search">
				<input type="hidden" name="cmd" value="search" /> <input
					type="hidden" name="page" value="0" />
				<div class="card-body row no-gutters align-items-center">
					<div class="col-auto">
						<i class="fas fa-search h4 text-body"></i>
					</div>
					<!--end of col-->
					<div class="col">
						<input
							class="form-control form-control-lg form-control-borderless"
							name="keyword" type="search" placeholder="가보고싶은 명소를 검색하세요">
					</div>
					<!--end of col-->
					<div class="col-auto">
						<button class="btn btn-lg btn-success">검색</button>
					</div>
					<!--end of col-->
				</div>
			</form>
		</div>
		<!--end of col-->
	</div>
</div>
<br />
<br />
<!-- 검색 바 end -->

<div align="right" style="margin-right: 80px">
	<a href="" class="text-dark">조회순</a> <a href="" class="text-dark">리뷰순</a>
</div>

<hr>


<div class="container-fluid">
	<div class="px-lg-5">

		<div class="row">

			<c:forEach var="sightlist" items="${sightlist}" varStatus="status">
				<!-- Gallery item -->
				<div class="card-box col-xl-3 col-lg-4 col-md-6 mb-4">
					<div class="bg-white rounded shadow-sm">
						<img src="${sightlist.mainImg }" alt=""
							class="img-fluid card-img-top">
						<div class="p-4">
							<h5>
								<a href="/busanWeb/board?cmd=detail&id=${sightlist.id}"
									class="text-dark">${sightlist.title }</a>
							</h5>
							<p class="small text-muted mb-0">${sightlist.subTitle }</p>
							<!-- <div
								class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
								<p class="small mb-0">
									<i class="fa fa-picture-o mr-2"></i><span
										class="font-weight-bold">JPG</span>
								</p>
								<div
									class="badge badge-danger px-3 rounded-pill font-weight-normal">New</div>
							</div> -->
						</div>

						<div class="viewCount">
							<div class="readView">
								<img src="images/read.png"> : ${sightlist.readCount }
							</div>
							<div class="likeView">
								<img src="images/like.png"> : ${sightlist.likeCount }
							</div>
							<div class="replyView">
								<img src="images/reply.png"> : ${sightlist.reviewCount }
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<!-- End -->

		</div>

		<ul class="pagination justify-content-center">

			<c:choose>

				<c:when test="${preEnd eq true}">
					<li class="page-item disabled"><a class="page-link"
						href="javascript:void(0)">Previous</a></li>
				</c:when>

				<c:otherwise>

					<c:choose>

						<c:when test="${searchOn eq true}">
							<li class="page-item"><a class="page-link"
								href="/busanWeb/board?cmd=sightForm2&page=${param.page-1}&keyword=${param.keyword}">Previous</a></li>
						</c:when>

						<c:otherwise>
							<li class="page-item"><a class="page-link"
								href="/busanWeb/board?cmd=sightForm2&page=${param.page-1}">Previous</a></li>
						</c:otherwise>
					</c:choose>

				</c:otherwise>
			</c:choose>

			<c:choose>
				<c:when test="${nextEnd eq true}">

					<li class="page-item disabled"><a class="page-link"
						href="javascript:void(0)">Next</a></li>
				</c:when>

				<c:otherwise>

					<c:choose>
						<c:when test="${searchOn eq true}">

							<li class="page-item"><a class="page-link"
								href="/busanWeb/board?cmd=sightForm2&page=${param.page+1}&keyword=${param.keyword}">Next</a></li>
						</c:when>

						<c:otherwise>

							<li class="page-item"><a class="page-link"
								href="/busanWeb/board?cmd=sightForm2&page=${param.page+1}">Next</a></li>
						</c:otherwise>
					</c:choose>

				</c:otherwise>
			</c:choose>
		</ul>



		<div class="py-5 text-right">
			<a href="#" class="btn btn-dark px-5 py-3 text-uppercase">Show me
				more</a>
		</div>
	</div>
</div>



<script src="../search/js/extention/choices.js"></script>
<script>
	const choices = new Choices('[data-trigger]', {
		searchEnabled : false
	});
</script>
</body>

<%@ include file="../layout/footer.jsp"%>