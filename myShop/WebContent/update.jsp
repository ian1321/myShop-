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
ProductDTO dto = new ProductDTO();
String id = request.getParameter("id");
String title = request.getParameter("title");
String content = request.getParameter("content");
int price = Integer.parseInt(request.getParameter("price"));

dto.setId(id);
dto.setTitle(title);
dto.setContent(content);
dto.setPrice(price);

dao.update(dto);
%>
수정완료되었습니다.
<a href="update.html">되돌아가기</a>
<a href="selectAll.jsp">전체상품보기</a>
</body>
</html>