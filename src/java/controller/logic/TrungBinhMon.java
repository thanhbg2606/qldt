/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.logic;

import java.util.ArrayList;
import model.KetQua;
import model.MonHoc;

/**
 *
 * @author NgocThanh
 */
public class TrungBinhMon implements ITinhToan{

    @Override
    public float ThucHienTinhToan(Object dskqcuamotmon) {
        float diemTB = 0;
        ArrayList<KetQua> dskq = (ArrayList<KetQua>) dskqcuamotmon;
        
        float sum = 0;
        for(int i=0; i<dskq.size()-1; i++){
            sum += dskq.get(i).getDiem() * dskq.get(i).getDiemtp().getTitle();
        }
        
        sum = sum / dskq.size()-1;
        diemTB = sum;
        return diemTB;
    }
    
}
