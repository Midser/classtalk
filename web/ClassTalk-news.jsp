<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Big_Boss
  Date: 2017/6/1
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="http://localhost:8080/t/js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="http://localhost:8080/t/js/bootstrap.js"></script>
    <link rel="stylesheet" href="http://localhost:8080/t/css/bootstrap.css">
    <link rel="stylesheet" href="http://localhost:8080/t/css/home.css">
    <title>home</title>
</head>
<body>
<style>
    a{
        cursor: pointer;
    }
    body{
        font-size: 18px;
    }
    .input-inline{
        width: 250px;
        display: inline;
    }
</style>
<script language="javascript">
    var mobile_code;
    function get_mobile_code(){
        $.post('http://localhost:8080/t/sms.jsp', {mobile:jQuery.trim($('#mobile').val())},
                function(msg) {
                    alert("信息已发送！")
                    mobile_code=msg;
        });
    }
    function Captcha_validation(input_code) {
        var tab=input_code.nextElementSibling;
        var code=input_code.value;
        var Mcode=Number(mobile_code);
        tab.innerText="ok"
        tab.style.display="";
        if(code==Mcode)
            $("#but").attr("disabled",false);
        else
            tab.innerText="x";

    }
    function confirmPassword(Rpassword) {
        var tab=document.getElementById("span_Rpassword");
        var password=document.getElementById("password");
        tab.innerText="ok";
        tab.style.display="";
        if(Rpassword.value!=password.value||Rpassword.value==""){
            tab.innerText="x";
        }

    }
    function tabshow(input_line) {
        var tab=input_line.nextElementSibling;
        tab.innerText="ok";
        tab.style.display="";
        if(input_line.value==""){
            tab.innerText="x";
        }
    }
    function replicator(input_line) {
        var tab=input_line.nextElementSibling;
        $.ajax({
            type:"post",
            url:"http://localhost:8080/t/act/updata_replicator",
            data:{name:input_line.value},
            async:false,
            success:function (msg) {
                tab.innerText="ok";
                tab.style.display="";
            },
            error:function (msg) {
                tab.innerText="用户已存在";
                tab.style.display="";
            },
        });
        if(input_line.value==""){
            tab.innerText="x";
            tab.style.display="";
        }
    }
</script>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="http://localhost:8080/t/act/news">班级交流</a>
                    </div>
                    <div>
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="http://localhost:8080/t/act/news">新闻</a></li>
                            <li><a href="http://localhost:8080/t/act/messages">通知</a></li>
                            <li><a href="http://localhost:8080/t/act/vote">投票箱</a></li>
                            <li><a href="http://localhost:8080/t/act/talk">留言板</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-6">
            <div id="news-content">
                <s:iterator value="list">
                <h2 style="color: #2aabd2"><s:property value="topic"/></h2><small>@<s:property value="release_time"/> </small>
                <p><s:property value="content"/></p>
                    <!--
                    <div style="margin: 10px;float: right">
                    <a>赞</a><span><s:property value="oo"/></span>
                    <a>踩</a><span><s:property value="xx"/></span>
                </div>
                    -->
                <hr style="margin-top: 50px">
                </s:iterator>
            </div>
        </div>
        <div class="col-lg-6" style="padding: 100px">
            <p style="word-break: break-all">
                物联网14-1班,这里是我们成长的班级，这里是我们快乐的家园，我们在这个家园里互相关怀，互相帮助，生活在这样一个充满爱的大家庭里，我们感到特别温暖！
            </p>
            <p>
                我们在这个家园里健康快乐的成长着，我们在老师的辛勤培育下，在知识海洋里象小船一样扬起理想的风帆，为了明天的彼岸乘风破浪。
            </p>
            <p>
                我们班级发扬刻苦学习助人为乐的精神，经常帮助有困难的同学等......
            </p>
            <a data-toggle="modal" data-target="#myModal">
                <%  String UserName=(String) session.getAttribute("username");
                    String state=(String) session.getAttribute("state");
                    if(UserName!=null) {
                        out.print(UserName + "已登陆,");
                        if("0".equals(state)) out.print("状态正常！");
                        else out.print("您已被禁言！");
                    }
                    else out.print("登陆");
                %>
            </a>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">

            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active">
                        <a href="#login" data-toggle="tab">
                            登陆
                        </a>
                    </li>
                    <li><a href="#register" data-toggle="tab">注册</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="login">
                        <!-- 登陆的界面 -->
                        <div class="container modal-container" style="margin: 40px 0 40px">
                            <div class="row">
                                <div class="col-lg-3">
                                    <form class="form-horizontal" role="form" action="http://localhost:8080/t/act/login" method="post">
                                        <div class="form-group">
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control common-input input-inline"
                                                       placeholder="请输入账号" name="username">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control common-input input-inline"
                                                       placeholder="请输入密码" name="password">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10" style="margin: 0">
                                                <button type="submit" class="btn btn-default modal-btn">登录</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="register">
                        <!-- 注册的界面 -->
                        <div class="container modal-container" style="margin: 40px 0 40px">
                            <div class="row">
                                <div class="col-lg-4">
                                    <form class="form-horizontal" role="form" method="post" action="http://localhost:8080/t/act/register">

                                        <div class="form-group">
                                            <div class="col-sm-10">
                                                <input name="name" type="text" class="form-control common-input input-inline"
                                                       placeholder="请输入账号" onblur="replicator(this)">
                                                <span class="badge" style="display: none">ok</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-sm-10">
                                                <input id="password" name="password" type="password" class="form-control common-input input-inline"
                                                       placeholder="请输入密码" onblur="tabshow(this)">
                                                <span class="badge" style="display: none">ok</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control common-input input-inline"
                                                       placeholder="确认密码" onblur="confirmPassword(this)">
                                                <span id="span_Rpassword" class="badge" style="display: none">ok</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-sm-10">
                                                <input id="mobile" name="mobile" type="text" class="form-control common-input input-inline"
                                                       placeholder="手机号码" onblur="tabshow(this)">
                                                <span class="badge" style="display: none">ok</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control common-input" style="width: 100px;display: inline"
                                                       placeholder="验证码" onblur="Captcha_validation(this)">
                                                <span class="badge" style="display: none">ok</span>
                                                <button type="button" class="btn btn-default modal-btn" style="width: 120px;display: inline" onclick="get_mobile_code()">获取验证码</button>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10" style="margin: 0">
                                                <button id="but" type="submit" class="btn btn-default modal-btn" disabled="disabled">注册</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="modal-footer">
                <a style=" cursor: pointer;text-decoration: none">欢迎使用</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>
