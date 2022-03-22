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
    
    private  ArrayList<KetQua> getlistKQ(DangKiHoc dkh){
        ArrayList<KetQua> dskq = new ArrayList<>();
        String sql = "SELECT * FROM testkq WHERE idDangKiHoc = ?";
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, dkh.getId());
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                DauDiem dd = new DauDiem();
                dd.setId(rs.getInt("idDauDiem"));
                dd.setTen(rs.getString("tendaudiem"));
                
                MonHocDauDiem mhdd = new MonHocDauDiem();
                mhdd.setId(rs.getInt("idMonHocDauDiem"));
                mhdd.setTitle(rs.getFloat("title"));
                mhdd.setDauDiem(dd);
                
                KetQua kq = new KetQua();
                kq.setId(rs.getInt("idKetQua"));
                kq.setDiem(rs.getFloat("diem"));
                kq.setDiemtp(mhdd);
                
                dskq.add(kq);
            }
        }catch(Exception e){
            
        }
            return dskq;
    } 
    
    
    public ArrayList<DangKiHoc> getListDangKiHoc(){
        System.out.println("goi ham ");
        ArrayList<DangKiHoc> listdkh = new ArrayList<>();
        String sql = "SELECT * FROM viewDangKiHoc WHERE idSinhVien = 1";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
//            ps.setInt(1, sinhVien.getId());
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                SinhVien sv = new SinhVien();
                sv.setId(rs.getInt("idSinhVien"));
                sv.setTen(rs.getString("fullname"));
                sv.setMaSV(rs.getString("maSV"));
             
                NamHoc nh = new NamHoc();
                nh.setId(rs.getInt("idNamHoc"));
                nh.setTem(rs.getString("namhoc"));
                
                HocKi hk = new HocKi();
                hk.setId(rs.getInt("idHocKi"));
                hk.setTen(rs.getString("tenhocky"));
                
                KiHoc kh = new KiHoc();
                kh.setId(rs.getInt("idKiHoc"));
                kh.setHocki(hk);
                kh.setNamhoc(nh);
                
                MonHoc mh = new MonHoc();
                mh.setId(rs.getInt("idMonHoc"));
                mh.setMaTC(rs.getString("maMH"));
                mh.setSoTC(rs.getInt("soTC"));
                mh.setTen(rs.getString("monhoc"));
            
                MonHocKiHoc mhkh = new MonHocKiHoc();
                mhkh.setId(rs.getInt("idMonHocKiHoc"));
                mhkh.setKiHoc(kh);
                mhkh.setMh(mh);
       
                DangKiHoc dkh = new DangKiHoc();
                dkh.setId(rs.getInt("idDangKiHoc"));
                dkh.setDsketqua(this.getlistKQ(dkh));
                dkh.setMonHocKiHoc(mhkh);
                dkh.setSinhVien(sv);
                
                listdkh.add(dkh);
                
                
                
            } 
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listdkh;
        
    } 
    
}
