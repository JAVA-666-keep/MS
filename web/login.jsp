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
  <title></title>
  <link rel="stylesheet" type="text/css" href="css/login.css"/>
  <script type="text/javascript" src="js/register.js" charset="UTF-8" ></script>
</head>
<body>
<div class="content">
  <div class="content_top"></div>
  <div class="content_main">
    <div class="content_login">
      <form action="/Yundi/MyServlet" method="post" onsubmit="return zong2()">
        <table>
            <tr height="35px">
                <td width="150px"><span style="color: #FFFFFF; ">昵&nbsp;&nbsp;&nbsp;称：</span></td>
                <td width="400px">
                    <input type="text" name="uname" id="uname" value="" alt="用户名" onblur="checkName()" placeholder="请输入昵称"/>
                    <span id="uname_span">*用户名必须是2-4位的汉字</span>
                </td>
            </tr>
          <tr height="35px">
            <td><span style="color: #FFFFFF; ">密&nbsp;&nbsp;&nbsp;码：</span></td>
            <td>
              <input type="password" name="pwd" id="pwd" value="" alt="密码" onblur="checkPwd()" placeholder="请输入密码"/>
              <span id="pwd_span"></span>

            </td>
          </tr>

          <tr height="35px"  >
            <td colspan="2" align="center" >
              <input type="submit" id="sub" value="登录"  />&nbsp;
              <a href="register.html"> 注册</a>
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>

</div>
</body>
</html>
