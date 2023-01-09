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


public class g_datapegawai {
    
    Connection conn = null;
ResultSet rs = null;
PreparedStatement pst = null;

private String sql;
public String NIP;
public String NAMA;
public String JABATAN;
public String KEHADIRAN;
public String TUNJANGAN;
public String GAJI_POKOK;
public String GAJI;

    
    


public void simpan()throws SQLException{
conn = koneksi.getKoneksi();
sql = "INSERT INTO tbgaji(NIP,NAMA,JABATAN,KEHADIRAN,TUNJANGAN,GAJI_POKOK,GAJI)VALUES(?,?,?,?,?,?,?)";
pst = conn.prepareStatement(sql);
pst.setString(1,NIP);
pst.setString(2,NAMA);
pst.setString(3,JABATAN);
pst.setString(4,KEHADIRAN);
pst.setString(5,TUNJANGAN);
pst.setString(6,GAJI_POKOK);
pst.setString(7,GAJI);
pst.execute();
pst.close();
    
}

    public ResultSet UpdateJTable() throws SQLException {
        conn = koneksi.getKoneksi();
sql = "select NIP,NAMA,JABATAN,KEHADIRAN,TUNJANGAN,GAJI_POKOK,GAJI from tbgaji";
pst = conn.prepareStatement(sql);
rs = pst.executeQuery();
return rs; //To change body of generated methods, choose Tools | Templates.
    }

}
