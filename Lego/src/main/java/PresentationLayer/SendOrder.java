/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.LoginException;
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
public class SendOrder extends Command{

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginException, OrderException, ClassNotFoundException {
        
         if ( !request.getParameter("orderid").isEmpty()) {
             int orderid = Integer.parseInt(request.getParameter("orderid"));
             OrderFacade.sendOrder(orderid);
             User user = (User)request.getSession().getAttribute("user");
             HttpSession session = request.getSession();
             List<Order> userOrders = OrderFacade.getOrders(user);
            session.setAttribute("userOrders", userOrders);
        
        }
        return "employeepage";
    }
    
}
