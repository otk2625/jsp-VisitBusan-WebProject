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
  width: 1200px; 
  position: absolute; left: 50%; top: 100px;
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
</style>

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
    <div>메뉴1</div>
    <div>메뉴2</div>
    <div>메뉴3</div>
    <div>메뉴4</div>
    <div>메뉴5</div>
  </div>
</div>

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