<%@ page language="java" contentType="text/html; charset=utf-8"    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="kim.yongtae.ums.service.UserService" %>
<%@ page import="kim.yongtae.ums.service.UserServiceImpl" %>
<%@ page import="kim.yongtae.ums.domain.User" %>
<%@ page import="java.util.List" %>
<%
	UserService userService =new UserServiceImpl();
	List<User>users=userService.listUsers();
	pageContext.setAttribute("users",users);
%>
<table class="table">
  <thead>
  	<tr>
  		<th>번호</th>
  		<th>이름</th>
  		<th>등록일</th>
  	</tr>
  	</thead>
  	<tbody>
  		<c:forEach var="user" items="${users}">
  			<tr>
  				<td><input type="radio" name="userNo" value="${user.userNo}"/>
  					&nbsp;${user.userNo}
  					</td>
  					<td>${user.userName}</td>
  					<td>${user.regDate}</td>
  			</tr>
  		</c:forEach>	
  	</tbody>
</table>
   	

 
	