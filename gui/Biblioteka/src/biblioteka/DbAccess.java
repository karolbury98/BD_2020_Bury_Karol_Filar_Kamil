
package biblioteka;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class DbAccess {
    public static Connection ConnectDb(){
        try{
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:oci8:@localhost:1521:xe","student","student");
           // Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","student","student");
           // System.out.println("Połączono z bazą");
            return con;
        } catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
        }
        return null;
    }
}
