package repository;

import model.BenhNhan;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BenhNhanRepository {
    public static final String EDIT = "update benh_nhan set ten_benh_nhan = ? where ma_benh_nhan = ?;";

    public void edit(BenhNhan benhNhan) {
        Connection connection = BaseRepository.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement(EDIT);
            ps.setString(1,benhNhan.getTenBenhNhan());
            ps.setString(2,benhNhan.getMaBenhNhan());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
