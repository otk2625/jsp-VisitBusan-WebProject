<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<Style>
.login-body{
    margin: 0;
    padding: 0;
    background:#ffffff;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
   

}

.login-box{
    width: 320px;
    height: 300px;
    background: #ffffff;
    padding: 60px 30px;
    border-radius: 5px;
    text-align: center;
    border: 2px solid #6FD653;
    -webkit-box-shadow: 10px 10px 5px -4px rgba(0,0,0,0.75);
    -moz-box-shadow: 10px 10px 5px -4px rgba(0,0,0,0.75);
    box-shadow: 10px 10px 5px -4px rgba(0,0,0,0.75);

}

.login-box h1{
    text-transform: uppercase;
    font-weight: 500;
    color: #00BCD4;
}

.login-box input[type="text"],
.login-box input[type="password"]{
    width: 60%;
    margin-bottom: 20px;
}

.login-box input[type="text"],
.login-box input[type="password"]{
    border-radius: 30px;
    background: transparent;
    border: none;
    outline: none;
    border: 2px solid #00BCD4;
    font-size: 13px;
    height: 40px;
    text-align: center;
    transition: 0.27s;
}
.login-box input[type="text"]:focus,
.login-box input[type="password"]:focus{
width: 80%;
border-color:#6fd653;
}

.login-box input[type="submit"]{
    width: 40%;
    border: none;
    outline: none;
    background: #156DA9;
    padding: 10px 0;
    border-radius: 30px;
    color: #ffffff;
    font-weight: 500;
    text-transform: uppercase;
    cursor: pointer;
    margin-bottom: 20px;
}

.login-box input[type="submit"]:hover{
    background:#6FD653;
   transition: .2s;
}

.login-box input[type="submit"]:focus{
    transform: scaleX(1.1);
}

.login-box a {
    text-decoration: none;
    font-size: 12px;
    color: #00bcd4;
}

.login-box a:hover{
    color: #6FD653;
}
</Style>

<div class="outer">

	<div class="jb-text">
		<p style="font-size: xx-large;  color: white;">부산에 가면</p>
	</div>
</div>

<hr>

<div class="login-body">
<div class="login-box">
        <h1>login</h1>
        <form action="/busanWeb/user?cmd=login" method="post">
            <input type="text" name="username" id="username" placeholder="Username">
            <input type="password" name="password" placeholder="Password">
            <input type="submit" value="Log in">
        </form>
        <a href="/busanWeb/user?cmd=joinForm">Sign Up</a>
    </div>
</div>
	
<%@ include file="../layout/footer.jsp"%>