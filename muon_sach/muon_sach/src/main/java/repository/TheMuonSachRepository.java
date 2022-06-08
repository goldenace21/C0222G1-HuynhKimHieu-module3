package repository;

import models.TheMuonSach;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TheMuonSachRepository {

    private final static String SELECT_ALL = "select * from theMuonSach tms left join sach s on s.maSach = tms.maSach left join hocSinh hs on tms.maHocSinh = hs.maHocSinh;";
    private final static String CREATE = "insert into theMuonSach value" +
            "(?,?,?,?,?,?);";
    private final static String SEARCH = "";
    private final static String UPDATE = "UPDATE theMuonSach SET trangThai = false WHERE maMuonSach = ?;";

    public List<TheMuonSach> selectAll() {
        List<TheMuonSach> theMuonSachList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = ps.executeQuery();

            while (resultSet.next()) {
                String maMuonSach = resultSet.getString("maMuonSach");
                String sach = resultSet.getString("tenSach");
                String hocSinh = resultSet.getString("tenHocSinh");
                boolean trangThai = resultSet.getBoolean("trangThai");
                String ngayMuon =  resultSet.getString("ngayMuon");
                String ngaytra =  resultSet.getString("ngaytra");
                int maSach =  resultSet.getInt("maSach");
                theMuonSachList.add(new TheMuonSach(maMuonSach,sach,hocSinh,trangThai,ngayMuon,ngaytra,maSach));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return theMuonSachList;
    }
    public void create(TheMuonSach theMuonSach) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(CREATE);
            ps.setString(1,theMuonSach.getMaMuonSach());
            ps.setInt(2,theMuonSach.getMaSach() );
            ps.setInt(3,theMuonSach.getMaHocSinh() );
            ps.setBoolean(4,theMuonSach.isTrangThai() );
            ps.setString(5,theMuonSach.getNgayMuon());
            ps.setString(6,theMuonSach.getNgayTra());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void update(String maMuonSach) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(UPDATE);
            ps.setString(1,maMuonSach);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }


}
