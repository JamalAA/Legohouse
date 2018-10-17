/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

import java.util.List;

/**
 *
 * @author jamal_ahmed
 */
public class BlockFacade {
      public static List<BlockLayer> blockCreator(int length, int width, int layers) {
        List<BlockLayer> blocks = LegoBlocks.getBlocks(length, width, layers);
       
        return blocks;
    }
}
