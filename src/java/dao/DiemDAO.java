/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import model.MonHoc;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.KetQua;
import model.MonHocDauDiem;
/**
 *
 * @author NgocThanh
 */
public class DiemDAO extends DAO{

    public DiemDAO() {
        super();
    }
    
    public ArrayList<KetQua> getdsDiemMotMon(){
        ArrayList<KetQua> ds = new ArrayList<>();
        String sql = "SELECT TOP 3 tblketqua.diem, tblmonhocdaudiem.title\n" +
                     "FROM  tblketqua, tblmonhocdaudiem\n" +
                     "WHERE tblketqua.idMonHocDauDiem = tblmonhocdaudiem.idMonHocDauDiem";
        
        
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                KetQua kq = new KetQua();
                MonHocDauDiem mhdd = new MonHocDauDiem();
                kq.setDiem(rs.getFloat("diem"));
                mhdd.setTitle(rs.getFloat("title"));
                kq.setDiemtp(mhdd);
                ds.add(kq);
                
            }
        } catch (Exception e) {
        }
        
        return ds;
    }
    
}
