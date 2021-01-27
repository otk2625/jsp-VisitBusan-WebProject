<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<style>
@import url('https://fonts.googleapis.com/css?family=Abel');

* {padding: 0; margin: 0;}
a {text-decoration: none; color: #666;}
li {list-style: none;}


body {
  background-size: cover;
  font-family: 'Abel', sans-serif;
  font-size: 14px;
  line-height: 1.6em;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
body::before {
  content:'';
  position: fixed; top: 0; left: 0;
  z-index: -1;
  width: 100%; height: 100%;
}
#tab-menu {
  margin-top: 300px;
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
  float: left; width: 200px; text-align: center;
}
#tab-btn li a {

  display: block; color: #2b210e; 
  padding: 15px 20px; 
  font-weight: bold;
}
#tab-btn li.active a {
  border-bottom: 3px solid #2b210e;
  color: #2b210e;
}

#tab-cont {
  width: 100%; 
  background: #fff; padding: 20px; 
  box-sizing: border-box;
  border-radius: 0 0 4px 4px;
}



*, *:after, *:before {
  box-sizing: border-box;
}
body {
  font-family: "Inter", sans-serif;
  background-color: #f2f5f7;
}
.card {
  display: flex;
  flex-direction: column;
  flex-basis: 300px;
  flex-shrink: 0;
  flex-grow: 0;
  max-width: 100%;
  background-color: #FFF;
  box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.15);
  border-radius: 10px;
  overflow: hidden;
  margin: 1rem;
}
.card-img {
  padding-bottom: 56.25%;
  position: relative;
}
.card-img img {
  position: absolute;
  width: 100%;
}
.card-body {
  padding: 1.5rem;
}
.card-title {
  font-size: 1.25rem;
  line-height: 1.33;
  font-weight: 700;
}
.card-title.skeleton {
  min-height: 28px;
  border-radius: 4px;
}
.card-intro {
  margin-top: 0.75rem;
  line-height: 1.5;
}
.card-intro.skeleton {
  min-height: 72px;
  border-radius: 4px;
}
.skeleton {
  background-color: #e2e5e7;
  background-image: linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0));
  background-size: 40px 100%;
  background-repeat: no-repeat;
  background-position: left -40px top 0;
  animation: shine 1s ease infinite;
}
@keyframes shine {
  to {
    background-position: right -40px top 0;
  }
}
.container {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-wrap: wrap;
}




</style>

<div class="outer">
	<div class="jb-text">
		<p style="font-size: xx-large;  color: white;">부산에 가면</p>
	</div>
</div>



<div class="container">
  <!-- code here -->
  <div class="card">
    <div class="card-img skeleton">
      <!-- waiting for img to load from javascript -->
    </div>
    <div class="card-body">
      <h2 class="card-title skeleton">
        <!-- wating for title to load from javascript -->
      </h2>
      <p class="card-intro skeleton">
        <!-- waiting for intro to load from Javascript -->
      </p>
    </div>
  </div>
  <div class="card">
    <div class="card-img">
      <img src="https://assets.codepen.io/285131/uslmOwQpdRRUwr6AmBP6JdzeHjS.jpg" />
    </div>
    <div class="card-body">
      <h2 class="card-title">
        Drive (2011)
      </h2>
      <p class="card-intro">
        Driver is a skilled Hollywood stuntman who moonlights as a getaway driv...
      </p>
    </div>
  </div>
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
  <hr/>
  <div id="tab-cont">

    <div>${detail.ITEMCNTNTS }</div>
    <div>메뉴2</div>
    <div>메뉴3</div>
    <div>메뉴4</div>
    <div>메뉴5</div>
  </div>
</div>
</c:forEach>


<%@ include file="../layout/footer.jsp"%>



<script>
var tabBtn = $("#tab-btn > ul > li");     //각각의 버튼을 변수에 저장
var tabCont = $("#tab-cont > div");       //각각의 콘텐츠를 변수에 저장

//컨텐츠 내용을 숨겨주세요!
tabCont.hide().eq(0).show();

tabBtn.click(function(){
  var target = $(this);         //버튼의 타겟(순서)을 변수에 저장
  var index = target.index();   //버튼의 순서를 변수에 저장
  tabBtn.removeClass("active");    //버튼의 클래스를 삭제
  target.addClass("active");       //타겟의 클래스를 추가
  tabCont.css("display","none");
  tabCont.eq(index).css("display","block");
});
</script>
</body>
</html>