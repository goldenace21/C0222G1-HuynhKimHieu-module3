import repository.BaseRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class StudentRopo {
    private final String SELECT_ALL = "select * from student;";

    public List<Student> selectAll() {
        List<Student> studentList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                studentList.add(new Student(id,name));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return studentList;
    }
}
