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
    public int ID_Klienta;
    public int ID_Roli;
 
    
    
    public User_login(int ID_Konta, int ID_Klienta, int ID_Roli) {

        this.ID_Konta = ID_Konta;
        this.ID_Klienta = ID_Klienta;
        this.ID_Roli = ID_Roli;
        
        
    }

    public int getID_Roli() {
        return ID_Roli;
    }

    public void setID_Roli(int ID_Roli) {
        this.ID_Roli = ID_Roli;
    }
    
    

    public int getID_Klienta() {
        return ID_Klienta;
    }

    public void setID_Klienta(int ID_Klienta) {
        this.ID_Klienta = ID_Klienta;
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
