/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.dao;

import java.util.ArrayList;
import model.DangKiHoc;
import model.SinhVien;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.DauDiem;
import model.HocKi;
import model.KetQua;
import model.KiHoc;
import model.MonHoc;
import model.MonHocDauDiem;
import model.MonHocKiHoc;
import model.NamHoc;

/**
 *
 * @author NgocThanh
 */
public class TTSV extends DAO{

    public TTSV() {
        super();
    }
    
    public ArrayList<DangKiHoc> getListDangKiHoc(SinhVien sinhVien){
        String sql = "SELECT * FROM testview WHERE idSinhVien = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, sinhVien.getId());
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                SinhVien sv = new SinhVien();
                sv.setId(rs.getInt("idSV"));
                sv.setTen(rs.getString("tenSV"));
                sv.setMaSV(rs.getString("msv"));
             
                NamHoc nh = new NamHoc();
                nh.setId(rs.getInt("idNamHoc"));
                nh.setTem(rs.getString("namhoc"));
                
                MonHoc mh = new MonHoc();
                mh.setId(rs.getInt("idMonHoc"));
                mh.setMaTC(rs.getString("maTC"));
                
                DauDiem dd = new DauDiem();
                HocKi hk = new HocKi();
                KiHoc kh = new KiHoc();
                MonHocKiHoc mhkh = new MonHocKiHoc();
                KetQua kq = new KetQua();
                MonHocDauDiem mhdd = new MonHocDauDiem();
                DangKiHoc dkh = new DangKiHoc();
            }
            
            
            
            
        } catch (Exception e) {
        }
        return null;
        
    } 
    
}
