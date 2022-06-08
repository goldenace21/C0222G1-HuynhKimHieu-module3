package repository.employee;

import model.Employee;
import model.User;
import repository.BaseRepository;
import service.user.IUserService;
import service.user.UserServiceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepositoryImpl implements IEmployeeRepository {
    private static final String ADD_NEW = "insert into employee" +
            "(employee_name, employee_birthday, employee_id_card, employee_salary, employee_phone, employee_email, employee_address, position_id, education_degree_id, division_id,username)" +
            "values (?,?,?,?,?,?,?,?,?,?,?)";
    private static final String SEARCH = "select * from employee where employee_name like ? and employee_address like ?;";

    IUserService userService = new UserServiceImpl();
    @Override
    public void addNew(Employee employee) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(ADD_NEW);
            ps.setString(1,employee.getName());
            ps.setString(2,employee.getBirthday());
            ps.setString(3,employee.getIdCard());
            ps.setDouble(4,employee.getSalary());
            ps.setString(5,employee.getPhoneNumber());
            ps.setString(6,employee.getEmail());
            ps.setString(7,employee.getAddress());
            ps.setInt(8,employee.getIdPosition());
            ps.setInt(9,employee.getIdEducation());
            ps.setInt(10,employee.getIdDivision());
            ps.setString(11,employee.getUserName());
            userService.addNew(new User(employee.getUserName(),"123456"));
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Employee> search(String namee, String addresss) {
        if(namee==null) {
            namee="";
        }
        if(addresss==null) {
            addresss="";
        }
        List<Employee> employeeList = new ArrayList<>();
        try {
            Connection connection = BaseRepository.getConnection();
            PreparedStatement ps = connection.prepareStatement(SEARCH);
            ps.setString(1,"%"+namee+"%");
            ps.setString(2,"%"+addresss+"%");
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                 int id = resultSet.getInt("employee_id");
                 String name = resultSet.getString("employee_name");
                 String birthday = resultSet.getString("employee_birthday");
                 String idCard = resultSet.getString("employee_id_card");
                 double salary = resultSet.getDouble("employee_salary");
                 String phoneNumber = resultSet.getString("employee_phone");
                 String email = resultSet.getString("employee_email");
                 String address = resultSet.getString("employee_address");
                 int idPosition = resultSet.getInt("position_id");
                 int idEducation = resultSet.getInt("education_degree_id");
                 int idDivision = resultSet.getInt("division_id");
                 String userName = resultSet.getString("username");
                 employeeList.add(new Employee(id,name,birthday,idCard,salary,phoneNumber,email,address,idPosition,idEducation,idDivision,userName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return employeeList;
    }
}
