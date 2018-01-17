<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="kim.yongtae.ums.domain.User" %>
<%@ page import="kim.yongtae.ums.service.UserService" %>
<%@ page import="kim.yongtae.ums.service.UserServiceImpl" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<%
    String userNo = request.getParameter("userNo");
    String userName = request.getParameter("userName");
    if((userNo != null && !userNo.equals(""))
            && (userName != null && !userName.equals(""))){
        UserService userService = new UserServiceImpl();
        User user = new User();
        user.setUserNo(Integer.parseInt(userNo));
        user.setUserName(userName);
        userService.correct(user);
%>
        <c:redirect url="../main.jsp?msgId=21"/>    
<%
    }else{
%>
        <c:redirect url="../main.jsp?msgId=20"/>
<%
    }
%>

		