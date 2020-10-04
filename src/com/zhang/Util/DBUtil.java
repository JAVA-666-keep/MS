package com.zhang.Util;

import java.sql.*;

public class DBUtil {
    private  static  String DriverName="com.mysql.jdbc.Driver";
    private  static  String Url="jdbc:mysql://localhost:3306/ydzx?characterEncoding=utf-8";
    private  static  String UserName="root";
    private  static  String Password="888888";
    private  static Connection conn=null;
    public  static Connection getConnection(){
        try {
            Class.forName(DriverName);
            conn = DriverManager.getConnection(Url, UserName, Password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    /**
     *
     * @param rs
     * @param ps
     * @param conn
     * @throws SQLException
     */
    public  static  void  closeResource(ResultSet rs, PreparedStatement ps,Connection conn) throws SQLException {
        if(rs!=null){
            rs.close();
        }
        if(ps!=null){
            rs.close();
        }
        if(conn!=null){
            conn.close();
        }
    }

    public static void main(String[] args) {
        Connection conn = DBUtil.getConnection();
        System.out.println(conn);
    }
}
