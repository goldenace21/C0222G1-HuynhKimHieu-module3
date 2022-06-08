package repository;

import models.HocSinh;
import models.Sach;
import models.TheMuonSach;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class HocSinhRepository {
    static String SELECT_ALL = "select * from hocSinh;";
    public List<HocSinh> selectAll() {
        List<HocSinh> hocSinhList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                int maHocSinh = resultSet.getInt("maHocSinh");
                String tenHocSinh = resultSet.getString("tenHocSinh");
                String lop = resultSet.getString("lop");
                hocSinhList.add(new HocSinh(maHocSinh,tenHocSinh,lop));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return hocSinhList;
    }
}
