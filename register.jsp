<%--
  Created by IntelliJ IDEA.
  User: qingh
  Date: 2020/7/7
  Time: 13:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        #wrap {
            height: 719px;
            width: 100;
            background-image: url(4.jpg);
            background-repeat: no-repeat;
            background-position: center center;
            position: relative;
            left: 1200;
        }
        #head {
            height: 120px;
            width: 100;
            background-color:burlywood;
            text-align: center;
            position: relative;

        }
        #foot {
            width: 100;
            height: 126px;
            background-color: #burlywood;
            position: relative;
        }
        #wrap .logGet {
            height: 408px;
            width: 368px;
            position: absolute;
            background-color:burlywood;
            top: 20%;
            right: 15%;
        }
        .logC a button {
            width: 100%;
            height: 45px;
            background-color: #mediumslateblue;
            border: none;
            color: white;
            font-size: 18px;
        }
        .logGet .logD.logDtip .p1 {
            display: inline-block;
            font-size: 28px;
            margin-top: 30px;
            width: 86%;
        }
        #wrap .logGet .logD.logDtip {
            width: 86%;
            margin-bottom: 60px;
            margin-top: 0px;
            margin-right: auto;
            margin-left: auto;
        }
        .logGet .lgD img {
            position: absolute;
            top: 12px;
            left: 8px;
        }
        .logGet .lgD input {
            width: 100%;
            height: 42px;
            text-indent: 2.5rem;
        }
        #wrap .logGet .lgD {
            width: 86%;
            position: relative;
            margin-bottom: 30px;
            margin-top: 30px;
            margin-right: auto;
            margin-left: auto;
        }
        #wrap .logGet .logC {
            width: 86%;
            margin-top: 0px;
            margin-right: auto;
            margin-bottom: 0px;
            margin-left: auto;
        }


        .title {
            font-family: "宋体";
            color:darkcyan;
            position: absolute;
            top: 50%;
            left: 700;
            transform: translate(-50%, -50%);
            font-size: 36px;
            height: 40px;
            width: 30%;
        }

        .copyright {
            font-family: "宋体";
            color: #FFFFFF;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);  /* 使用css3的transform来实现 */
            height: 60px;
            width: 40%;
            text-align:center;
        }


        #foot .copyright .img {
            width: 100%;
            height: 24px;
            position: relative;
        }
        .copyright .img .icon {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-left: 22px;
            vertical-align: middle;
            background-image: url(%E7%94%B5%E5%AD%90%E9%82%AE%E4%BB%B6.png);
            background-repeat: no-repeat;
            vertical-align: middle;
            margin-right: 5px;
        }

        .copyright .img .icon1 {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-left: 22px;
            vertical-align: middle;
            background-image: url(%E5%9C%B0%E5%9D%80.png);
            background-repeat: no-repeat;
            vertical-align: middle;
            margin-right: 5px;
        }
        .copyright .img .icon2 {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-left: 22px;
            vertical-align: middle;
            background-image: url(%E8%81%94%E7%B3%BB%E6%96%B9%E5%BC%8F.png);
            background-repeat: no-repeat;
            vertical-align: middle;
            margin-right: 5px;
        }
        #foot .copyright p {
            height: 24px;
            width: 100%;
        }
    </style>
    <style type="text/css">
        html{height:100%;}
        body{min-height:100%;margin:0;padding:0;position:relative;}

        .footer{position:absolute;bottom:0;width:100%;height:100px;background-color: #ffc0cb;}
    </style>
    <style>
	button {background-color: #ff7701;}button:hover {background-color: #3366CC;}
	</style>
</head>
<body>
<script type="text/javascript">

    function check(form) {
        var id=document.getElementsByName("identity");
        if (id[0].checked){
            form.action="AddOperator";
            form.submit();
        }
        else{
            form.action="AddUser";
            form.submit();
        }
    }


    function userRegister(
    ) {
        window.location="register.jsp";
    }

</script>
<%
    String message = (String)request.getAttribute("message");         // 获取错误属性
    System.out.println("message:"+message);
    if(message!=null&&message.equals("successful")) {
%>
    <script type="text/javascript" language="javascript">
        alert("register successful");                                            // 弹出错误信息
        window.location='login.jsp' ;                            // 跳转到登录界面
    </script>
<%
    }
    else if (message!=null&&message.equals("wrong")){
%>
    <script type="text/javascript" language="JavaScript">
        alert("register wrong,name had been used")
        window.location='register.jsp';
    </script>
<%
    }
%>
<div class="header" id="head">
    <div class="title">cafe</div>

</div>
<form method="post" name="form" action="" >
    <div class="wrap" id="wrap">
        <div class="logGet">
            <!-- 头部提示信息 -->
            <div class="logD logDtip">
                <p class="p1">注册</p>
            </div>
            <!-- 输入框 -->
            <div class="lgD">
                <img src="img/logName.png" width="20" height="20" alt=""/>
                <input type="text"
                       placeholder="输入用户名" name="name" >
            </div>
            <div class="lgD">
                <img src="img/logPwd.png" width="20" height="20" alt=""/>
                <input type="password"
                       placeholder="输入用户密码" name="password" >
            </div>
            <div align="center">

                <input type="radio" name="identity"  >管理员
                <input type="radio" name="identity" checked="checked">用户

                <br>
            </div>

            <div class="logC">
                <a style="color: red"><button onclick="check(this.form)">注 册</button></a>
            </div>

        </div>
    </div>
</form>

<div class="footer" style="background-color: burlywood">
    <div>
        <li>版权所有：</li>
        <li>地址</li>
        <li>电话：</li>
        <li>邮箱：</li>

    </div>
</div>

<!--<form action="AddUser" method="get">
    <div style="text-align: center;">用户注册</div>
    <div style="text-align: center;">___________________________________</div>
    <div style="text-align: center;">Name:<input type="text" name=userName><br></div>
    <div style="text-align: center;">Password:<input type="password"  name=password><br></div>
    <div style="text-align: center;"><input type="submit" value="注册" onclick="return check(this.form)" ></div>
</form>-->
</body>
</html>
