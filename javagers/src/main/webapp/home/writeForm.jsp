<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" 
		uri="http://www.springframework.org/tags" %>    
<%@ taglib prefix="form" 
		uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#writeform { width:500px; height:300px;}
</style>
</head>
<body>
<div id="writeform">
<form:form modelAttribute="writing" action="../write/write.html"
	id="fileupload" method="post" enctype="multipart/form-data">
<form:hidden path="order_no" value="${writing.order_no + 1 }"/>
<c:if test="${ ! empty param.group_id }">
<input type="hidden" name="group_id" value="${param.group_id }"/>
</c:if>	
<c:if test="${ ! empty param.parent_id }">
<input type="hidden" name="parent_id" value="${param.parent_id }"/>
</c:if>
<table border="1">
	<tr><td width="100px">글제목</td>
		<td><form:input path="title" size="40" value="${title }"/>
		<font color="red"><form:errors path="title"/></font>
	</td></tr>
	<tr><td width="100px">닉네임</td><td><form:input path="writer_name" size="20"/>
		<font color="red"><form:errors path="writer_name"/></font>
	</td></tr>
	<tr><td width="100px">이메일</td><td><form:input path="email" size="40"/>
		<font color="red"><form:errors path="email"/></font>
	</td></tr>
	<tr><td width="100px">암 호</td><td><form:password path="password" size="20"/>
		<font color="red"><form:errors path="password"/></font>
	</td></tr>
	<tr><td width="100px">이미지</td><td><input type="file" name="image"
			size="20"/></td></tr>
	<tr><td width="100px">글내용</td><td>
	<form:textarea path="content" rows="10" cols="40"
		style="width:100%; height:300px"></form:textarea></td></tr>
	<tr><td colspan="2"><input type="submit" value="등 록"/></td></tr>		
</table>
</form:form>
</div>
</body>
</html>














