/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.BlockFacade;
import FunctionLayer.BlockLayer;
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
public class Invoice extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginException, OrderException, ClassNotFoundException {
      
        
       if ( !request.getParameter("id").isEmpty()) {
             int orderid = Integer.parseInt(request.getParameter("id"));
             Order s_order = OrderFacade.getOrderInforById(orderid);
        List<BlockLayer> legoblocks = BlockFacade.blockCreator(s_order.getLength(), s_order.getWidth(), s_order.getLayers());
        HttpSession session = request.getSession();
        session.setAttribute("blocks", legoblocks);
        
        }
       
        return "invoice";
    }

}
