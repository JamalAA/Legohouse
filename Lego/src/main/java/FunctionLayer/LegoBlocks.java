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
 * @author Jamal
 */
public class LegoBlocks {
    
    public static List<BlockLayer> getBlocks(int length, int width, int layers) {

        List<BlockLayer> blocks = new ArrayList<>();

        for (int i = 1; i <= layers; i++) {
            blocks.add(calculateLayer(length, width, i));
        }
        return blocks;
    }

    private static BlockLayer calculateLayer(int length, int width, int layerNr) {
        BlockLayer layer = new BlockLayer();
        boolean door;
        boolean window;
        
        if (layerNr == 1 || layerNr == 2 || layerNr == 3) {
            door = true;
        } else {
            door = false;
        }
        if (layerNr == 2 || layerNr == 3) {
            window = true;
        } else {
            window = false;
        }

        // Frontside == 1, Backside == 2, Sides == 0
        BlockType frontSide = createSide(length, layerNr, door, window, 1);
        BlockType Backside = createSide(length, layerNr, door, window, 2);
        BlockType side1 = createSide(width, layerNr, door, window, 0);
        BlockType side2 = createSide(width, layerNr, door, window, 0);
        
        layer.setSide(frontSide); // side 2
        layer.setSide(Backside); // side 4
        layer.setSide(side1); // side 1
        layer.setSide(side2); // side 3
        
        return layer;
    }
    
     private static BlockType createSide(int size, int layerNr, boolean door, boolean window, int type) {

        // Checks to that every other layer is in bonding.
        if (layerNr % 2 > 0 && type != 0) {
            size += -4;
        } else if (layerNr % 2 == 0 && type == 0) {
            size += -4;
        }

        // removes space for door
        if (door && type == 1) {
            size += -2;
        }

        // removes space for window
        if (window && type == 2) {
            size += -2;
        }

        int bricks4x4 = size / 4;
        int bricks2x2 = (size % 4) / 2;
        int bricks1x2 = (size % 4) % 2;

        
        return new BlockType(bricks4x4, bricks2x2, bricks1x2);
    }
    
}
