package PresentationLayer;


import FunctionLayer.LoginException;
import FunctionLayer.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Register extends Command {

    @Override
    String execute( HttpServletRequest request, HttpServletResponse response ) throws LoginException {
        String email = request.getParameter( "email" );
        String firstname = request.getParameter( "firstname" );
        String lastname = request.getParameter( "lastname" );
        String password1 = request.getParameter( "password1" );
        String password2 = request.getParameter( "password2" );
        if ( password1.equals( password2 ) ) {
            User user = FunctionLayer.LoginFacade.createUser(email,firstname,lastname, password2);
            HttpSession session = request.getSession();
            session.setAttribute( "user", user );
            session.setAttribute( "role", user.getRole() );
            return user.getRole() + "page";
        } else {
            throw new LoginException( "the two passwords did not match" );
        }
    }

}
