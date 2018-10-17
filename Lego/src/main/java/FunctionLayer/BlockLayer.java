/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

import java.util.ArrayList;
import java.util.List;



/**
 *
 * @author jamal_ahmed
 */
public class BlockLayer {
    
     List<BlockType> sides = new ArrayList<>();

    public BlockLayer(){
        
    }

    public void setSide(BlockType side) {
        sides.add(side);
    }

    public List<BlockType> getSides() {
        return sides;
    }
    

}
