package repository;

import models.Sach;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SachRepository {
    static String SELECT_ALL = "select * from sach;";
    static String UPDATE_UP = "UPDATE sach SET soLuong = soLuong + 1 WHERE maSach = ?;";
    static String UPDATE_DOWN = "UPDATE sach SET soLuong = soLuong - 1 WHERE maSach = ?;";

    public List<Sach> selectAll() {
        List<Sach> sachList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                int maSach = resultSet.getInt("maSach");
                String tenSach = resultSet.getString("tenSach");
                String tacGia = resultSet.getString("tacGia");
                String moTa = resultSet.getString("moTa");
                int soLuong = resultSet.getInt("soLuong");
                sachList.add(new Sach(maSach, tenSach, tacGia, moTa, soLuong));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sachList;
    }

    public void updateUp(int id) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(UPDATE_UP);
            ps.setInt(1,id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateDown(int id) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(UPDATE_DOWN);
            ps.setInt(1,id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
