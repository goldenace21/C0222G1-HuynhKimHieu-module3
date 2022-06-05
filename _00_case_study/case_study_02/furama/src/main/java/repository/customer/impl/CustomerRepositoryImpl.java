package repository.customer.impl;

import model.Customer;
import repository.BaseRepository;
import repository.customer.interfacee.ICustomerRepository;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepositoryImpl implements ICustomerRepository {

    private static final String SEARCH = "select * from customer left join customer_type " +
            "on customer.customer_type_id = customer_type.customer_type_id " +
            "where customer_name like ? and customer_address like ?;";
    private static  final String ADD_NEW = "insert into customer" +
            "(customer_id,customer_name, customer_birthday, customer_gender, customer_id_card, customer_phone, customer_email, customer_address, customer_type_id)" +
            "values (?,?,?,?,?,?,?,?,?);";
    private static final String EDIT = "update customer set customer_name = ?, customer_birthday = ?, customer_gender = ?," +
            " customer_id_card = ?, customer_phone = ?, customer_email = ?, customer_address = ?," +
            " customer_type_id = ? where customer_id = ?;";
    private static final String ORDER_BY_NAME = "select * from customer " +
            "left join customer_type on customer.customer_type_id = customer_type.customer_type_id " +
            "order by customer_name;";
    private static final String DELETE = " delete from customer where  customer_id = ?;";

    @Override
    public List<Customer> search(String namee, String addresss) {
        if(namee==null) {
            namee="";
        }
        if(addresss==null) {
            addresss="";
        }
        List<Customer> customers = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();

        try {
            PreparedStatement ps = connection.prepareStatement(SEARCH);

            ps.setString(1,"%"+namee+"%");
            ps.setString(2,"%"+addresss+"%");

            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString("customer_id");
                String type= resultSet.getString("customer_type_name");
                String name= resultSet.getString("customer_name");
                String birthday= resultSet.getString("customer_birthday");
                String gender= resultSet.getString("customer_gender");
                String idCard= resultSet.getString("customer_id_card");
                String phoneNumber= resultSet.getString("customer_phone");
                String email= resultSet.getString("customer_email");
                String address= resultSet.getString("customer_address");
                customers.add(new Customer(id,type,name,birthday,gender,idCard,phoneNumber,email,address));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public void addNew(Customer customer) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(ADD_NEW);
            ps.setString(1,customer.getId());
            ps.setString(2,customer.getName());
            ps.setString(3,customer.getBirthday());
            ps.setString(4,customer.getGender());
            ps.setString(5,customer.getIdCard());
            ps.setString(6,customer.getPhoneNumber());
            ps.setString(7,customer.getEmail());
            ps.setString(8,customer.getAddress());
            ps.setInt(9,customer.getIdType());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit(Customer customer) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(EDIT);
            ps.setString(1, customer.getName());
            ps.setString(2,customer.getBirthday());
            ps.setString(3,customer.getGender());
            ps.setString(4,customer.getIdCard());
            ps.setString(5,customer.getPhoneNumber());
            ps.setString(6,customer.getEmail());
            ps.setString(7,customer.getAddress());
            ps.setInt(8, customer.getIdType());
            ps.setString(9,customer.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Customer> orderByName() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(ORDER_BY_NAME);
            ResultSet resultSet = ps.executeQuery();
            while (resultSet.next()) {
                String id = resultSet.getString("customer_id");
                String type= resultSet.getString("customer_type_name");
                String name= resultSet.getString("customer_name");
                String birthday= resultSet.getString("customer_birthday");
                String gender= resultSet.getString("customer_gender");
                String idCard= resultSet.getString("customer_id_card");
                String phoneNumber= resultSet.getString("customer_phone");
                String email= resultSet.getString("customer_email");
                String address= resultSet.getString("customer_address");
                customerList.add(new Customer(id,type,name,birthday,gender,idCard,phoneNumber,email,address));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
            return customerList;
    }

    @Override
    public void delete(String id) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement ps = connection.prepareStatement(DELETE);
            ps.setString(1,id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
