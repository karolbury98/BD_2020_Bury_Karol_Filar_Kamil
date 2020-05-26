/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package biblioteka;

/**
 *
 * @author Karol
 */
public class KsiazkaID {
    public static final KsiazkaID INSTANCE = new KsiazkaID();
    public int IDKsiazkii;

    public KsiazkaID(int IDKsiazkii) {
        this.IDKsiazkii = IDKsiazkii;
    }

    public int getIDKsiazkii() {
        return IDKsiazkii;
    }

    public void setIDKsiazkii(int IDKsiazkii) {
        this.IDKsiazkii = IDKsiazkii;
    }

  
     public static KsiazkaID getInstance(){
        return INSTANCE;
    }
    
    public KsiazkaID(){
        
    }
    
    
}
