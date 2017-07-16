<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Big_Boss
  Date: 2017/6/5
  Time: 15:17
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
    <title>P_account</title>
</head>
<%
    String name=(String) session.getAttribute("supername");
    if(name==null) response.sendRedirect("http://localhost:8080/t/Administrator_login.html");
%>
<script>
    function banned(link) {
        var name=link.id;
        $.post(
                "http://localhost:8080/t/act/updata_banned",
                {name:name},
                function () {
                    if(link.innerText=="禁言")
                        link.innerText="恢复";
                    else
                        link.innerText="禁言";
                }
        )

    }
    function delateuser(username) {
        $.post(
                "http://localhost:8080/t/act/updata_delateUser",
                {name:username.value},
                function () {
                    username.innerText="已删除";
                    username.disabled=true;
                }
        )
    }
</script>
<body>
<div class="container">
    <div class="row row-100px">
        <div class="col-lg-12">
            <ul class="nav nav-tabs nav-justified">
                <li><a href="http://localhost:8080/t/publish_news.jsp">新闻发布</a></li>
                <li><a href="http://localhost:8080/t/publish_messages.jsp">通知发布</a></li>
                <li><a href="http://localhost:8080/t/act/talk_root">留言管理</a></li>
                <li class="active"><a href="http://localhost:8080/t/act/user">账号管理</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="row row-100px">
    <div class="col-lg-8 col-lg-offset-2">
        <table class="table table-striped">
            <caption>账号管理</caption>
            <thead>
            <tr>
                <th>账号</th>
                <th>密码</th>
                <th>手机号</th>
                <th>状态</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="user-name-label">
            <s:iterator value="list">
            <tr>
                <td><s:property value="userName"/></td>
                <td><s:property value="password"/></td>
                <td><s:property value="phoneNumber"/></td>
                <td>正常 / <a id="<s:property value="userName"/>" onclick="banned(this)">禁言</a></td>
                <td><button class="btn-default" value="<s:property value="userName"/>" onclick="delateuser(this)">删除该用户</button></td>
            </tr>
            </s:iterator>
            </tbody>
        </table>
    </div>
</div>
</div>
</body>
</html>
