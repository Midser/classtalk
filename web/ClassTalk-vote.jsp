<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Big_Boss
  Date: 2017/6/7
  Time: 9:52
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
<% String state=(String) session.getAttribute("state"); %>
<script>

    var state="<%=state%>";
    function voteup(sign) {
        var labe=sign.childNodes;
        var deadline=sign.previousElementSibling.innerText;
        var now=getNowFormatDate();
        if(state=="0");
        else {
            alert("您无法投票！");
            return;
        }
        if(deadline<now) {
            alert("已过期，无法投票！");
            return;
        }
        $.post(
                "http://localhost:8080/t/act/updata_vote",
                {vote:1,sign:sign.id,name:"<%=(String)session.getAttribute("username")%>"},
                function () {
                    alert("您已投票！");
                    labe[1].innerText=Number(labe[1].innerText)+1;
                }
        );
    }

    function votedown(sign) {
        var signD=sign.previousElementSibling;
        var labe=sign.childNodes;
        var deadline=signD.previousElementSibling.innerText;
        var now=getNowFormatDate();
        if(state=="0");
        else {
            alert("您无法投票！");
            return;
        }
        if(deadline<now) {
            alert("已过期，无法投票！");
            return;
        }
        $.post(
                "http://localhost:8080/t/act/updata_vote",
                {vote:0,sign:signD.id,name:"<%=(String)session.getAttribute("username")%>"},
                function () {
                    alert("您已投票！");
                    labe[1].innerText=1+Number(labe[1].innerText);
                }
        );
    }

    function getNowFormatDate() {
        var date = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds();
        return currentdate;
    }
</script>
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
                                <li><a href="http://localhost:8080/t/act/messages+">通知</a></li>
                                <li class="active"><a href="http://localhost:8080/t/act/vote">投票箱</a></li>
                                <li><a href="http://localhost:8080/t/act/talk">留言板</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <s:iterator value="list">
                <div style="margin-top: 100px">
                    <h2 style="color: #2aabd2"><s:property value="topic"/></h2>
                    <small>发起人：<s:property value="promulgator"/></small><br>
                    <small>发起时间：@<s:property value="release_time"/></small>
                    <p><s:property value="content"/></p>
                    <div style="float: right">
                        截至时间：
                        <p><s:property value="deadline"/></p>
                        <a id="<s:property value="sign"/> " style="margin-right: 20px" onclick="voteup(this)">支持<span class="badge"><s:property value="oo"/></span></a>
                        <a onclick="votedown(this)">反对<span class="badge"><s:property value="xx"/></span></a>
                    </div>
                    <hr>
                </div>
                </s:iterator>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <form role="form" method="post" action="http://localhost:8080/t/act/updata_ballotbox">
                    <div class="form-group">
                        <label for="topic" class="control-label">投票标题：</label>
                        <input id="topic" name="topic" type="text" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="content" class="control-label">内容：</label>
                        <textarea id="content" name="content" class="form-control" style="height: 300px"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="promulgator" class="control-label">发布者：</label>
                        <input id="promulgator" name="promulgator" type="text" class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="deadline" class="control-label">截至日期：</label>
                        <input id="deadline" name="deadline" type="datetime-local" class="form-control">
                    </div>

                    <div class="form-group">
                        <button type="submit" class="btn btn-default" style="width: 360px; background: #2aabd2" <% if(!"0".equals(state)) out.print("disabled=\"disabled\""); %>>发布</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<footer>
    <div style="height: 200px;width: 100%"></div>
</footer>
</body>
</html>
