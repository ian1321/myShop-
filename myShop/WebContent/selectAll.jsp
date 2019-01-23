<%@page import="java.util.ArrayList"%>
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
	ArrayList<ProductDTO> list = dao.selectAll();
	ProductDTO dto;
%>
<div align="center">
전체상품 리스트
	<table>
		<tr align="center">
			<th>아이디</th>
			<th>상품제목</th>
			<th>상품설명</th>
			<th>가격</th>
		</tr>
		<%
			for (int i = 0; i < list.size(); i++) {
				dto = list.get(i);
				dto.getId();
				dto.getTitle();
				dto.getContent();
				dto.getPrice();
		%>

		<tr align="center">
			<td ><%=dto.getId()%></td>
			<td><%=dto.getTitle()%></td>
			<td><%=dto.getContent()%></td>
			<td><%=dto.getPrice()%></td>
		</tr>


		<%
			}
		%>
	</table>
	<br>
	<a href="insert.html">상품 등록</a><br>
	<a href="select.html">상품 검색</a><br>
	<a href="update.html">상품 수정</a><br>
	<a href="delete.html">상품 삭제</a><br>
	</div>
</body>
</html>