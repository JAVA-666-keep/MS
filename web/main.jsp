<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/8/3
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="utf-8">
  <title>主页面</title>
  <link rel="stylesheet"  type="text/css" href="css/main.css" />
  <script src="js/jquery-3.4.1.js"></script>
  <script type="text/javascript">
    $(function(){
      //给退出登录添加单击事件
      $("#out").click(function(){
        return window.confirm("你真的要退出吗?");
      })
    })
  </script>
</head>
<body >
<div class="content">
  <div class="content_top">
    <div class="content_login">
      <span style="color: white"><%--<%=session.getAttribute("uname")%>--%><%--<%=request.getParameter("uname")%>--%>${sessionScope.uname}</span><a id="out" href="login.jsp"><span>：退出</span></a>
    </div>
  </div>
  <div >
    <div class="content-left">
      <ul>
        <li><a class="active" href="#home">主页</a></li>
        <li><a href="#">汽车</a></li><br>
        <li><a href="#">美食</a></li><br>
        <li><a href="#">手机</a></li><br>
        <li><a href="#">生活用品</a></li><br>
        <li><a href="#">篮球</a></li><br>
      </ul>

    </div>
    <div class="content-right">
      <div class="content_search">
        <input type="button" value="搜索" style="color:#fff;height:30px;width:100px;background-color:#000"><input type="text">
      </div>

      <div class="right_tb">
        <table border="1px" align="center" cellpadding="10px" cellspacing="10px" background="img/123.jpg">
          <tr bgcolor="orange">
            <td></td>
            <td>汽车名称</td>
            <td>汽车描述</td>
            <td>汽车价格</td>
            <td>汽车库存</td>
            <td align="center">操作</td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>跑车</td>
            <td>宝马</td>
            <td>100万</td>
            <td>5辆</td>
            <td><a href="">修改</a>&nbsp<a href="">删除</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>越野</td>
            <td>奔驰</td>
            <td>200万</td>
            <td>6辆</td>
            <td><a href="">修改</a>&nbsp<a href="">删除</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>轿车</td>
            <td>奥迪</td>
            <td>80万</td>
            <td>30辆</td>
            <td><a href="">修改</a>&nbsp<a href="">删除</a></td>
          </tr>
          <tr>
            <td><input type="checkbox"></td>
            <td>摩托</td>
            <td>铃木</td>
            <td>60万</td>
            <td>25辆</td>
            <td><a href="">修改</a>&nbsp<a href="">删除</a></td>
          </tr>
        </table>
      </div>

      <div class="right_page">
        <a href="">第一页</a> &nbsp;&nbsp;<a href="">1</a>&nbsp;&nbsp;<a href="">2</a>&nbsp;&nbsp;<a href="">3</a>
        &nbsp;&nbsp;<a href="">4</a>&nbsp;&nbsp;
        <a href="">最后一页</a> &nbsp;&nbsp; <input type="button" value="跳转到" style="height:30px;">&nbsp;
        <input type="text" style="width:30px;height:25px;">页
      </div>
    </div>
  </div>
  <div class="content_bottom">
    <img src="img/3.png" />
  </div>


</div>

</body>
</html>
