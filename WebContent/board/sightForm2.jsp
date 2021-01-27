<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<style>
.card-box:hover {
	transform: translateY(-40px);
}

/*===============================
=            Choices            =
===============================*/
.choices {
	position: relative;
	margin-bottom: 24px;
	font-size: 16px;
}

.choices:focus {
	outline: none;
}

.choices:last-child {
	margin-bottom: 0;
}

.choices.is-disabled .choices__inner, .choices.is-disabled .choices__input
	{
	background-color: #EAEAEA;
	cursor: not-allowed;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.choices.is-disabled .choices__item {
	cursor: not-allowed;
}

.choices[data-type*="select-one"] {
	cursor: pointer;
}

.choices[data-type*="select-one"] .choices__inner {
	padding-bottom: 7.5px;
}

.choices[data-type*="select-one"] .choices__input {
	display: block;
	width: 100%;
	padding: 10px;
	border-bottom: 1px solid #DDDDDD;
	background-color: #FFFFFF;
	margin: 0;
}

.choices[data-type*="select-one"] .choices__button {
	background-image: url("../../icons/cross-inverse.svg");
	padding: 0;
	background-size: 8px;
	height: 100%;
	position: absolute;
	top: 50%;
	right: 0;
	margin-top: -10px;
	margin-right: 25px;
	height: 20px;
	width: 20px;
	border-radius: 10em;
	opacity: .5;
}

.choices[data-type*="select-one"] .choices__button:hover, .choices[data-type*="select-one"] .choices__button:focus
	{
	opacity: 1;
}

.choices[data-type*="select-one"] .choices__button:focus {
	box-shadow: 0px 0px 0px 2px #00BCD4;
}

.choices[data-type*="select-one"]:after {
	content: "";
	height: 0;
	width: 0;
	border-style: solid;
	border-color: #333333 transparent transparent transparent;
	border-width: 5px;
	position: absolute;
	right: 11.5px;
	top: 50%;
	margin-top: -2.5px;
	pointer-events: none;
}

.choices[data-type*="select-one"].is-open:after {
	border-color: transparent transparent #333333 transparent;
	margin-top: -7.5px;
}

.choices[data-type*="select-one"][dir="rtl"]:after {
	left: 11.5px;
	right: auto;
}

.choices[data-type*="select-one"][dir="rtl"] .choices__button {
	right: auto;
	left: 0;
	margin-left: 25px;
	margin-right: 0;
}

.choices[data-type*="select-multiple"] .choices__inner, .choices[data-type*="text"] .choices__inner
	{
	cursor: text;
}

.choices[data-type*="select-multiple"] .choices__button, .choices[data-type*="text"] .choices__button
	{
	position: relative;
	display: inline-block;
	margin-top: 0;
	margin-right: -4px;
	margin-bottom: 0;
	margin-left: 8px;
	padding-left: 16px;
	border-left: 1px solid #008fa1;
	background-image: url("../../icons/cross.svg");
	background-size: 8px;
	width: 8px;
	line-height: 1;
	opacity: .75;
}

.choices[data-type*="select-multiple"] .choices__button:hover, .choices[data-type*="select-multiple"] .choices__button:focus,
	.choices[data-type*="text"] .choices__button:hover, .choices[data-type*="text"] .choices__button:focus
	{
	opacity: 1;
}

.choices__inner {
	display: inline-block;
	vertical-align: top;
	width: 100%;
	background-color: #f9f9f9;
	padding: 7.5px 7.5px 3.75px;
	border: 1px solid #DDDDDD;
	border-radius: 2.5px;
	font-size: 14px;
	min-height: 44px;
	overflow: hidden;
}

.is-focused .choices__inner, .is-open .choices__inner {
	border-color: #b7b7b7;
}

.is-open .choices__inner {
	border-radius: 2.5px 2.5px 0 0;
}

.is-flipped.is-open .choices__inner {
	border-radius: 0 0 2.5px 2.5px;
}

.choices__list {
	margin: 0;
	padding-left: 0;
	list-style: none;
}

.choices__list--single {
	display: inline-block;
	padding: 4px 16px 4px 4px;
	width: 100%;
}

[dir="rtl"] .choices__list--single {
	padding-right: 4px;
	padding-left: 16px;
}

.choices__list--single .choices__item {
	width: 100%;
}

.choices__list--multiple {
	display: inline;
}

.choices__list--multiple .choices__item {
	display: inline-block;
	vertical-align: middle;
	border-radius: 20px;
	padding: 4px 10px;
	font-size: 12px;
	font-weight: 500;
	margin-right: 3.75px;
	margin-bottom: 3.75px;
	background-color: #00BCD4;
	border: 1px solid #00a5bb;
	color: #FFFFFF;
	word-break: break-all;
}

.choices__list--multiple .choices__item[data-deletable] {
	padding-right: 5px;
}

[dir="rtl"] .choices__list--multiple .choices__item {
	margin-right: 0;
	margin-left: 3.75px;
}

.choices__list--multiple .choices__item.is-highlighted {
	background-color: #00a5bb;
	border: 1px solid #008fa1;
}

.is-disabled .choices__list--multiple .choices__item {
	background-color: #aaaaaa;
	border: 1px solid #919191;
}

.choices__list--dropdown {
	display: none;
	z-index: 1;
	position: absolute;
	width: 100%;
	background-color: #FFFFFF;
	border: 1px solid #DDDDDD;
	top: 100%;
	margin-top: -1px;
	border-bottom-left-radius: 2.5px;
	border-bottom-right-radius: 2.5px;
	overflow: hidden;
	word-break: break-all;
}

.choices__list--dropdown.is-active {
	display: block;
}

.is-open .choices__list--dropdown {
	border-color: #b7b7b7;
}

.is-flipped .choices__list--dropdown {
	top: auto;
	bottom: 100%;
	margin-top: 0;
	margin-bottom: -1px;
	border-radius: .25rem .25rem 0 0;
}

.choices__list--dropdown .choices__list {
	position: relative;
	max-height: 300px;
	overflow: auto;
	-webkit-overflow-scrolling: touch;
	will-change: scroll-position;
}

.choices__list--dropdown .choices__item {
	position: relative;
	padding: 10px;
	font-size: 14px;
}

[dir="rtl"] .choices__list--dropdown .choices__item {
	text-align: right;
}

@media ( min-width : 640px) {
	.choices__list--dropdown .choices__item--selectable {
		padding-right: 100px;
	}
	.choices__list--dropdown .choices__item--selectable:after {
		content: attr(data-select-text);
		font-size: 12px;
		opacity: 0;
		position: absolute;
		right: 10px;
		top: 50%;
		transform: translateY(-50%);
	}
	[dir="rtl"] .choices__list--dropdown .choices__item--selectable {
		text-align: right;
		padding-left: 100px;
		padding-right: 10px;
	}
	[dir="rtl"] .choices__list--dropdown .choices__item--selectable:after {
		right: auto;
		left: 10px;
	}
}

.choices__list--dropdown .choices__item--selectable.is-highlighted {
	background-color: #f2f2f2;
}

.choices__list--dropdown .choices__item--selectable.is-highlighted:after
	{
	opacity: .5;
}

.choices__item {
	cursor: default;
}

.choices__item--selectable {
	cursor: pointer;
}

.choices__item--disabled {
	cursor: not-allowed;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	opacity: .5;
}

.choices__heading {
	font-weight: 600;
	font-size: 12px;
	padding: 10px;
	border-bottom: 1px solid #f7f7f7;
	color: gray;
}

.choices__button {
	text-indent: -9999px;
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border: 0;
	background-color: transparent;
	background-repeat: no-repeat;
	background-position: center;
	cursor: pointer;
}

.choices__button:focus {
	outline: none;
}

.choices__input {
	display: inline-block;
	vertical-align: baseline;
	background-color: #f9f9f9;
	font-size: 14px;
	margin-bottom: 5px;
	border: 0;
	border-radius: 0;
	max-width: 100%;
	padding: 4px 0 4px 2px;
}

.choices__input:focus {
	outline: 0;
}

[dir="rtl"] .choices__input {
	padding-right: 2px;
	padding-left: 0;
}

.choices__placeholder {
	opacity: .5;
}

* {
	box-sizing: border-box;
}

.s003 {
	min-height: 20vh;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-pack: center;
	justify-content: center;
	-ms-flex-align: center;
	align-items: center;
	font-family: 'Poppins', sans-serif;
	background-color: #ffffff;
	background-size: cover;
	background-position: center center;
	padding: 0px;
}

.s003 form {
	width: 100%;
	max-width: 790px;
	margin-bottom: 0;
}

.s003 form .inner-form {
	background: #fff;
	display: -ms-flexbox;
	display: flex;
	width: 100%;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-ms-flex-align: center;
	align-items: center;
	box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
	border-radius: 3px;
}

.s003 form .inner-form .input-field {
	height: 68px;
}

.s003 form .inner-form .input-field input {
	height: 100%;
	background: transparent;
	border: 0;
	display: block;
	width: 100%;
	padding: 10px 32px;
	font-size: 16px;
	color: #555;
}

.s003 form .inner-form .input-field input.placeholder {
	color: #888;
	font-size: 16px;
}

.s003 form .inner-form .input-field input:-moz-placeholder {
	color: #888;
	font-size: 16px;
}

.s003 form .inner-form .input-field input::-webkit-input-placeholder {
	color: #888;
	font-size: 16px;
}

.s003 form .inner-form .input-field input:hover, .s003 form .inner-form .input-field input:focus
	{
	box-shadow: none;
	outline: 0;
	border-color: #fff;
}

.s003 form .inner-form .input-field.first-wrap {
	width: 200px;
	border-right: 1px solid rgba(0, 0, 0, 0.1);
}

.s003 form .inner-form .input-field.first-wrap .choices__inner {
	background: transparent;
	border-radius: 0;
	border: 0;
	height: 100%;
	color: #fff;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-align: center;
	align-items: center;
	padding: 10px 30px;
}

.s003 form .inner-form .input-field.first-wrap .choices__inner .choices__list.choices__list--single
	{
	display: -ms-flexbox;
	display: flex;
	padding: 0;
	-ms-flex-align: center;
	align-items: center;
	height: 100%;
}

.s003 form .inner-form .input-field.first-wrap .choices__inner .choices__item.choices__item--selectable.choices__placeholder
	{
	display: -ms-flexbox;
	display: flex;
	-ms-flex-align: center;
	align-items: center;
	height: 100%;
	opacity: 1;
	color: #888;
}

.s003 form .inner-form .input-field.first-wrap .choices__inner .choices__list--single .choices__item
	{
	display: -ms-flexbox;
	display: flex;
	-ms-flex-align: center;
	align-items: center;
	height: 100%;
	color: #555;
}

.s003 form .inner-form .input-field.first-wrap .choices[data-type*="select-one"]:after
	{
	right: 30px;
	border-color: #e5e5e5 transparent transparent transparent;
}

.s003 form .inner-form .input-field.first-wrap .choices__list.choices__list--dropdown
	{
	border: 0;
	background: #fff;
	padding: 20px 30px;
	margin-top: 2px;
	border-radius: 4px;
	box-shadow: 0px 8px 20px 0px rgba(0, 0, 0, 0.15);
}

.s003 form .inner-form .input-field.first-wrap .choices__list.choices__list--dropdown .choices__item--selectable
	{
	padding-right: 0;
}

.s003 form .inner-form .input-field.first-wrap .choices__list--dropdown .choices__item--selectable.is-highlighted
	{
	background: #fff;
	color: #63c76a;
}

.s003 form .inner-form .input-field.first-wrap .choices__list--dropdown .choices__item
	{
	color: #555;
	min-height: 24px;
}

.s003 form .inner-form .input-field.second-wrap {
	-ms-flex-positive: 1;
	flex-grow: 1;
}

.s003 form .inner-form .input-field.third-wrap {
	width: 74px;
}

.s003 form .inner-form .input-field.third-wrap .btn-search {
	height: 100%;
	width: 100%;
	white-space: nowrap;
	color: #fff;
	border: 0;
	cursor: pointer;
	background: #000000;
	transition: all .2s ease-out, color .2s ease-out;
}

.s003 form .inner-form .input-field.third-wrap .btn-search svg {
	width: 16px;
}

.s003 form .inner-form .input-field.third-wrap .btn-search:hover {
	background: #50c058;
}

.s003 form .inner-form .input-field.third-wrap .btn-search:focus {
	outline: 0;
	box-shadow: none;
}

@media screen and (max-width: 992px) {
	.s003 form .inner-form .input-field {
		height: 50px;
	}
}

@media screen and (max-width: 767px) {
	.s003 form .inner-form {
		-ms-flex-wrap: wrap;
		flex-wrap: wrap;
		padding: 20px;
	}
	.s003 form .inner-form .input-field {
		margin-bottom: 20px;
		border-bottom: 1px solid rgba(0, 0, 0, 0.1);
	}
	.s003 form .inner-form .input-field input {
		padding: 10px 15px;
	}
	.s003 form .inner-form .input-field.first-wrap {
		width: 100%;
		border-right: 0;
	}
	.s003 form .inner-form .input-field.first-wrap .choices__inner {
		padding: 10px 15px;
	}
	.s003 form .inner-form .input-field.first-wrap .choices[data-type*="select-one"]:after
		{
		right: 11.5px;
		border-color: #e5e5e5 transparent transparent transparent;
	}
	.s003 form .inner-form .input-field.second-wrap {
		width: 100%;
		margin-bottom: 30px;
	}
	.s003 form .inner-form .input-field.second-wrap input {
		border: 1px solid rgba(255, 255, 255, 0.3);
	}
	.s003 form .inner-form .input-field.third-wrap {
		margin-bottom: 0;
		width: 100%;
	}
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
						<svg class="svg-inline--fa fa-search fa-w-16" aria-hidden="true"
							data-prefix="fas" data-icon="search" role="img"
							xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                <path fill="currentColor"
								d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path>
              </svg>
					</button>
				</div>
			</div>
		</form>
	</div>
</div>
<!-- 검색 바 end -->

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
							<div
								class="d-flex align-items-center justify-content-between rounded-pill bg-light px-3 py-2 mt-4">
								<p class="small mb-0">
									<i class="fa fa-picture-o mr-2"></i><span
										class="font-weight-bold">JPG</span>
								</p>
								<div
									class="badge badge-danger px-3 rounded-pill font-weight-normal">New</div>
							</div>
						</div>

						<div class="viewCount">
							<div class="readView">
								<img src="images/read.png"> : 0
							</div>
							<div class="likeView">
								<img src="images/like.png"> : 0
							</div>
							<div class="replyView">
								<img src="images/reply.png"> : 0
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
		searchEnabled : false,
		itemSelectText : '',
	});
</script>
</body>

<%@ include file="../layout/footer.jsp"%>