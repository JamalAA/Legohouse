/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PresentationLayer;

import FunctionLayer.BlockFacade;
import FunctionLayer.BlockLayer;
import FunctionLayer.LoginException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jamal_ahmed
 */
public class Blocks extends Command {

    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginException {

        int length = Integer.parseInt((request.getParameter("length")));
        int width = Integer.parseInt((request.getParameter("width")));
        int layers = Integer.parseInt((request.getParameter("height")));

        List<BlockLayer> house = BlockFacade.blockCreator(length, width, layers);

        HttpSession session = request.getSession();
        session.setAttribute("length", length);
        session.setAttribute("width", width);
        session.setAttribute("layers", layers);

        session.setAttribute("house", house);

        return "order";

    }
}
