/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author NgocThanh
 */
public class DangKiHoc implements Serializable{
    private int id;
    private SinhVien SinhVien;
    private MonHocKiHoc monHocKiHoc;
    private ArrayList<KetQua> dsketqua;
    private float diemTBM;
    private float diemTBchu;

    public DangKiHoc() {
    }

    public DangKiHoc(int id, SinhVien SinhVien, MonHocKiHoc monHocKiHoc, ArrayList<KetQua> dsketqua, float diemTBM, float diemTBchu) {
        this.id = id;
        this.SinhVien = SinhVien;
        this.monHocKiHoc = monHocKiHoc;
        this.dsketqua = dsketqua;
        this.diemTBM = diemTBM;
        this.diemTBchu = diemTBchu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public SinhVien getSinhVien() {
        return SinhVien;
    }

    public void setSinhVien(SinhVien SinhVien) {
        this.SinhVien = SinhVien;
    }

    public MonHocKiHoc getMonHocKiHoc() {
        return monHocKiHoc;
    }

    public void setMonHocKiHoc(MonHocKiHoc monHocKiHoc) {
        this.monHocKiHoc = monHocKiHoc;
    }

    public ArrayList<KetQua> getDsketqua() {
        return dsketqua;
    }

    public void setDsketqua(ArrayList<KetQua> dsketqua) {
        this.dsketqua = dsketqua;
    }

    public float getDiemTBM() {
        return diemTBM;
    }

    public void setDiemTBM(float diemTBM) {
        this.diemTBM = diemTBM;
    }

    public float getDiemTBchu() {
        return diemTBchu;
    }

    public void setDiemTBchu(float diemTBchu) {
        this.diemTBchu = diemTBchu;
    }
    
    public DangKiHoc getData(){
        return this;
    }
    
    
}
