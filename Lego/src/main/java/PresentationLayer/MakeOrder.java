/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.BlockFacade;
import FunctionLayer.BlockLayer;
import FunctionLayer.Order;
import FunctionLayer.OrderException;
import FunctionLayer.OrderFacade;
import FunctionLayer.User;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jamal_ahmed
 */
public class MakeOrder extends Command{

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws OrderException, ClassNotFoundException {
       
        int length = (Integer)request.getSession().getAttribute("length");
        int width = (Integer)request.getSession().getAttribute("width");
        int layers = (Integer)request.getSession().getAttribute("layers");
        User user = (User)request.getSession().getAttribute("user");
        Order _order = OrderFacade.createOrder(length, width, layers, user);
       
        List<Order> userOrders = OrderFacade.getOrders(user);
        
        HttpSession session = request.getSession();
       
        session.setAttribute("order", _order);
        session.setAttribute("userOrders", userOrders);
        
        return "invoice";
    }
    
}
