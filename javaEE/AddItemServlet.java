package kz.abdullaeva.javaEE;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/add-item")
public class AddItemServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/add-item.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("item-name");
        int price = Integer.parseInt(request.getParameter("item-price"));
        int amount = Integer.parseInt(request.getParameter("item-amount"));
        Item item = new Item();
        item.setName(name);
        item.setPrice(price);
        item.setAmount(amount);
        DBManager.addItem(item);
        response.sendRedirect("/home");
    }
}
