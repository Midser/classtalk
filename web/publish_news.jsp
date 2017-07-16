<%--
  Created by IntelliJ IDEA.
  User: Big_Boss
  Date: 2017/6/5
  Time: 14:58
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
    <title>P_news</title>
</head>
<%
    String name=(String) session.getAttribute("supername");
    if(name==null) response.sendRedirect("http://localhost:8080/t/Administrator_login.html");
%>
<body>
<div class="container">
    <div class="row row-100px">
        <div class="col-lg-12">
            <ul class="nav nav-tabs nav-justified">
                <li class="active"><a href="http://localhost:8080/t/publish_news.jsp">新闻发布</a></li>
                <li><a href="http://localhost:8080/t/publish_messages.jsp">通知发布</a></li>
                <li><a href="http://localhost:8080/t/act/talk_root">留言管理</a></li>
                <li><a href="http://localhost:8080/t/act/user">账号管理</a></li>
            </ul>
        </div>
    </div>

    <div class="col-lg-6 col-lg-offset-3">
        <form role="form" method="post" action="http://localhost:8080/t/act/updata_news">
            <div class="form-group">
                <label for="title" class="control-label">标题：</label>
                <input id="title" class="form-control" placeholder="发布新闻--标题！！" name="title"/>
            </div>
            <div class="form-group">
                <label for="content" class="control-label">内容：</label>
                <textarea name="content" id="content" placeholder="请编辑内容！！！" class="form-control" style="height: 600px"></textarea>
            </div>
            <div class="form-group">
                <button type="submit" class="btn-default but-blue col-lg-12">发布</button>
            </div>
        </form>
    </div>

    <div class="col-lg-12 modal-footer" style="height: 400px">

    </div>
</div>
</body>
</html>