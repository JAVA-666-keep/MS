package com.zhang.listener;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * 监听器
 * @ClassName MyListener
 * @Description TODO
 * @Author 张勇
 * @Date 2020/8/5 11:26
 */
public class MyListener implements HttpSessionListener, HttpSessionAttributeListener {
    @Override//  session.setAttribute(key,value) 执行以此类推
    public void attributeAdded(HttpSessionBindingEvent se) {
        System.out.println(se.getName()+se.getValue());//获取key和vlaue
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent se) {

    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent se) {

    }

    @Override//req.getSession 创建session执行
    public void sessionCreated(HttpSessionEvent se) {
        System.out.println(se.getSession());
        System.out.println("session被创建");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {

    }
}
