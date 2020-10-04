package com.zhang.servlet;

import com.zhang.Util.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        /*req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");*///在过滤器中配置了
        //true  不存在就创建   ，false  不存在也不创建
        HttpSession session = req.getSession(true);
        /*System.out.println(session.getId());*/
        String uname = req.getParameter("uname");
        String pwd = req.getParameter("pwd");
        session.setAttribute("uname",uname);
        session.setAttribute("pwd",pwd);
        Connection conn = DBUtil.getConnection();
        try {
            PreparedStatement ps = conn.prepareStatement("select  * from  login where uname=? and pwd=?");
            ps.setString(1,uname);
            ps.setString(2,pwd);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                req.getRequestDispatcher("main.jsp").forward(req,resp);
            }else {
                req.getRequestDispatcher("error.jsp").forward(req,resp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

       /* resp.sendRedirect(req.getContextPath()+"/main.jsp");*/
       /* req.getRequestDispatcher("main.jsp").forward(req,resp);*/
    }
}
