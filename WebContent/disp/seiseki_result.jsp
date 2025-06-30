<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../header.html" %>
<%@include file="../menu.jsp" %>

<div class="content">
  <h2 class="menu-title">検索結果ページ</h2>

  <c:if test="${not empty results}">
    <ul>
      <c:forEach var="item" items="${results}">
        <li>${item}</li>
      </c:forEach>
    </ul>
  </c:if>

  <a href="<%= request.getContextPath() %>/jsp/seiseki_search.jsp">検索画面に戻る</a>
</div>

<%@include file="../footer.html" %>
