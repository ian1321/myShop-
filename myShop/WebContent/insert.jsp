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
dto.setId(request.getParameter("id"));
dto.setTitle(request.getParameter("title"));
dto.setContent(request.getParameter("content"));
dto.setPrice(Integer.parseInt(request.getParameter("price")));
dao.insert(dto);


%>
서버로 전송처리 되었습니다.<br>

<a href="insert.html">되돌아가기</a>
<a href="selectAll.jsp">전체상품보기</a>
</body>
</html>