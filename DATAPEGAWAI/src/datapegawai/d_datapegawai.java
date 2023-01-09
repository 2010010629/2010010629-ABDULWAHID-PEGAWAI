/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datapegawai;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class d_datapegawai {
    Connection conn = null;
ResultSet rs = null;
PreparedStatement pst = null;

private String sql;
public String NIP;
public String NAMA;
public String AGAMA;
public String JENIS_KELAMIN;
public String JABATAN;
public String ALAMAT;
public String STATUS;


public void simpan()throws SQLException{
conn = koneksi.getKoneksi();
sql = "INSERT INTO tbpegawai(NIP,NAMA,AGAMA,JENIS_KELAMIN,JABATAN,ALAMAT,STATUS)VALUES(?,?,?,?,?,?,?)";
pst = conn.prepareStatement(sql);
pst.setString(1,NIP);
pst.setString(2,NAMA);
pst.setString(3,AGAMA);
pst.setString(4,JENIS_KELAMIN);
pst.setString(5,JABATAN);
pst.setString(6,ALAMAT);
pst.setString(7,STATUS);
pst.execute();
pst.close();
    
}

public void rubah()throws SQLException{
conn = koneksi.getKoneksi();
String sql = "UPDATE tbpegawai set NAMA=?, AGAMA=?,JENIS_KELAMIN=?, JABATAN=?, ALAMAT=?, STATUS=? where NIP=?";
pst = conn.prepareStatement(sql);
pst.setString(1,NAMA);
pst.setString(2,AGAMA);
pst.setString(3,JENIS_KELAMIN);
pst.setString(4,JABATAN);
pst.setString(5,ALAMAT);
pst.setString(6,STATUS);
pst.setString(7,NIP);
pst.execute();
pst.close();
    
}


public void hapus()throws SQLException{
conn=koneksi.getKoneksi();
String sql = "DELETE from tbpegawai where NIP=?";
try{
pst=conn.prepareStatement(sql);
pst.setString(1, NIP);
pst.execute();
}
catch (Exception e){
JOptionPane.showMessageDialog(null, e);
  }
}

public ResultSet UpdateJTable()throws SQLException{
conn = koneksi.getKoneksi();
sql = "select NIP,NAMA,AGAMA,JENIS_KELAMIN,JABATAN,ALAMAT,STATUS from tbpegawai";
pst = conn.prepareStatement(sql);
rs = pst.executeQuery();
return rs;
}

    public static class java {

        public java() {
        }

        public void setVisible(boolean b) {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }
    }



}
