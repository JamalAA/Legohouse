/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

import DBAccess.OrderMapper;
import java.util.List;

/**
 *
 * @author jamal_ahmed
 */
public class OrderFacade {
    
     public static Order createOrder(int length, int width, int layers, User user) throws OrderException {
        Order order = new Order(length, width, layers);
        order = OrderMapper.createOrder(order, user);
        return order;
    }

    public static List<Order> getOrders(User user) throws OrderException, ClassNotFoundException {
        List<Order> orders = OrderMapper.getAllOrders();

        if (user.getRole().equals("customer")) {
            orders = OrderMapper.getUserOrders(user);
        }
        return orders;
    }
    public static List<Order> getAllOrders() throws OrderException, ClassNotFoundException {
        List<Order> orders = OrderMapper.getAllOrders();

        return orders;
    }
    public static Order getOrderInforById(int orderId) throws OrderException{
        
        Order order = OrderMapper.getCompletedOrder(orderId);
        return order;
    } 
    

    public static void sendOrder(int order_id) throws OrderException, ClassNotFoundException {
        OrderMapper.registerSentOrder(order_id);
    }
}
