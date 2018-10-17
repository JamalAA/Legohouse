/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

import DBAccess.UserMapper;


/**
 *
 * @author Jamal
 */
public class LoginFacade {

        public static User login( String email, String password ) throws LoginException {
        return UserMapper.login(email, password);
    } 

    public static User createUser( String email, String firstname, String lastname, String password ) throws FunctionLayer.LoginException {
        User user = new User(email, firstname, lastname, password, "customer");
        UserMapper.createUser( user );
        
        return user;
    }


}
