<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="../header.html" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

エラーが発生しました。<br>
<a href="${pageContext.request.contextPath}/login_logout/login-in.jsp?id=${param.id}">ログイン画面に戻る</a>

<%@include file="../footer.html" %>