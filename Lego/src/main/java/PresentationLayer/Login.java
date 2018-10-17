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
 The purpose of Login is to...

 @author kasper
 */
public class Login extends Command {

    @Override
    String execute( HttpServletRequest request, HttpServletResponse response ) throws LoginException, OrderException, ClassNotFoundException {
        String email = request.getParameter( "email" );
        String password = request.getParameter( "password" );
        User user = FunctionLayer.LoginFacade.login(email, password);
        HttpSession session = request.getSession();
        session.setAttribute( "user", user );
        session.setAttribute( "role", user.getRole() );
        
            List<Order> userOrders = OrderFacade.getOrders(user);
            session.setAttribute("userOrders", userOrders);
        
          
        return user.getRole() + "page";
    }

}
