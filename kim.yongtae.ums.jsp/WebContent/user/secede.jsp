<%@ page language="java" contentType="text/html; charset=utf-8"    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="kim.yongtae.ums.service.UserService" %>
<%@ page import="kim.yongtae.ums.service.UserServiceImpl" %>
<%@ page import="kim.yongtae.ums.domain.User" %>
<%@ page import="java.util.List" %>
<%
		String userNo=request.getParameter("userNo");
		if(userNo !=null && !userNo.equals("")){
			UserService userService=new UserServiceImpl();
			userService.secede(Integer.parseInt(userNo));
%>
	<c:redirect url="../main.jsp?msgId=31"/>
<%
}else{
%>
	<c:redirect url="../main.jsp?msgId=30"/>
<%
}
%>
			