package models;

public class HocSinh {
    int maHocSinh;
    String tenHocSinh;
    String lop;

    public HocSinh(int maHocSinh, String tenHocSinh, String lop) {
        this.maHocSinh = maHocSinh;
        this.tenHocSinh = tenHocSinh;
        this.lop = lop;
    }

    public HocSinh(String tenHocSinh, String lop) {
        this.tenHocSinh = tenHocSinh;
        this.lop = lop;
    }

    public int getMaHocSinh() {
        return maHocSinh;
    }

    public void setMaHocSinh(int maHocSinh) {
        this.maHocSinh = maHocSinh;
    }

    public String getTenHocSinh() {
        return tenHocSinh;
    }

    public void setTenHocSinh(String tenHocSinh) {
        this.tenHocSinh = tenHocSinh;
    }

    public String getLop() {
        return lop;
    }

    public void setLop(String lop) {
        this.lop = lop;
    }
}
