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
public class KategoriaID {
    public static final KategoriaID INSTANCE = new KategoriaID();
    public int IDKategorii;
 
    
    
    public KategoriaID(int IDKategorii) {

        this.IDKategorii = IDKategorii;
        
    }

    public int getIDKategorii() {
        return IDKategorii;
    }

    public void setIDKategorii(int IDKategorii) {
        this.IDKategorii = IDKategorii;
    }
    

    
    public static KategoriaID getInstance(){
        return INSTANCE;
    }
    
    public KategoriaID(){
        
    }
    
}