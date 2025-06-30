<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../header.html" %>
<%@include file="menu.jsp" %>

<div class="content">
  <h2 class="menu-title">成績参照検索</h2>

  <!-- 科目情報検索 -->
  <p>科目情報</p>
  <form method="post" action="<%= request.getContextPath() %>/Seisekisearch">
    <label>入学年度</label>
    <select name="f1">
        <option value="">選択してください</option>
        <option value="2021">2021</option>
        <option value="2022">2022</option>
        <option value="2023">2023</option>
    </select><br/>

    <label>クラス</label>
    <select name="f2">
        <option value="">選択してください</option>
        <option value="A">A</option>
        <option value="B">B</option>
        <option value="C">C</option>
    </select><br/>

    <label>科目</label>
    <select name="f3">
        <option value="">選択してください</option>
        <option value="math">数学</option>
        <option value="english">英語</option>
        <option value="science">理科</option>
    </select><br/>

    <button type="submit">検索</button>
  </form>

  <hr/>

  <!-- 学生情報検索 -->
  <p>学生情報</p>
  <form method="post" action="<%= request.getContextPath() %>/Seisekisearch">
    <label>学生番号</label>
    <input type="text" name="f4" maxlength="10" placeholder="学生番号を入力してください" required/>
    <br/>
    <button type="submit">検索</button>
  </form>

  <p>科目情報や学生情報から成績を表示することができます。</p>
</div>

<%@include file="../footer.html" %>
