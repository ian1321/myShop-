<%@page import="product.ProductDTO"%>
<%@page import="product.ProductDAO"%>
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
ProductDTO dto = dao.select(id);
%>
상품 아이디 : <%= dto.getId() %><br>
상품 제목 : <%= dto.getTitle() %><br>
상품 설명 : <%= dto.getContent() %><br>
상품 가격 : <%= dto.getPrice() %><br>
<a href="select.html">되돌아가기</a>
<a href="selectAll.jsp">전체상품보기</a>
</body>
</html>