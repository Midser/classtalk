<%--
  Created by IntelliJ IDEA.
  User: Big_Boss
  Date: 2017/6/5
  Time: 15:11
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
    <title>P_messages</title>
</head>
<%
    String name=(String) session.getAttribute("supername");
    if(name==null) response.sendRedirect("http://localhost:8080/t/Administrator_login.html");
%>
<body>
<div class="container">
    <div class="row" style="margin-top: 100px">
        <div class="col-lg-12">
            <ul class="nav nav-tabs nav-justified">
                <li><a href="http://localhost:8080/t/publish_news.jsp">新闻发布</a></li>
                <li class="active"><a href="http://localhost:8080/t/publish_messages.jsp">通知发布</a></li>
                <li><a href="http://localhost:8080/t/act/talk_root">留言管理</a></li>
                <li><a href="http://localhost:8080/t/act/user">账号管理</a></li>
            </ul>
        </div>
    </div>

    <div class="col-lg-6 col-lg-offset-3">
        <form role="form" method="post" action="http://localhost:8080/t/act/updata_messages">
            <div class="form-group">
                <label for="title" class="control-label">标题：</label>
                <input name="title" id="title" placeholder="发布通知--标题！！" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="content" class="control-label">内容：</label>
                <textarea name="content" placeholder="请编辑内容！！！" id="content" class="form-control" style="height: 600px"></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn-default but-blue col-lg-12">发布</button>
            </div>
        </form>
    </div>

    <div class="col-lg-12 modal-footer" style="height: 400px;position: relative">

    </div>
</div>
</body>
</html>