<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>

すでにログアウトしています。
<a href="${pageContext.request.contextPath}/login_logout/login-in.jsp?id=${param.id}">ログイン画面に戻る</a>

<%@include file="../footer.html" %>