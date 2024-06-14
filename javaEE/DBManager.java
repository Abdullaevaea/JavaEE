package kz.abdullaeva.javaEE;

import java.sql.*;
import java.util.ArrayList;

public class DBManager {
    private static Connection connection;

    static {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/JavaEEProjectDB", "postgres", "Mulatochkaa0310");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


    public static ArrayList<Item> addItem(Item item) {
        try {
            PreparedStatement stmt = connection.prepareStatement("insert into items(name, price, amount) values(?,?,?)");
            stmt.setString(1, item.getName());
            stmt.setInt(2, item.getPrice());
            stmt.setInt(3, item.getAmount());
            stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        public static ArrayList<Item> getAllItems() {
            ArrayList<Item> items = new ArrayList<>();
            try {
                PreparedStatement stmt = connection.prepareStatement("select * from items");
                ResultSet resultSet = stmt.executeQuery();
                while (resultSet.next()) {
                    Item item  = new Item();
                    item.setId(resultSet.getLong("id"));
                    item.setName(resultSet.getString("name"));
                    item.setPrice(resultSet.getInt("price"));
                    item.setAmount(resultSet.getInt("amount"));
                    items.add(item);
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            return items;
        }
    }
}

//    public static Item getItemById(Long id) {
//        int index = -100;
//        for (int i = 0; i < items.size(); i++) {
//            if (items.get(i).getId() == id) {
//                index = i;
//            }
//        }
//        return items.get(index);
//    }
//
//    public static void updateItem(Item updItem) {
//        int index = -100;
//        for (int i = 0; i < items.size(); i++) {
//            if (updItem.getId() == items.get(i).getId()) {
//                index = i;
//            }
//        }
//        items.set(index, updItem);
//    }
//
//    public static void removeItem(Long id) {
//        int index = -100;
//        for (int i = 0; i < items.size(); i++) {
//            if (items.get(i).getId() == id) {
//                index = i;
//            }
//        }
//        items.remove(index);
//    }
//}
