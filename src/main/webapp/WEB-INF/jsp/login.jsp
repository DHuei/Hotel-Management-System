<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>注册登录</title>
	<style type="text/css">
	/*背景图*/
	  body{
	  	background-image: url("/static/sucai/beijing.png");
        background-repeat:no-repeat;
        background-size:auto;
       }
       /*导航栏*/
       *{
           margin: 0px;
           padding:0px;
        }
        .topbody{
           width:900px;
           margin: 0 auto;
        }
        .topbar{
           width:100%;
           background-color: #000;
           display: inline-block;
        }

        .topbar li{
           float:left;
        }
        .toplist{
           display: inline-block;
           list-style-type:none;
        }
        .toplist a{
           color:#FFF;
           text-decoration: none;
        }
        .title,.toplist a{
           display:block;
           display: block;
           float: left;
        }
        .toplist a{
           padding:15px 20px 15px 20px;
        }
        .title{
           color:#FFF;
           text-decoration: none;
           padding:15px 30px 15px 30px;
        }
        .logo{
           width: 80px;
           height: 50px;
           float: left;
           position: relative;
           left: 16%;
           padding-top: 6px;
        }
        .content{
        	position: absolute;left:16%;top:20%; 
        }
        .div-b{ 
        	width:1025px;height:500px;padding:5px;
        	filter: alpha(opacity=60);background-color:rgba(255, 255, 255, 0.5)
        }
         .hotel{
          float: left;
          left: 10px;
          position: relative;
          top: 12px;
        }
      
    /*登陆注册*/
  .login-header{
    position: relative;
    left: 250px;
    top: 20px;
  }
  .login-input-box input{
    float: right;
    position: relative;
    right: 150px;
    margin-top: 12px;
    width: 340px;
    height: 40px;
    margin-left: 18px;
    border: 1px solid #dcdcdc;
    border-radius: 4px;
    padding-left: 42px; 
}

.login-button-box button{
    float: right;
    position: relative;
    right: 150px;
    margin-top: 12px;
    background-color: #ff7d0a;
    color: #ffffff;
    font-size: 16px;
    width: 386px;
    height: 40px;
    margin-left: 18px;
    border: 1px solid #ff7d0a;
    border-radius: 4px;

}

    </style>
</head>
<script src="/static/bootstrap/jquery-3.2.1.min.js"></script>
<body>
	
	<!--导航-->
	<div class="nav">
	  <div class="topbar">
	  	<img src="/static/sucai/logo.png" class="logo">
        <div class="topbody"> 
           <a class="title" href="">腾达宾馆</a>
            <ul class="toplist">
             <li><a href="index">首页</a></li>
             <li><a href="roomprice">设施与价格</a></li>
             <li><a href="">会员中心</a></li>
             <li><a href="">帮助</a></li>
             <li><a href="login">登陆</a></li>
             <li><a href="regest">注册</a></li>
            </ul>
       </div>
    </div>
  </div>
	<!--内容-->
	<div class="content">
	   <div class="div-b">
	   	    <img src="/static/sucai/hotel.jpg" width="360px"  class="hotel">
          <div class="login-header">
            <img src="/static/sucai/logo.png">
          </div>
          <form>
            <div class="login-input-box">
               <input type="text" id ="name" placeholder="用户名">
            </div>
            <div class="login-input-box">
                <input type="password"  id="password"  placeholder="密码">
            </div>
          </form>
          <div class="login-button-box">
              <button onclick="login()">登录</button>
          </div>

           <div class="login-button-box">
               <button onclick="managerlogin()">管理员登录</button>
           </div>

          <div class="login-button-box">
               <button>注册</button>
          </div>
   </div>
 </div>

</body>
<script>
function login() {
    ///alert("hello");
    var name = $.trim($('#name').val());
    var password = $.trim($('#password').val());
    $.ajax({
        type:"POST",
        url:"/login/get.action",
        data:{"name":name,"password":password},

        success:function(data){
             if(data.data==null)
                   alert("用户名或密码错误!");
            else {
              window.location.href = "membercenter";
           }

        },
        error:function () {
            alert("请求出错");
        },
        complete:function()
        {
        }
    });
    return false;
}

function managerlogin() {
    var name = $.trim($('#name').val());
    var password = $.trim($('#password').val());
    $.ajax({
        type:"POST",
        url:"/login/getmanage.action",
        data:{"name":name,"password":password},

        success:function(data){
            if(data.data==null)
                alert("用户名或密码错误!");
            else {
                window.location.href = "manage";
            }

        },
        error:function () {
            alert("请求出错");
        },
        complete:function()
        {
        }
    });
    return false;
}
</script>
</html>