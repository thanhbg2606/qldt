/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dao.DAO;
import model.SinhVien;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author NgocThanh
 */
public class SinhVienDAO extends DAO{

    public SinhVienDAO() {
        super();
    }
    
    public boolean checkLogin(SinhVien user) {
        boolean result = false;
        String sql = "SELECT  idSinhVien, ten, maSV FROM tblsinhvien WHERE username = ? AND password = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
             
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                user.setId(rs.getInt("idSinhVien"));
                user.setTen(rs.getString("ten"));
                user.setMaSV(rs.getString("maSV"));
                result = true;
                System.out.println(user.getMaSV()+" - "+user.getTen());
            }
            
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
    
}
