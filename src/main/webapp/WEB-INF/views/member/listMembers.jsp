<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    


<html>
<head>
<meta charset=UTF-8">
<title>회원 정보 출력창</title>
<style>
.member_table {
  border-collapse: collapse;
  width: 80%;
  margin: 20px auto;
}

.member_table td {
  border: 1px solid #ddd;
  padding: 8px;
}

.member_tr:nth-child(even) {
  background-color: #f2f2f2;
}

.member_table a {
  display: block;
  text-align: center;
  font-size: 20px;
  color: #008CBA;
  text-decoration: none; /* 밑줄 제거 */
  font-weight: bold; /* 글자 두께 */
}

/* hover 스타일 */
.member_table a:hover {
  color: red;
}

/* 클릭한 링크 스타일 */
.member_table a:active {
  color: green;
}
.btn-link {
  display: inline-block;
  padding: 0.5rem 1rem;
  background-color: #ffffff;
  color: #428bca;
  border: 1px solid #428bca;
  border-radius: 0.25rem;
  text-decoration: none;
  transition: background-color 0.3s ease, color 0.3s ease;
}

.btn-link:hover {
  background-color: #428bca;
  color: #ffffff;
}

.btn-link:visited {
  color: #428bca;
}

.btn-link:visited:hover {
  background-color: #428bca;
  color: #ffffff;
}

.btn-center {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100px;
}
</style>
</head>
<body>
<table border="1"  align="center"  width="80%" class="member_table">
    <tr align="center"   bgcolor="lightgreen" class="member_tr">
      <td ><b>아이디</b></td>
      <td><b>비밀번호</b></td>
      <td><b>이름</b></td>
      <td><b>이메일</b></td>
      <td><b>가입일</b></td>
      <td><b>수정</b></td>
      <td><b>삭제</b></td>
   </tr>
   
 <c:forEach var="member" items="${membersList}" >     
   <tr align="center" class="member_tr">
      <td>${member.id}</td>
      <td>${member.pwd}</td>
      <td>${member.name}</td>
      <td>${member.email}</td>
      <td>${member.joinDate}</td>
      <td><a href="${contextPath}/member/modForm.do?id=${member.id }" >수정하기</a></td>
      <td><a href="${contextPath}/member/removeMember.do?id=${member.id }" >삭제하기</a></td>
    </tr>
  </c:forEach>   
</table>
<div class="btn-center">
<a  href="${contextPath}/member/memberForm.do" class="btn-link"><h1 style="text-align:center">회원가입</h1></a>
</div>
<%-- <a  href="${contextPath}/member/modMember.do"><h1 align="center">회원수정</h1></a>
 --%>
</body>
</html>
