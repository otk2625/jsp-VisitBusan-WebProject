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
				<img src="images/용두산.jpg" class="d-block w-100">
				<div class="carousel-caption d-none d-md-block">
					<h5>누가봐도 용두산 ㅇㅈ?</h5>
					<p>아무리봐도 용두산이지롱~</p>
					<div class="detail-btn">
						<button>자세히 보기</button>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="images/찐광안리.jpg" class="d-block w-100">
				<div class="carousel-caption d-none d-md-block">
					<h5>이게 찐 광안리지</h5>
					<p>광안리 가고 싶다... 데이트하러 가야하는데</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="images/찐막해운대.jpg" class="d-block w-100">
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

    
<div>
 <div class="s003">

 
      <form>
        <div class="inner-form">

          <div class="input-field first-wrap">

            <div class="input-select">
              <select data-trigger="" name="choices-single-defaul">
                <option placeholder="">카테고리</option>
                <option>자연</option>
                <option>역사</option>
                <option>문화</option>
                <option>공원</option>
              </select>
            </div>
          </div>
          <div class="input-field second-wrap">
            <input id="search" type="text" placeholder="Enter Keywords?" />
          </div>
          <div class="input-field third-wrap">
            <button class="btn-search" type="button">
              <svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true" data-prefix="fas" data-icon="search" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                <path fill="currentColor" d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path>
              </svg>
            </button>
          </div>
        </div>
      </form>
    </div>
    </div>
    <!-- 검색 바 end -->
    
    <hr>
    <main id="main">
		<!-- ======= Blog Grid ======= -->
		<div id="journal-blog" class="text-left  paddsections">

			<div class="container">
				<div class="section-title text-center">
					<h2>명소</h2>
				</div>
			</div>

			<div class="container">
				<div class="journal-block">
					<div class="row">

						<div class="col-lg-4 col-md-6">
							<div class="journal-info mb-30">

								<a href="index.jsp"><img
									src="images/용두산.jpg" class="img-responsive"
									alt="img"></a>

								<div class="journal-txt">

									<h4>
										<a href="blog-single.html">SO LETS MAKE THE MOST IS
											BEAUTIFUL</a>
									</h4>
									<p class="separator">To an English person, it will seem
										like simplified English</p>

								</div>

							</div>
						</div>

						<div class="col-lg-4 col-md-6">
							<div class="journal-info mb-30">

								<a href="blog-single.html"><img
									src="images/용두산.jpg" class="img-responsive"
									alt="img"></a>

								<div class="journal-txt">

									<h4>
										<a href="blog-single.html">WE'RE GONA MAKE DREAMS COMES</a>
									</h4>
									<p class="separator">To an English person, it will seem
										like simplified English</p>

								</div>

							</div>
						</div>

						<div class="col-lg-4 col-md-6">
							<div class="journal-info mb-30">

								<a href="blog-single.html"><img
									src="images/용두산.jpg" class="img-responsive"
									alt="img"></a>

								<div class="journal-txt">

									<h4>
										<a href="blog-single.html">NEW LIFE CIVILIZATIONS TO
											BOLDLY</a>
									</h4>
									<p class="separator">To an English person, it will seem
										like simplified English</p>

								</div>

							</div>
						</div>



					</div>
				</div>
			</div>
		</div>
		<!-- End Blog Grid -->

	</main>
	<!-- End #main -->
    
    <%@ include file="../layout/footer.jsp"%>
    
	<script src="../search/js/extention/choices.js"></script>
    <script>
      const choices = new Choices('[data-trigger]',
      {
        searchEnabled: false,
        itemSelectText: '',
      });

    </script>
</body>
</html>