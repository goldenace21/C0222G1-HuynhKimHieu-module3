package repository.user;

import model.Employee;
import model.User;
import repository.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserRepositoryImpl implements IUserRepository {

    private static final String ADD_NEW = "insert into username value" +
            "(?,?);";

    @Override
    public void addNew(User user) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(ADD_NEW);
            ps.setString(1,user.getUserName());
            ps.setString(2,user.getPassword());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
