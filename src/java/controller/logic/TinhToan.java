/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.logic;

/**
 *
 * @author NgocThanh
 */
public class TinhToan {
    private ITinhToan tinhtoan;
    private Object obj;

    public TinhToan() {
    }
    
    public TinhToan(ITinhToan tinhtoan) {
        this.tinhtoan = tinhtoan;
    }

    public TinhToan(ITinhToan tinhtoan, Object obj) {
        this.tinhtoan = tinhtoan;
        this.obj = obj;
    }
    
    public ITinhToan getTinhtoan() {
        return tinhtoan;
    }

    public void setTinhtoan(ITinhToan tinhtoan) {
        this.tinhtoan = tinhtoan;
    }  
    
    public float getKQ(){
        return tinhtoan.ThucHienTinhToan(obj);
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }
    
    
}
