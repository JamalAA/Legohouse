/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DBAccess;


import FunctionLayer.BlockFacade;
import FunctionLayer.LoginException;
import FunctionLayer.BlockLayer;
import FunctionLayer.BlockType;
import FunctionLayer.LegoBlocks;
import FunctionLayer.Order;
import FunctionLayer.OrderException;
import FunctionLayer.OrderFacade;

import FunctionLayer.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Jamal
 */
public class Connector {
     private static final String URL = "jdbc:mysql://207.154.204.127:3306/lego";
    private static final String USERNAME = "jamal";
    private static final String PASSWORD = "abc123123";

    private static Connection singleton;

    public static void setConnection( Connection con ) {
        singleton = con;
    }

    public static Connection connection() throws ClassNotFoundException, SQLException {
        if ( singleton == null ) {
            Class.forName( "com.mysql.cj.jdbc.Driver" );
            singleton = DriverManager.getConnection( URL, USERNAME, PASSWORD );
        }
        return singleton;
    }
    
     public static void main(String[] args) throws SQLException, LoginException, OrderException, ClassNotFoundException {
        //Test connection
       //  SizeFacade.createSize(3, 12, 8, 7);
         //Size size = new Size(2, length, width, heigth);
//         for (int i = 0; i < LegoBlocks.getBlocks(13, 9, 4).size(); i++) {
//             System.out.println(LegoBlocks.getBlocks(13, 9, 4).get(i).getSides().get(1).getBricks4x4());
//          
//         }     
     User user = new User("sds@gm.dk", "jj","bb" ,"123" ,"customer" );
    user.setId(4);
    Order order = new Order(5,5,5);
        // OrderFacade.createOrder(10, 9, 5, user);
        //OrderMapper.createOrder(order, user);
        // BlockType a = LegoBlocks.createSide(24, 10, false, true, 2);
        // System.out.println(a.getBricks4x4()+" "+a.getBricks2x2()+" "+a.getBricks1x2());
//      BlockLayer blocks =  LegoBlocks.calculateLayer(24, 10, 4);
//         System.out.println(blocks.getSides().get(2).getBricks4x4());d
         System.out.println(OrderFacade.getAllOrders()); 
    }
}
