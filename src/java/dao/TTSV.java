/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.DangKiHoc;
import model.SinhVien;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashSet;
import java.util.Set;
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
        String sql = "SELECT * FROM viewkq WHERE idDangKiHoc = ?";
        
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
            e.printStackTrace();
        }
            return dskq;
    } 
    
    public ArrayList<Integer> getKiHoc(SinhVien sv){
        ArrayList<Integer> listKH = new ArrayList<>();
        Set<Integer> setA = new HashSet<Integer>();
         String sql = "SELECT idKiHoc FROM viewDangKiHoc WHERE idSinhVien = ? ";
         try {
             PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, sv.getId());
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int i = rs.getInt("idKiHoc");
                setA.add(i);
            }
            
            listKH.addAll(setA);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
         return listKH;
                 
    }
    
    public ArrayList<DangKiHoc> getListDangKiHoc(SinhVien sinhVien){
        ArrayList<DangKiHoc> listdkh = new ArrayList<>();
        String sql = "SELECT * FROM viewDangKiHoc WHERE idSinhVien = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, sinhVien.getId());
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
                mh.setIsTinhDiem(rs.getInt("isTinhDiem"));
            
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
    
    
    public ArrayList<DangKiHoc> getListDangKiHocTheoKy(SinhVien sinhVien, int id){
        System.out.println("goi ham ");
        ArrayList<DangKiHoc> listdkh = new ArrayList<>();
        String sql = "SELECT * FROM viewDangKiHoc WHERE idSinhVien = ? AND idKiHoc = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, sinhVien.getId());
            ps.setInt(2, id);
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
                mh.setIsTinhDiem(rs.getInt("isTinhDiem"));
            
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
