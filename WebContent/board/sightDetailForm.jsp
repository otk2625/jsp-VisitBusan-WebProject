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

@media ( min-width : 576px) {
	.rounded-nav {
		border-radius: 50rem !important;
	}
}

@media ( min-width : 576px) {
	.rounded-nav .nav-link {
		border-radius: 50rem !important;
	}
}

/* With arrow tabs */
.with-arrow .nav-link.active {
	position: relative;
}

.with-arrow .nav-link.active::after {
	content: '';
	border-left: 6px solid transparent;
	border-right: 6px solid transparent;
	border-top: 6px solid #2b90d9;
	position: absolute;
	bottom: -6px;
	left: 50%;
	transform: translateX(-50%);
	display: block;
}



/*
*
* ==========================================
* FOR DEMO PURPOSE
* ==========================================
*
*/
.nav-pills .nav-link {
	color: #555;
}

.text-uppercase {
	letter-spacing: 0.1em;
}


</style>



<!-- <div class="outer w-100">
	<img src="https://visitbusan.net/images/sub/subvisu-01.jpg" alt=""
		class="w-100" style="height: 300px;">
	<p class="topright">부산에 가면</p>
</div> -->

<div class="outer">

	<div class="jb-text">
		<p style="font-size: xx-large;  color: white;">부산에 가면</p>
	</div>
</div>
<section id="nav2">
	<div class="navInner boxing2">
		<div class="left">
			<ul style="list-style: none;">
				<li class="home"><a href="<%=request.getContextPath()%>/board?cmd=main&page=0" title="부산에가면으로 갑니다">부산에가면</a></li>
				<li class="depth2"><a href="<%=request.getContextPath()%>/board?cmd=sightForm2&page=0" title="명소으로 갑니다">명소</a></li>
				<li class="depth2">명소상세보기</li>
			</ul>
		</div>

	</div>
</section>


<div class="container py-5">
	<div class="p-5 bg-white rounded shadow mb-5">
		<img src="images/용두산.jpg" alt="" class="w-100 "> <br />
		<h2 class="font-weight-bold mb-2 font-italic">여기 메인</h2>
		<p class="mb-0 text-small text-muted font-italic">여기 보조</p>

		<!-- Rounded tabs -->
		<br />
		<hr>
		<ul id="myTab" role="tablist"
			class="nav nav-tabs nav-pills flex-column flex-sm-row text-center bg-light border-0 rounded-nav">
			<li class="nav-item flex-sm-fill"><a id="home-tab"
				data-toggle="tab" href="#home" role="tab" aria-controls="home"
				aria-selected="true"
				class="nav-link border-0 text-uppercase font-weight-bold active">상세정보</a>
			</li>
			<li class="nav-item flex-sm-fill"><a id="profile-tab"
				data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
				aria-selected="false"
				class="nav-link border-0 text-uppercase font-weight-bold">이용안내</a></li>
			<li class="nav-item flex-sm-fill"><a id="contact-tab"
				data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
				aria-selected="false"
				class="nav-link border-0 text-uppercase font-weight-bold">리뷰</a></li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<div id="home" role="tabpanel" aria-labelledby="home-tab"
				class="tab-pane fade px-4 py-5 show active">
				<p class="text-muted">상세보기</p>
				<p class="text-muted mb-0">Lorem ipsum dolor sit amet,
					consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
					labore et dolore magna aliqua. Ut enim ad minim veniam, quis
					nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate
					velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
					occaecat cupidatat non proident, sunt in culpa qui officia deserunt
					mollit anim id est laborum.</p>
			</div>
			<div id="profile" role="tabpanel" aria-labelledby="profile-tab"
				class="tab-pane fade px-4 py-5">
				<p class="text-muted">이용안내</p>
				<p class="text-muted mb-0">Lorem ipsum dolor sit amet,
					consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
					labore et dolore magna aliqua. Ut enim ad minim veniam, quis
					nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate
					velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
					occaecat cupidatat non proident, sunt in culpa qui officia deserunt
					mollit anim id est laborum.</p>
			</div>
			<div id="contact" role="tabpanel" aria-labelledby="contact-tab"
				class="tab-pane fade px-4 py-5">
				<p class="text-muted">리뷰</p>
				<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
					adipisicing elit, sed do eiusmod tempor incididunt ut labore et
					dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
					exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate
					velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
					occaecat cupidatat non proident, sunt in culpa qui officia deserunt
					mollit anim id est laborum.</p>
			</div>
		</div>
		<!-- End rounded tabs -->
	</div>

</div>



<script src="../search/js/extention/choices.js"></script>
<script>
	const choices = new Choices('[data-trigger]', {
		searchEnabled : false,
		itemSelectText : '',
	});
</script>
</body>

<%@ include file="../layout/footer.jsp"%>
</html>