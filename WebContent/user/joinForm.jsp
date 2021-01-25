<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<div class="outer">

	<div class="jb-text">
		<p style="font-size: xx-large;  color: white;">부산에 가면</p>
	</div>
</div>

<hr>

<div class="signup-form">
	<form action="/busanWeb/user?cmd=join" method="post" onsubmit="return valid()">
		<h2>회원가입</h2>
		<p>Visit Busan에 온걸 환영합니다.</p>
		<hr>
		<div class="form-group">
			<div class="d-flex justify-content-between">
				<label>Username</label>
				<button type="button" class="btn btn-info mb-2" onClick="usernameCheck()">중복체크</button>
			</div>
			<input type="text" class="form-control"
				name="username" id="username" required="required">
		</div>
			
			<div class="form-group">
				<label>Password</label> <input type="password" class="form-control"
					name="password" required="required">
			</div>
			<div class="form-group">
				<label>Email</label> <input type="email"
					class="form-control" name="email" required="required">
			</div>
			
			<div class="form-group">
				<label>Address</label> <input type="text"
					class="form-control" name="address" required="required">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-info mb-2">회원가입</button>
			</div>
			<p class="small text-center">
				By clicking the Sign Up button <br>
				<a href="#">이용 약관</a> 및 <a href="#">개인 정보 보호 정책</a>
			</p>
		</form>
		<div class="text-center">
			Already have an account? <a href="#">Login here</a>
		</div>
</div>

<script>
	var isChecking = false;
	function valid(){
		if(isChecking == false){
			alert("아이디 중복체크를 해주세요");
		}
		return isChecking;
	}
	function usernameCheck(){
		var username = $("#username").val();
		$.ajax({
			type: "POST",
			url: "/busanWeb/user?cmd=usernameCheck",
			data: username,
			contentType: "text/plain; charset=utf-8",
			dataType: "text" 
		}).done(function(data){
			if(data === 'ok'){ 
				isChecking = false;
				alert('유저네임이 중복되었습니다.')
			}else{
				isChecking = true;
				alert("해당 유저네임을 사용할 수 있습니다.")
			}
		});
	}
</script>

<%@ include file="../layout/footer.jsp"%>