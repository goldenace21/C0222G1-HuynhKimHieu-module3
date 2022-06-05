package service.customer.interfacee;

import model.Customer;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerService {
    List<Customer> search(String name,String address);
    void addNew(Customer customer);
    void edit(Customer customer);
    List<Customer> orderByName();
    void delete(String id);


}
