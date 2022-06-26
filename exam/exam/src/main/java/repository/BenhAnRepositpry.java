package repository;

import model.BenhAn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BenhAnRepositpry {
    private final static String SELECT_ALL = "select* from benh_an;";
    private final static String EDIT = "update benh_an set ten_benh_nhan = ?, ngay_nhap_vien = ?, ngay_ra_vien = ?, ly_do_nhap_vien = ? where ma_benh_an = ?;";
    private final static String DELETE = "delete from benh_an where ma_benh_an = ?;";


    public List<BenhAn> display() {
        List<BenhAn> benhAnList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                 String maBenhAn = resultSet.getString("ma_benh_an");
                 String maBenhNhan = resultSet.getString("ma_benh_nhan");
                 String tenBenhNhan = resultSet.getString("ten_benh_nhan");
                 String ngayNhapVien = resultSet.getString("ngay_nhap_vien");
                 String ngayRaVien = resultSet.getString("ngay_ra_vien");
                 String lyDoNhapVien = resultSet.getString("ly_do_nhap_vien");
                 benhAnList.add(new BenhAn(maBenhAn,maBenhNhan,tenBenhNhan,ngayNhapVien,ngayRaVien,lyDoNhapVien));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return benhAnList;
    }

    public void edit(BenhAn benhAn) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(EDIT);
            ps.setString(1,benhAn.getTenBenhNhan());
            ps.setString(2,benhAn.getNgayNhapVien());
            ps.setString(3,benhAn.getNgayRaVien());
            ps.setString(4,benhAn.getLyDoNhapVien());
            ps.setString(5,benhAn.getMaBenhAn());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void delete(String maBenhAn) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(DELETE);
            ps.setString(1,maBenhAn);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
