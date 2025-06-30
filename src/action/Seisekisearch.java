package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Seisekisearch")
public class Seisekisearch extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Seisekisearch() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String nyugaku = request.getParameter("f1");
        String className = request.getParameter("f2");
        String kamoku = request.getParameter("f3");
        String gakuseiNo = request.getParameter("f4");

        List<String> results = new ArrayList<>();

        // 科目コードを日本語に変換
        String kamokuName = "";
        if (kamoku != null) {
            switch (kamoku) {
                case "math":
                    kamokuName = "数学";
                    break;
                case "english":
                    kamokuName = "英語";
                    break;
                case "science":
                    kamokuName = "理科";
                    break;
                default:
                    kamokuName = "不明";
            }
        }

        if (gakuseiNo != null && !gakuseiNo.isEmpty()) {
            results.add("学生番号: " + gakuseiNo + " の成績：90点");
        } else if (nyugaku != null && className != null && kamoku != null &&
                   !nyugaku.isEmpty() && !className.isEmpty() && !kamoku.isEmpty()) {
            results.add("科目: " + kamokuName + " / クラス: " + className + " / 年度: " + nyugaku + " の平均成績：85点");
        } else {
            results.add("検索条件を入力してください。");
        }

        request.setAttribute("results", results);

        // 新しい JSP ファイルへフォワード
        RequestDispatcher dispatcher = request.getRequestDispatcher("/disp/seiseki_result.jsp");
        dispatcher.forward(request, response);
    }
}
