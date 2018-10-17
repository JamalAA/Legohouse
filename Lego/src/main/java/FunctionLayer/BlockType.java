/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FunctionLayer;

/**
 *
 * @author Jamal
 */
public class BlockType {
    private int bricks4x4;
    private int bricks2x2;
    private int bricks1x2;

    public BlockType(int bricks4x4, int bricks2x2, int bricks1x2) {
        this.bricks4x4 = bricks4x4;
        this.bricks2x2 = bricks2x2;
        this.bricks1x2 = bricks1x2;
    }

    public int getBricks4x4() {
        return bricks4x4;
    }

    public void setBricks4x4(int bricks4x4) {
        this.bricks4x4 = bricks4x4;
    }

    public int getBricks2x2() {
        return bricks2x2;
    }

    public void setBricks2x2(int bricks2x2) {
        this.bricks2x2 = bricks2x2;
    }

    public int getBricks1x2() {
        return bricks1x2;
    }

    public void setBricks1x2(int bricks1x2) {
        this.bricks1x2 = bricks1x2;
    }

   
   
    
}
