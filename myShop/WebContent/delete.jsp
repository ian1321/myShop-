<%@page import="product.ProductDAO"%>
<%@page import="product.ProductDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
ProductDAO dao = new ProductDAO();

String id = request.getParameter("id");
dao.delete(id);
%>
삭제되었습니다.<br>
<a href="delete.html">돌아가기</a>
<a href="selectAll.jsp">전체상품보기</a>
</body>
</html>