<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/8/3
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8" />
  <title>欢迎访问云迪在线！</title>
  <script type="text/javascript" src="js/register.js" charset="UTF-8" ></script>
  <link rel="stylesheet" type="text/css" href="css/register.css"  />
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body onload="YZM()">
<div >

  <div class="top" style="#fff">
    <h2 align="center"><font color="#FFFFFF">欢迎访问云迪在线！</font></h2>
  </div>
  <div>
    <nav class="navbar navbar-inverse" role="navigation"><!-- navbar navbar-inverse 反色的导航栏设置 -->
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">云迪在线</a>
        </div>
        <div>
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">首页</a></li>
            <li><a href="#">公开课</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                就业培训
                <b class="caret"></b>
              </a>
              <ul class="dropdown-menu" >
                <li><a href="#">JavaEE培训</a></li>
                <li><a href="#">安卓培训</a></li>
                <li><a href="#">HTML5</a></li>
                <li><a href="#">Python</a></li>
                <li><a href="#">云计算与大数据</a></li>
                <li><a href="#">游戏3D美术</a></li>
                <li><a href="#">UI</a></li>
                <li><a href="#">物联网</a></li>
                <li class="divider"></li>
                <li><a href="#">网络安全</a></li>
                <li class="divider"></li>
                <li><a href="#">人工智能</a></li>
              </ul>
            </li>
            <li><a href="#">实习实训</a></li>
            <li><a href="#">知识</a></li>
            <li><a href="#">回顾</a></li>

          </ul>
        </div>
      </div>
    </nav>

  </div>
  <div class="main">
    <div class="main_left">
      <img src="img/1.png"   width="800px"  height="500px"/>
    </div>
    <div class="main_right">
      <div class="div1">
        <center>
          <form action="login.jsp"  method="" onsubmit="return zong()">

            <table>
              <tr height="35px">
                <td>手机号：</td>
                <td>
                  <input type="text" name="phone" id="phone" value="" alt="手机号"  onblur="checkPhone()" placeholder="请输入手机号"/>
                  <span id="phone_span"></span>
                </td>
              </tr>
              <tr height="35px">
                <td width="150px">昵称：</td>
                <td width="400px">
                  <input type="text" name="uname" id="uname" value="" alt="用户名" onblur="checkName()" placeholder="请输入昵称"/>
                  <span id="uname_span">*用户名必须是2-4位的汉字</span>
                </td>
              </tr>
              <tr height="35px">
                <td>密码：</td>
                <td>
                  <input type="password" name="pwd" id="pwd" value="" alt="密码" onblur="checkPwd()" placeholder="请输入密码"/>
                  <span id="pwd_span"></span>

                </td>
              </tr>

              <tr height="35px">
                <td>确认密码：</td>
                <td>
                  <input type="password" name="pwd2" id="pwd2" value="" alt="密码" onblur="checkPwd2()" placeholder="请再次输入密码"/>
                  <span id="pwd2_span"></span>

                </td>
              </tr>


              <tr height="35px">
                <td>验证码</td>
                <td>
                  <input type="number" name="" id="yzm" value="" onblur="checkYZM()" placeholder="请输入验证码"/>
                  <span id="yzm_span"></span>
                  <span id="yzm2_span"></span>
                </td>
              </tr>

              <tr height="35px"  >
                <td colspan="2" align="center" >
                  <input type="submit" id="sub" value="注册"  />
                </td>
              </tr>
            </table>
          </form>
        </center>
      </div>
    </div>
  </div>
  <div class="bottom" ></div>
</div>
</body>
</html>
