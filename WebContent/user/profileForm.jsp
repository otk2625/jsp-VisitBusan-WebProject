<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>


<Style>



.divider {
  height: 20px;
  display: block;
}

/* ========================================================================
 * FORM MISC
 * ======================================================================== */
.input-group-addon {
  -moz-border-radius: 0px;
  -webkit-border-radius: 0px;
  border-radius: 0px;
  min-width: 39px;
}
.input-group-addon .ckbox, .input-group-addon .rdio {
  position: absolute;
  top: 4px;
  left: 10px;
}

.input-group-lg > .form-control, .input-group-lg > .input-group-addon, .input-group-lg > .input-group-btn > .btn, .input-group-sm > .form-control, .input-group-sm > .input-group-addon, .input-group-sm > .input-group-btn > .btn, .input-group-xs > .form-control, .input-group-xs > .input-group-addon, .input-group-xs > .input-group-btn > .btn {
  -moz-border-radius: 0px;
  -webkit-border-radius: 0px;
  border-radius: 0px;
}

.input-sm, .form-group-sm .form-control {
  -moz-border-radius: 0px;
  -webkit-border-radius: 0px;
  border-radius: 0px;
}

.form-control {
  -moz-border-radius: 0px;
  -webkit-border-radius: 0px;
  border-radius: 0px;
  -moz-box-shadow: none;
  -webkit-box-shadow: none;
  box-shadow: none;
}

@media (max-width: 640px) {
  .form-inner-all [class*="col-"]:last-child .form-control {
    margin-top: 15px;
  }
}


/* ========================================================================
 * PROFILE
 * ======================================================================== */
.profile-cover {
  width: 100%;
}
.profile-cover .cover {
  position: relative;
  border: 10px solid #FFF;
}
.profile-cover .cover .inner-cover {
  overflow: hidden;
  height: auto;
}
.profile-cover .cover .inner-cover img {
  border: 1px solid transparent;
  text-align: center;
  width: 100%;
}
.profile-cover .cover .inner-cover .cover-menu-mobile {
  position: absolute;
  top: 10px;
  right: 10px;
}
.profile-cover .cover .inner-cover .cover-menu-mobile button i {
  font-size: 17px;
}
.profile-cover .cover ul.cover-menu {
  padding-left: 150px;
  position: absolute;
  overflow: hidden;
  left: 1px;
  float: left;
  bottom: 0px;
  width: 100%;
  margin: 0px;
  background: none repeat scroll 0% 0% rgba(0, 0, 0, 0.24);
}
.profile-cover .cover ul.cover-menu li {
  display: block;
  float: left;
  margin-right: 0px;
  padding: 0px 10px;
  line-height: 40px;
  height: 40px;
  -moz-transition: all 0.3s;
  -o-transition: all 0.3s;
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
}
.profile-cover .cover ul.cover-menu li:hover {
  background-color: rgba(0, 0, 0, 0.44);
}
.profile-cover .cover ul.cover-menu li.active {
  background-color: rgba(0, 0, 0, 0.64);
}
.profile-cover .cover ul.cover-menu li a {
  color: #FFF;
  font-weight: bold;
  display: block;
  height: 40px;
  line-height: 40px;
  text-decoration: none;
}
.profile-cover .cover ul.cover-menu li a i {
  font-size: 18px;
}
.profile-cover .profile-body {
  margin: 0px auto 10px;
  position: relative;
}
.profile-cover .profile-timeline {
  padding: 15px;
}
.img-post{
    width:30px;
    height:30px;
}
.img-post2{
    width:50px;
    height:50px;
}

.panel {
  margin-bottom: 0px;
  border-radius: 0px;
}

.caixinha1{
  width:100%;
  height:100%;
  background-colot:#FFFFFF;
  color:#000000;
}
</Style>

<div class="outerProfile">

	<div class="jb-text">
		<p style="font-size: xx-large;  color: white;">나의 여행</p>
	</div>
</div>

<hr>

<div class="container bootstrap snippets mb-5">
<div class="row">
    <div class="col-lg-3 col-md-3 col-sm-4">
        <div class="panel rounded shadow">
            <div class="panel-body">
                <div class="inner-all">
                    <ul class="list-unstyled">
                        <li class="text-center">
                            <img data-no-retina="" class="img-circle img-responsive img-bordered-primary img-post2 mt-2" src="https://image.flaticon.com/icons/svg/1177/1177568.svg" alt="John Doe">
                        </li>
                        <li class="text-center">
                            <h4 class="text-capitalize">${userProfile.username }</h4>
                            <p class="text-muted text-capitalize">${userProfile.userRole}</p>
                        </li>
                        <li>
                            <a href="" class="btn btn-success text-center btn-block">PRO Account</a>
                        </li>
                        <li><br></li>
                        <li>
                            <div class="btn-group-vertical btn-block">
                                <a href="" class="btn btn-default"><i class="fa fa-cog pull-right"></i>정보 수정</a>
                                <a href="" class="btn btn-default"><i class="fa fa-sign-out pull-right"></i>로그아웃</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div><!-- /.panel -->

        <div class="panel panel-theme rounded shadow ">
            <div class="panel-heading">
                <div class="pull-left">
                    <h3 class="panel-title">Contact</h3>
                </div>
                <div class="clearfix"></div>
            </div><!-- /.panel-heading -->
            <div class="panel-body no-padding rounded">
                <ul class="list-group no-margin">
                 
                    <li class="list-group-item"><i class="fa fa-envelope mr-5"></i>${userProfile.email } </li>
                    <li class="list-group-item"><i class="fa fa-phone mr-5"></i> +55 xx xxx xxx</li>
                </ul>
            </div><!-- /.panel-body -->
        </div><!-- /.panel -->

    </div>
    <div class="col-lg-9 col-md-9 col-sm-9">
     <div class="panel rounded shadow">
         <P>안녕</P>
         
        
         </div>
    </div>
    <div class="col-lg-9 col-md-9 col-sm-8"> 
    
    </div>
</div>
</div>


<script>


</script>
	
<%@ include file="../layout/footer.jsp"%>