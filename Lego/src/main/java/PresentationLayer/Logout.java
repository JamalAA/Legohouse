/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.LoginException;
import FunctionLayer.OrderException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jamal_ahmed
 */
public class Logout extends Command{

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginException, OrderException, ClassNotFoundException {
        
         HttpSession session = request.getSession();
         session.removeAttribute("user");
        return "index";
    }
    
}
