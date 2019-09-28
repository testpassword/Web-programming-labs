import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.xml.ws.http.HTTPException;
import java.util.*;
import java.io.*;

/*
Здесь используется код, совместимый с Java 6, т.к. Glassfish на гелиосе настроен на него.
 */
public class AreaCheckServlet extends HttpServlet {

    PrintWriter writer;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        resp.setContentType("text/html;charset=UTF-8");
        List<String> tableRows = (List) session.getAttribute("tableRows");
        if (tableRows == null) {
            tableRows = new ArrayList<String>();
            session.setAttribute("tableRows", tableRows);
            tableRows.add("<table id='outputTable'><tr>" +
                    "<th>x</th>" +
                    "<th>y</th>" +
                    "<th>r</th>" +
                    "<th>Точка входит в ОДЗ</th>" +
                    "<th>Текущее время</th></tr>");
        }
        double x = Double.parseDouble(req.getParameter("x"));
        double y = Double.parseDouble(req.getParameter("y"));
        double r = Double.parseDouble(req.getParameter("r"));
        try {
            writer = resp.getWriter();
            if (checkData(x, y, r)) {
                tableRows.add(new Point(x, y, r, req.getParameter("timezone")).toString());
                for (String tableRow: tableRows) writer.println(tableRow);
            } else throw new HTTPException(400);
        } finally {
            if (writer != null) writer.close();
        }
    }

    private boolean checkData(double x, double y, double r) {
        Double[] xInterval = {-2.0, -1.5, -1.0, -0.5, 0.0, 0.5, 1.0, 1.5, 2.0};
        Double[] rInterval = {1.0, 2.0, 3.0, 4.0, 5.0};
        return (Arrays.asList(xInterval).contains(x) && (y > -5 && y < 3) && Arrays.asList(rInterval).contains(r));
    }
}