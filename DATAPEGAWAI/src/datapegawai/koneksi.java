
package datapegawai;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class koneksi {
    private static Connection koneksi;
public static Connection getKoneksi(){
//cek apakah koneksi null
if(koneksi==null){
try{
String url;
url="jdbc:mysql://localhost:3306/dbpegawai";
String username = "root";
String password = "";
DriverManager.registerDriver(new com.mysql.jdbc.Driver());
koneksi=DriverManager.getConnection(url,username,password);
}catch (SQLException t){
JOptionPane.showMessageDialog(null,"Error Membuat Koneksi");
}
}
return koneksi;
}
static Object getConnection(){
throw new UnsupportedOperationException("Not yet implemented");
}

    public Connection getCon() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

 
    
}
