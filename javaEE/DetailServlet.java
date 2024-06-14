//package kz.abdullaeva.javaEE;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//
//@WebServlet(value = "/details")
//public class DetailServlet extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        Long id = Long.valueOf(req.getParameter("id"));
//       Item item = DBManager.getItemById(id);
//       if (item != null) {
//           req.setAttribute("item", item);
//       }
//        req.getRequestDispatcher("details.jsp").forward(req, resp);
//    }
//}
