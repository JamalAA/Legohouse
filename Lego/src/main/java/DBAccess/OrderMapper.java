/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBAccess;

import FunctionLayer.Order;
import FunctionLayer.OrderException;
import FunctionLayer.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author jamal_ahmed
 */
public class OrderMapper {
    public static Order createOrder(Order order, User user) throws OrderException {
        try {
            Connection con = Connector.connection();
            String SQL = "INSERT INTO `order` (`length`, `width`, `layers`, `user_id`) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, order.getLength());
            ps.setInt(2, order.getWidth());
            ps.setInt(3, order.getLayers());
            ps.setInt(4, user.getId());
            ps.executeUpdate();

            ResultSet ids = ps.getGeneratedKeys();
            ids.next();
            int id = ids.getInt(1);
            Order CpOrder = getCompletedOrder(id);
            return CpOrder;

        } catch (SQLException | ClassNotFoundException ex) {
            throw new OrderException(ex.getMessage());
        }

    }

    public static Order getCompletedOrder(int orderId) throws OrderException {
        try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM `order` WHERE order_id=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();
            Order order = null;
            if (rs.next()) {
                Date timestamp = rs.getTimestamp("timestamp");
                int length = rs.getInt("length");
                int width = rs.getInt("width");
                int layers = rs.getInt("layers");
                String orderStatus = rs.getString("orderStatus");
                order = new Order(length, width, layers);
                order.setOrder_id(orderId);
                order.setTimestamp(timestamp);
                order.setOrderStatus(orderStatus);
            }
            return order;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new OrderException(ex.getMessage());
        }
    }

    public static List<Order> getUserOrders(User user) throws OrderException, ClassNotFoundException {
        try {
           Connection con = Connector.connection();
            String SQL = "SELECT * FROM `order` WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setInt(1, user.getId());
            ResultSet rs = ps.executeQuery();
            ArrayList<Order> orders = new ArrayList<>();
            while (rs.next()) {
                int order_id = rs.getInt("order_id");
                Date timestamp = rs.getTimestamp("timestamp");
                int length = rs.getInt("length");
                int width = rs.getInt("width");
                int layers = rs.getInt("layers");
                String orderStatus = rs.getString("orderStatus");
                Order order = new Order(length, width, layers);
                order.setOrder_id(order_id);
                order.setTimestamp(timestamp);
                order.setOrderStatus(orderStatus);
                orders.add(order);
            }
            return orders;

        } catch (SQLException ex) {
            throw new OrderException(ex.getMessage());
        }
    }
    
    public static void registerSentOrder(int order_id) throws OrderException, ClassNotFoundException{
         try {
            Connection con = Connector.connection();
            String SQL = "UPDATE `order` SET orderStatus = ? WHERE order_id= ?";
            PreparedStatement ps = con.prepareStatement(SQL);
            ps.setString(1, "SENT");
            ps.setInt(2, order_id);
            ps.executeUpdate();

        } catch (SQLException ex) {
            throw new OrderException(ex.getMessage());
        }
    }
    
    public static List<Order> getAllOrders() throws OrderException, ClassNotFoundException {
         try {
            Connection con = Connector.connection();
            String SQL = "SELECT * FROM `order` order by orderStatus";
            PreparedStatement ps = con.prepareStatement(SQL);
            ResultSet rs = ps.executeQuery();
            ArrayList<Order> orders = new ArrayList<>();
            while (rs.next()) {
                int order_id = rs.getInt("order_id");
                Date timestamp = rs.getTimestamp("timestamp");
                int length = rs.getInt("length");
                int width = rs.getInt("width");
                int layers = rs.getInt("layers");
                String orderStatus = rs.getString("orderStatus");
                Order order = new Order(length, width, layers);
                order.setOrder_id(order_id);
                order.setTimestamp(timestamp);
                order.setOrderStatus(orderStatus);
                orders.add(order);
            }
            return orders;

        } catch (SQLException ex) {
            throw new OrderException(ex.getMessage());
        }
    }
    
}
