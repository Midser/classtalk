<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Big_Boss
  Date: 2017/6/2
  Time: 9:49
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
</style>
<div class="container">
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
                                <li><a href="http://localhost:8080/t/act/news">新闻</a></li>
                                <li class="active"><a href="http://localhost:8080/t/act/messages">通知</a></li>
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
                <div>
                    <s:iterator value="list">
                    <h2 style="color: #2aabd2"><s:property value="topic"/></h2>
                        <small>@<s:property value="release_time"/></small>
                    <p><s:property value="content"/> </p>
                    <hr>
                    </s:iterator>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <div style="height: 200px;width: 100%"></div>
</footer>
</body>
</html>
