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
public class User_login {
    public static final User_login INSTANCE = new User_login();
    public int ID_Konta;
 
    
    
    public User_login(int ID_Konta) {

        this.ID_Konta = ID_Konta;
        
    }

    public int getID_Konta() {
        return ID_Konta;
    }

    public void setID_Konta(int ID_Konta) {
        this.ID_Konta = ID_Konta;
    }
    
    public static User_login getInstance(){
        return INSTANCE;
    }
    
    public User_login(){
        
    }
    
}
