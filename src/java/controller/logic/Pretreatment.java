/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.logic;

import java.util.ArrayList;
import model.DangKiHoc;
import model.KetQua;
import model.MonHocDauDiem;

/**
 *
 * @author NgocThanh
 */
public class Pretreatment {

    public static ArrayList<KetQua> changeListdsKQ(ArrayList<KetQua> ds) {
        System.out.println("-----------------");
        System.out.println("DS ket có có: " + ds.size());
        ArrayList<KetQua> result = new ArrayList<>();

        //Khởi tạo ds điểm với 5 đầu điểm
        KetQua kq = new KetQua();
        kq.setDiem(-1);
        MonHocDauDiem mhdd = new MonHocDauDiem();
        mhdd.setTitle(0);
        kq.setDiemtp(mhdd);

        for (int i = 0; i < 5; i++) {
            result.add(kq);
        }

        for (KetQua d : ds) {
            if (d.getDiemtp().getDauDiem().getTen().equals("Chuyên cần")) {
                result.set(0, d);
            }
            if (d.getDiemtp().getDauDiem().getTen().equals("Kiểm tra")) {
                result.set(1, d);
            }
            if (d.getDiemtp().getDauDiem().getTen().equals("Thực hành")) {
                result.set(2, d);
            }
            if (d.getDiemtp().getDauDiem().getTen().equals("Bài tập")) {
                result.set(3, d);
            }
            if (d.getDiemtp().getDauDiem().getTen().equals("Thi")) {
                result.set(4, d);
            }
        }
        for (KetQua ketQua : result) {
            System.out.print(ketQua.getDiemtp().getTitle());
            System.out.print("  ");

        }
        System.out.println("");
        for (KetQua ketQua : result) {
            System.out.print(ketQua.getDiem());
            System.out.print("  ");
        }
        System.out.println("");
        return result;

    }

    public static float DiemTBKyHoc(ArrayList<DangKiHoc> ds) {
        float res = 0.0f;
        for (DangKiHoc d : ds) {
            TinhToan tt = new TinhToan();
            tt.setObj(d.getDsketqua());
            tt.setTinhtoan(new TrungBinhMon());
            d.setDiemTBM(tt.getKQ());
            if (d.getDiemTBM() >= 9.0) {

                d.setDiemTBchu(4.0f);
            }
            if (d.getDiemTBM() >= 8.5 && d.getDiemTBM() < 9.0) {

                d.setDiemTBchu(3.7f);
            }
            if (d.getDiemTBM() >= 8.0 && d.getDiemTBM() < 8.5) {

                d.setDiemTBchu(3.5f);
            }
            if (d.getDiemTBM() >= 7.0 && d.getDiemTBM() < 8.0) {

                d.setDiemTBchu(3.0f);
            }
            if (d.getDiemTBM() >= 6.5 && d.getDiemTBM() < 7.0) {

                d.setDiemTBchu(2.5f);
            }
            if (d.getDiemTBM() >= 5.5 && d.getDiemTBM() < 6.5) {

                d.setDiemTBchu(2.0f);
            }
            if (d.getDiemTBM() >= 5.0 && d.getDiemTBM() < 5.5) {

                d.setDiemTBchu(1.5f);
            }
            if (d.getDiemTBM() >= 4.0 && d.getDiemTBM() < 5.0) {

                d.setDiemTBchu(1.0f);
            }
            if (d.getDiemTBM() < 4.0) {

                d.setDiemTBchu(0.0f);

            }

        }
        int count = 0;
        for (DangKiHoc d1 : ds) {
            res += d1.getMonHocKiHoc().getMh().getSoTC() * d1.getDiemTBchu();
            count += d1.getMonHocKiHoc().getMh().getSoTC();
        }

        res = res / count;

        System.out.println("res:" + res);
        System.out.println("....:" + (float) Math.round(res * 100) / 100);
        return (float) Math.round(res * 100) / 100;
    }

    public static String XepHangDiem(float diem) {
        String result = "";
        float diemhe4;
        String kq = "Đạt";
        if (diem >= 9.0) {
            result = "A+";
            diemhe4 = (float) 4.0;
        }
        if (diem >= 8.5 && diem < 9.0) {
            result = "A";
            diemhe4 = (float) 3.7;
        }
        if (diem >= 8.0 && diem < 8.5) {
            result = "B+";
            diemhe4 = (float) 3.5;
        }
        if (diem >= 7.0 && diem < 8.0) {
            result = "B";
            diemhe4 = (float) 3.0;
        }
        if (diem >= 6.5 && diem < 7.0) {
            result = "C+";
            diemhe4 = (float) 2.5;
        }
        if (diem >= 5.5 && diem < 6.5) {
            result = "C";
            diemhe4 = (float) 2.0;
        }
        if (diem >= 5.0 && diem < 5.5) {
            result = "D+";
            diemhe4 = (float) 1.5;
        }
        if (diem >= 4.0 && diem < 5.0) {
            result = "D";
            diemhe4 = (float) 1.0;
        }
        if (diem < 4.0) {
            result = "F";
            diemhe4 = (float) 0.0;

        }

        return result;
    }

}
