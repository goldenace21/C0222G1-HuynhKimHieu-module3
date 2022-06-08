package models;

public class TheMuonSach {
    String maMuonSach;
    int maSach;
    String sach;
    int maHocSinh;
    String hocSinh;
    boolean trangThai;
    String ngayMuon;
    String ngayTra;


    public TheMuonSach(String maMuonSach, int maSach, int maHocSinh, boolean trangThai, String ngayMuon, String ngayTra) {
        this.maMuonSach = maMuonSach;
        this.maSach = maSach;
        this.maHocSinh = maHocSinh;
        this.trangThai = trangThai;
        this.ngayMuon = ngayMuon;
        this.ngayTra = ngayTra;
    }

    public TheMuonSach(String maMuonSach, String sach,String hocSinh, boolean trangThai, String ngayMuon, String ngayTra,int maSach) {
        this.maMuonSach = maMuonSach;
        this.sach = sach;
        this.hocSinh = hocSinh;
        this.trangThai = trangThai;
        this.ngayMuon = ngayMuon;
        this.ngayTra = ngayTra;
        this.maSach = maSach;
    }

    public TheMuonSach(int maSach, int maHocSinh, boolean trangThai, String ngayMuon, String ngayTra) {
        this.maSach = maSach;
        this.maHocSinh = maHocSinh;
        this.trangThai = trangThai;
        this.ngayMuon = ngayMuon;
        this.ngayTra = ngayTra;
    }


    public String getMaMuonSach() {
        return maMuonSach;
    }

    public void setMaMuonSach(String maMuonSach) {
        this.maMuonSach = maMuonSach;
    }

    public int getMaSach() {
        return maSach;
    }

    public void setMaSach(int maSach) {
        this.maSach = maSach;
    }

    public int getMaHocSinh() {
        return maHocSinh;
    }

    public void setMaHocSinh(int maHocSinh) {
        this.maHocSinh = maHocSinh;
    }

    public boolean isTrangThai() {
        return trangThai;
    }

    public void setTrangThai(boolean trangThai) {
        this.trangThai = trangThai;
    }

    public String getNgayMuon() {
        return ngayMuon;
    }

    public void setNgayMuon(String ngayMuon) {
        this.ngayMuon = ngayMuon;
    }

    public String getNgayTra() {
        return ngayTra;
    }

    public void setNgayTra(String ngayTra) {
        this.ngayTra = ngayTra;
    }

    public String getSach() {
        return sach;
    }

    public void setSach(String sach) {
        this.sach = sach;
    }

    public String getHocSinh() {
        return hocSinh;
    }

    public void setHocSinh(String hocSinh) {
        this.hocSinh = hocSinh;
    }
}
