<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Big_Boss
  Date: 2017/6/2
  Time: 10:16
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
                            <li><a href="http://localhost:8080/t/act/messages">通知</a></li>
                            <li><a href="http://localhost:8080/t/act/vote">投票箱</a></li>
                            <li class="active"><a href="http://localhost:8080/t/act/talk">留言板</a></li>
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
                <h4><s:property value="user_name"/>说：</h4>
                    <small>@<s:property value="release_time"/></small>
                <p>
                    <s:property value="content"/>
                </p>
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse<s:property value="sign"/>">
                    吐槽
                </a>
                <div id="collapse<s:property value="sign"/>" class="panel-collapse collapse">
                    <div class="panel-body">
                        程序员很懒，没有开发.
                    </div>
                    <form>
                        <div class="input-group">
                            <textarea type="text" class="form-control" placeholder="写了也没有用，并不会发布出去，不会。。。" style="height: 150px;width: 360px"></textarea>
                        </div>
                        <div class="input-group">
                            <button type="button" class="btn btn-default" style="width: 360px; background: #2aabd2">发布</button>
                        </div>
                    </form>
                </div>
                <hr>
                </s:iterator>
                <form role="form" method="post" action="http://localhost:8080/t/act/updata_talk" style="margin-top: 160px">
                    <div class="input-group">
                        <textarea type="text" class="form-control" placeholder="我要发起话题！！" name="content" style="height: 200px;width: 400px;padding: 10px"
                        <%
                            String state=(String) session.getAttribute("state");
                                if(!"0".equals(state))
                                    out.print("disabled=\"disabled\"");
                        %>
                        ><% if(!"0".equals(state)) out.print("无法使用"); %></textarea>
                    </div>
                    <div class="input-group">
                        <br>
                        <label for="input_name" class="control-label">大侠留名：</label>
                        <input id="input_name" type="text" name="username" class="form-control" value="<%= session.getAttribute("username")%>">
                    </div>
                    <div class="input-group" style="margin-top: 20px;">
                        <button type="submit" class="btn btn-default" style="width: 360px; background: #2aabd2" <% if(!"0".equals(state)) out.print("disabled=\"disabled\""); %>>发布</button>
                    </div>
                </form>
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